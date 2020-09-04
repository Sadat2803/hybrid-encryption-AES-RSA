<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "aes_rsa_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  $usersList = [];
  while($row = $result->fetch_assoc()) {
    array_push($usersList, $row);
  }
  echo json_encode($usersList);
} else {
  echo "0 results";
}
$conn->close();
?>
