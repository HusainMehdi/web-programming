<?php
require('db.php');
$username = mysqli_real_escape_string($conn, $_POST['username']);
$delete = "DELETE FROM `activeplayers` WHERE `username` = '$username';";

if(mysqli_query($conn, $delete)){
    echo $username." left the game";
}
else {
    echo 'ERROR: ' . mysqli_error($conn);
}