<?php
require('db.php');
$name = mysqli_real_escape_string($conn, $_POST['username']);
$x = mysqli_real_escape_string($conn, $_POST['x']);
$y = mysqli_real_escape_string($conn, $_POST['y']);

$cellsControlled = "SELECT COUNT(*) AS total FROM `grid` JOIN `playersingame` ON `grid`.`owner`=`playersingame`.`id` WHERE `playersingame`.`name` = '$name';";
if (mysqli_query($conn, $cellsControlled)) {
    //formets the return of cellsControlled into a parseable integer
    $result = $conn->query($cellsControlled);
    $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
    $encoded = json_encode($data);
    $decoded = json_decode($encoded);
    $cellsControlled = $decoded[0]->total;
    $update = "UPDATE `playersingame` SET `x` =$x, `y`=$y, `cellscontrolled`=$cellsControlled WHERE `name` = '$name';";
    // Returns all players in descending order of score
    $select = "SELECT * FROM `playersingame` ORDER BY `score` DESC;";


    if (mysqli_query($conn, $update)) {
        $setScore = "UPDATE `playersingame` SET `score`=`score`+1 WHERE `name` = (SELECT `name` FROM `playersingame` WHERE `cellscontrolled` = (SELECT MAX(`cellscontrolled`) FROM `playersingame`));";
        if (mysqli_query($conn, $setScore)) {
            $result = $conn->query($select);
            $playerdata = mysqli_fetch_all($result, MYSQLI_ASSOC);
            echo json_encode($playerdata);
        } else if(mysqli_error($conn)) {
            // echo 'ERROR: setScore ' . mysqli_error($conn);
            echo 0;
        }
    } else {
        echo 'ERROR: update ' . mysqli_error($conn);
    }
} else {
    echo 'ERROR: cellsControlled ' . mysqli_error($conn);
}
