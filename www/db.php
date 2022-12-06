 <?php
$host = "db";
$user = "root";
$pass = "test";
$dbname = "erp";

// Create connection
$conn = new mysqli($host, $user, $pass, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?> 