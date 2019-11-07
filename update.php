<?php

// Connect to a database
require('db.php');

echo 'Processing.....';

//Check for POST variable
if (isset($_POST['hilighted'])) {
    // $hilighted = mysqli_real_escape_string($conn, $_POST['hilighted']);
    $col = mysqli_real_escape_string($conn, $_POST['col']);
    $row = mysqli_real_escape_string($conn, $_POST['row']);
    $owner = mysqli_real_escape_string($conn, $_POST['owner']);
    $colour = mysqli_real_escape_string($conn, $_POST['colour']);
    $state = mysqli_real_escape_string($conn, $_POST['state']);
    $hilighted = mysqli_real_escape_string($conn, $_POST['hilighted']);




    $query = "UPDATE `gridcells` SET `hilighted` = $hilighted, `owner`= '$owner', `colour`= '$colour', `state` = '$state' WHERE `col` = $col AND `row` =$row;";

    //send back the updated cell
    if (mysqli_query($conn, $query)) {
        $updatedCell = array("col" => $col, "row" => $row);
        echo json_encode($updatedCell);;
    } else {
        echo 'ERROR: ' . mysqli_error($conn);
    }
}

//Check for Get variable
if (isset($_GET['hilighted'])) {
    echo 'GET: update successful' . $_GET['hilighted'];
}
