<?php
//Global database connection file
$con = mysqli_connect('localhost', 'testerhw', 'HeriotWattUni', 'grid');

if (mysqli_connect_errno()){
  echo "Failed to connect to Database: " . mysqli_connect_error();
  }

?>
