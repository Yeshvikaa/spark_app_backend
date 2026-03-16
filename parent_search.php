<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");
header("Access-Control-Allow-Methods: POST");

require_once 'config.php';

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    echo json_encode(["status" => "error", "message" => "Database connection failed"]);
    exit;
}

$input = json_decode(file_get_contents("php://input"), true);
$unique_id = $input['unique_id'] ?? '';

if (empty($unique_id)) {
    echo json_encode(["status" => "error", "message" => "Unique ID is required"]);
    exit;
}

// Fetch student referral details based on Unique ID
$stmt = $conn->prepare("SELECT * FROM referrals WHERE unique_id = ? LIMIT 1");
$stmt->bind_param("s", $unique_id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $data = $result->fetch_assoc();
    echo json_encode(["status" => "success", "data" => $data]);
} else {
    echo json_encode(["status" => "error", "message" => "Student ID not found"]);
}

$conn->close();
?>