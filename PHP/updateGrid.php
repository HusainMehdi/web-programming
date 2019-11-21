<?php
require('db.php');
$id = mysqli_real_escape_string($conn, $_POST['id']);
$col = mysqli_real_escape_string($conn, $_POST['col']);
$row = mysqli_real_escape_string($conn, $_POST['row']);
$update = "UPDATE `grid` SET `owner`=$id WHERE `col` =$col AND `row`=$row;";
// $updateCellsOwned = "UPDATE `playersingame` SET `cellscontrolled` = total FROM (SELECT COUNT(*) AS total FROM `grid` JOIN `playersingame` ON `grid`.`owner`=`playersingame`.`id` GROUP BY `id`);";

if (mysqli_query($conn, $update)) {
    // if (mysqli_query($conn, $updateCellsOwned)) {
        echo $col . ':' . $row;
    // } else {
        // echo 'ERROR: ' . mysqli_error($conn);
    // }
} else {
    echo 'ERROR: ' . mysqli_error($conn);
}
