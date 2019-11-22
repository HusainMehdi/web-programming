<?php

// Connect to a database
require('db.php');
$username = mysqli_real_escape_string($conn, $_POST['username']);
//queries for the db
$setWin = "UPDATE `accounts` SET `wins`=`wins`+1 WHERE username = (SELECT `name` FROM `playersingame` WHERE `score` = (SELECT MAX(`score`) FROM `playersingame`));";
$setLosses = "UPDATE `accounts` JOIN `playersingame` ON `accounts`.`username`=`playersingame`.`name` SET `losses`=`losses`+1 WHERE username != (SELECT `name` FROM (SELECt * FROM `playersingame`) AS x WHERE `score` = (SELECT MAX(`score`) FROM (SELECt * FROM `playersingame`) AS y));";
$playerscore = "SELECT `wins`, `losses` FROM `accounts` WHERE `username` = '$username';";
$resetScores = "UPDATE `playersIngame` SET `score` = 0;";
$resetGrid = "UPDATE `grid` SET `owner` = -1;";

if (mysqli_query($conn, $setWin)) {
    if (mysqli_query($conn, $setLosses)) {
        $result = mysqli_query($conn, $playerscore);
        $data = mysqli_fetch_assoc($result);
        echo json_encode($data);
        mysqli_query($conn, $resetScores);
        mysqli_query($conn, $resetGrid);
    } else {
        echo 'ERROR: setLosses' . mysqli_error($conn);
    }
} else {
    echo 'ERROR: setWin' . mysqli_error($conn);
}
