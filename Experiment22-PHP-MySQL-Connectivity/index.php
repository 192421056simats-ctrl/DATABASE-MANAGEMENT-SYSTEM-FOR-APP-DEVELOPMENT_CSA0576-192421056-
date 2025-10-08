<?php
// index.php - simple PHP + MySQL demo
$host = 'localhost';
$db   = 'dbms_lab';
$user = 'root';
$pass = ''; // change to your password

$conn = new mysqli($host,$user,$pass,$db);
if($conn->connect_error) {
  die('Connection failed: '.$conn->connect_error);
}

$result = $conn->query("SELECT student_id, name, email FROM student LIMIT 20");
?>
<!doctype html>
<html>
<head><meta charset="utf-8"><title>DBMS Lab - Students</title></head>
<body>
<h2>Students</h2>
<table border="1" cellpadding="6">
<tr><th>ID</th><th>Name</th><th>Email</th></tr>
<?php
if($result && $result->num_rows>0) {
  while($row = $result->fetch_assoc()){
    echo '<tr><td>'.htmlspecialchars($row['student_id']).'</td><td>'.htmlspecialchars($row['name']).'</td><td>'.htmlspecialchars($row['email']).'</td></tr>';
  }
} else {
  echo '<tr><td colspan="3">No data</td></tr>';
}
$conn->close();
?>
</table>
</body>
</html>
