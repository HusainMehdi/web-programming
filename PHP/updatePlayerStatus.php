<?php
require('db.php');
$name = mysqli_real_escape_string($conn, $_POST['username']);
$x = mysqli_real_escape_string($conn, $_POST['x']);
$y = mysqli_real_escape_string($conn, $_POST['y']);
$update = "UPDATE `playersingame` SET `x` =$x, `y`=$y WHERE `name` = '$name';";
$select = "SELECT * FROM `playersingame` WHERE `name` != '$name';";

if (mysqli_query($conn, $update)) {
    // echo $name." at x".$x."y".$y;
}
if (mysqli_query($conn, $select)) {
    $result = $conn->query($select);
    $playerdata = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($playerdata);
} else {
    echo 'ERROR: ' . mysqli_error($conn);
}
