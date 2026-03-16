<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json; charset=UTF-8");

require_once 'config.php';

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(["status" => "error", "message" => "Database connection failed"]));
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input = $_POST;
    if (empty($input)) {
        $rawData = file_get_contents("php://input");
        $input = json_decode($rawData, true);
    }

    $email          = $input['email'] ?? '';
    $newPassword    = $input['new_password'] ?? '';
    
    // --- NEW: Receive Security Answers ---
    $secDestination = $input['security_destination'] ?? '';
    $secFood        = $input['security_food'] ?? '';
    $secHobby       = $input['security_hobby'] ?? '';

    if (empty($email) || empty($newPassword)) {
        echo json_encode(["status" => "error", "message" => "Email and New Password are required"]);
        exit;
    }

    // 1. Fetch the user's stored answers
    $stmt = $conn->prepare("SELECT id, security_destination, security_food, security_hobby FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows === 0) {
        echo json_encode(["status" => "error", "message" => "Email not found"]);
        $stmt->close();
        $conn->close();
        exit;
    }

    $user = $result->fetch_assoc();
    $stmt->close();

    // 2. Verify Answers (Case-insensitive comparison)
    // We use strtolower + trim to ignore capitalization and extra spaces
    $dbDest  = strtolower(trim($user['security_destination']));
    $dbFood  = strtolower(trim($user['security_food']));
    $dbHobby = strtolower(trim($user['security_hobby']));

    $inDest  = strtolower(trim($secDestination));
    $inFood  = strtolower(trim($secFood));
    $inHobby = strtolower(trim($secHobby));

    // Check if ALL 3 match
    if ($dbDest === $inDest && $dbFood === $inFood && $dbHobby === $inHobby) {
        
        // 3. Answers Match! Update the password
        $updateStmt = $conn->prepare("UPDATE users SET password = ? WHERE email = ?");
        $updateStmt->bind_param("ss", $newPassword, $email);
        
        if ($updateStmt->execute()) {
            echo json_encode(["status" => "success", "message" => "Password reset successfully"]);
        } else {
            echo json_encode(["status" => "error", "message" => "Failed to update password"]);
        }
        $updateStmt->close();

    } else {
        echo json_encode(["status" => "error", "message" => "Security answers do not match"]);
    }

    $conn->close();
} else {
    echo json_encode(["status" => "error", "message" => "Invalid Request"]);
}
?>