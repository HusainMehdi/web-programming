<?php
require('db.php');
$name = mysqli_real_escape_string($conn, $_POST['username']);
$x = mysqli_real_escape_string($conn, $_POST['x']);
$y = mysqli_real_escape_string($conn, $_POST['y']);
$insert = "INSERT INTO `playersingame` (`name`, `x`, `y`) VALUES ('$name',$x, $y);";
$checkNumPlayers = "SELECT COUNT(*) AS total FROM `playersingame`;";
$resetGrid = "UPDATE `grid` SET `owner`=-1;";

if (mysqli_query($conn, $insert)) {
    //get array from sql query
    $sqlArray = mysqli_query($conn, $checkNumPlayers);
    //convert to php associative array
    $phpArray = mysqli_fetch_all($sqlArray, MYSQLI_ASSOC);
    //retrieve total players in game as integer
    $totalPlayers = $phpArray[0]["total"];
    echo "total players: ".$totalPlayers;
    if ($totalPlayers < 2)
        mysqli_query($conn, $resetGrid);
} else {
    echo 'ERROR: ' . mysqli_error($conn);
}
