<?php
require('db.php');
$name = mysqli_real_escape_string($conn, $_POST['username']);
$x = mysqli_real_escape_string($conn, $_POST['x']);
$y = mysqli_real_escape_string($conn, $_POST['y']);

$cellsControlled = "SELECT COUNT(*) AS total FROM `grid` JOIN `playersingame` ON `grid`.`owner`=`playersingame`.`id` WHERE `playersingame`.`name` = '$name';";
if (mysqli_query($conn, $cellsControlled)) {
    $result = $conn->query($cellsControlled);
    $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
    $encoded = json_encode($data);
    $decoded = json_decode($encoded);
    $cellsControlled = $decoded[0]->total;
    $update = "UPDATE `playersingame` SET `x` =$x, `y`=$y, `cellscontrolled`=$cellsControlled WHERE `name` = '$name';";
    $select = "SELECT * FROM `playersingame`;";


    if (mysqli_query($conn, $update)) {
        if (mysqli_query($conn, $select)) {
            $result = $conn->query($select);
            $playerdata = mysqli_fetch_all($result, MYSQLI_ASSOC);
            echo json_encode($playerdata);
        }
    }
} else {
    echo 'ERROR: ' . mysqli_error($conn);
}
