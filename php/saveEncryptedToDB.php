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
$encryptedFileText = json_encode($_POST['encryptedFileText']);
$sql = "INSERT INTO encryptedFiles (encryptedText) VALUES ('".$encryptedFileText."')";
if ($conn->query($sql) === TRUE) {
  echo "text".$data;
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

?>
