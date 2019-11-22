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


    $select = "SELECT `username`, `wins`, `losses`  FROM `accounts` WHERE `username` = '$username';";
    $getDBPassword = "SELECT `password` FROM `accounts` WHERE `username` = '$username';";

    //Array returned by the db
    $resultArray = mysqli_query($conn, $getDBPassword);
    //convert array to php object
    $obj = mysqli_fetch_all($resultArray, MYSQLI_ASSOC);
    //retrieve the password from the php object
    if ($obj != []) {
        $dbPassword = $obj[0]["password"];

        if (password_verify($password, $dbPassword)) {
            if (mysqli_query($conn, $select)) {
                $result = mysqli_query($conn, $select);
                $account = mysqli_fetch_all($result, MYSQLI_ASSOC);
                // echo 'account found';
                echo json_encode($account);
            } else {
                // echo 'ERROR: ' . mysqli_error($conn);
                echo 0;
            }
        } else {
            // echo 'ERROR: ' . mysqli_error($conn);
            echo 0;
        }
    }
    else{
        echo 0;
    }
}
