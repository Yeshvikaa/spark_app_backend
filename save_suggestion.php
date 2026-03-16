<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

require_once 'config.php';
$conn = new mysqli($servername, $username, $password, $dbname);

$input = json_decode(file_get_contents("php://input"), true);
$referral_id = intval($input['referral_id'] ?? 0);
$suggestion = trim($input['doctor_suggestion'] ?? '');
$precautions = trim($input['precautions'] ?? ''); // <-- NEW FIELD

if ($referral_id === 0) {
    echo json_encode(["status" => "error", "message" => "Invalid ID"]);
    exit;
}

$stmt = $conn->prepare(
    "UPDATE referrals SET doctor_suggestion = ?, precautions = ? WHERE id = ?"
);
$stmt->bind_param("ssi", $suggestion, $precautions, $referral_id);

if ($stmt->execute()) {
    echo json_encode(["status" => "success", "message" => "Saved successfully"]);
} else {
    echo json_encode(["status" => "error", "message" => "Failed to save"]);
}

$conn->close();
?>