<?php
require('db.php');
$name = mysqli_real_escape_string($conn, $_POST['username']);
$x = mysqli_real_escape_string($conn, $_POST['x']);
$y = mysqli_real_escape_string($conn, $_POST['y']);
$insert = "INSERT INTO `playersingame` (`name`, `x`, `y`) VALUES ('$name',$x, $y);";
if(mysqli_query($conn, $insert)){
    echo $name.' joined the game';
}
else {
    echo 'ERROR: ' . mysqli_error($conn);
}