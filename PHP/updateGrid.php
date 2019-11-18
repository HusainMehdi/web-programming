<?php
require('db.php');
$id = mysqli_real_escape_string($conn, $_POST['id']);
$col = mysqli_real_escape_string($conn, $_POST['col']);
$row = mysqli_real_escape_string($conn, $_POST['row']);
$update = "UPDATE `grid` SET `owner`=$id WHERE `col` =$col AND `row`=$row;";

if (mysqli_query($conn, $update)) {

    echo $col . ':' . $row;
} else {
    echo 'ERROR: ' . mysqli_error($conn);
}
