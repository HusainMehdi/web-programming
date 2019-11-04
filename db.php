<?php
//Global database connection file
$conn = mysqli_connect('localhost', 'root', '123456', 'grid');

if (mysqli_connect_errno())
  {
  echo "Failed to connect to Database: " . mysqli_connect_error();
  }

?>