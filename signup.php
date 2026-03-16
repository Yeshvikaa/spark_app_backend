<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json; charset=UTF-8");

require_once 'config.php';

$conn = new mysqli($servername, $username, $password, $dbname,3307);

// Check DB connection
if ($conn->connect_error) {
    die(json_encode(["status" => "error", "message" => "Database connection failed"]));
}

// Get input data (support both form-data and raw JSON)
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input = $_POST;
    
    // If $_POST is empty, try reading raw JSON input
    if (empty($input)) {
        $rawData = file_get_contents("php://input");
        $input = json_decode($rawData, true);
    }
    
    // Ensure we have input before proceeding
    if (!$input) {
        echo json_encode(["status" => "error", "message" => "No input data received"]);
        exit;
    }

    // Common fields
    $role     = $input['role'] ?? '';
    $name     = $input['name'] ?? '';
    $email    = $input['email'] ?? '';
    $password = $input['password'] ?? '';
    $phone    = $input['phone'] ?? '';

    // Role-specific fields
    $age             = $input['age'] ?? null;
    $qualification   = $input['qualification'] ?? null;
    $school          = $input['school'] ?? null;
    $yearInSchool    = $input['year_in_school'] ?? null;

    $fatherOcc       = $input['father_occ'] ?? null;
    $motherOcc       = $input['mother_occ'] ?? null;
    $fatherPhone     = $input['father_phone'] ?? null;
    $motherPhone     = $input['mother_phone'] ?? null;

    $studentName     = $input['student_name'] ?? null;
    $standard        = $input['standard'] ?? null;
    $registerNumber  = $input['register_number'] ?? null;

    // --- NEW: Security Questions ---
    $secDestination = $input['security_destination'] ?? '';
    $secFood        = $input['security_food'] ?? '';
    $secHobby       = $input['security_hobby'] ?? '';

    // Updated Query: Added the 3 security columns
    $stmt = $conn->prepare("INSERT INTO users 
        (role, name, email, password, phone, age, qualification, school, year_in_school, 
        father_occ, mother_occ, father_phone, mother_phone, student_name, standard, register_number,
        security_destination, security_food, security_hobby) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

    if (!$stmt) {
        echo json_encode(["status" => "error", "message" => "Prepare failed: " . $conn->error]);
        $conn->close();
        exit;
    }

    // Bind Params: "sssssssssssssssssss" (19 strings total)
    $stmt->bind_param(
        "sssssssssssssssssss",
        $role, $name, $email, $password, $phone, $age, $qualification, $school, $yearInSchool,
        $fatherOcc, $motherOcc, $fatherPhone, $motherPhone, $studentName, $standard, $registerNumber,
        $secDestination, $secFood, $secHobby
    );

    if ($stmt->execute()) {
        // Get the new User ID to send back (Important for Auto-Login)
        $new_user_id = $conn->insert_id;

        echo json_encode([
            "status"  => "success", 
            "message" => "$role Signed Up Successfully",
            "user_id" => (string)$new_user_id, // Cast to String for Android
            "role"    => $role
        ]);
    } else {
        echo json_encode(["status" => "error", "message" => "Signup failed: " . $stmt->error]);
    }

    $stmt->close();
    $conn->close();
} else {
    echo json_encode(["status" => "error", "message" => "Invalid Request"]);
}
?>