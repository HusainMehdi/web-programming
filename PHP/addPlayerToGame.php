<?php
require('db.php');
$username = mysqli_real_escape_string($conn, $_POST['username']);
$x = mysqli_real_escape_string($conn, $_POST['x']);
$y = mysqli_real_escape_string($conn, $_POST['y']);
$insert = "INSERT INTO `activeplayers` (`username`, `x`, `y`) VALUES ('$username',$x, $y);";

if(mysqli_query($conn, $insert)){
    echo $username." entered the game";
}