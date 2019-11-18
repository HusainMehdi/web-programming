<?php

// Connect to a database
require('db.php');

// echo 'Processing.....';

//Check for POST variable
if (isset($_POST['username'])) {
    // $hilighted = mysqli_real_escape_string($conn, $_POST['hilighted']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    //make a query where you SELECT FROM ....WHERE username = &username.
    //if no error, then username exists and return message "name already taken, try again"


    $select = "SELECT `username` FROM `accounts` WHERE `username` = '$username' AND `password` = '$password';";


    //send back the updated cell
    if (mysqli_query($conn, $select)) {
        $result = mysqli_query($conn, $select);
        $account = mysqli_fetch_all($result, MYSQLI_ASSOC);
        // echo 'account found';
        echo json_encode($account);
    } else {
        echo 'ERROR: ' . mysqli_error($conn);
    }
}
