<?php
require('db.php');
$name = mysqli_real_escape_string($conn, $_POST['username']);
$delete = "DELETE FROM `playersingame` WHERE `name` = '$name';";

if(mysqli_query($conn, $delete)){
    echo $name." left the game";
}
else {
    echo 'ERROR: ' . mysqli_error($conn);
}