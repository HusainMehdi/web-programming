<?php
require('db.php');
$username = mysqli_real_escape_string($conn, $_POST['username']);
$x = mysqli_real_escape_string($conn, $_POST['x']);
$y = mysqli_real_escape_string($conn, $_POST['y']);
$update = "UPDATE `activeplayers` SET `x` =$x, `y`=$y WHERE `username` = '$username';";
$select = "SELECT * FROM `activeplayers`;";;

if (mysqli_query($conn, $update)) {
    // echo $username." at x".$x."y".$y;
}
if (mysqli_query($conn, $select)) {
    $result = $conn->query($select);
    $playerdata = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($playerdata);
} else {
    echo 'ERROR: ' . mysqli_error($conn);
}
