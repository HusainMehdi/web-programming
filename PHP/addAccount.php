<?php

// Connect to a database
require('db.php');

//Check for POST variable
if (isset($_POST['username'])) {
    // $hilighted = mysqli_real_escape_string($conn, $_POST['hilighted']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    //make a query where you SELECT FROM ....WHERE username = &username.
    //if no error, then username exists and return message "name already taken, try again"

    $select = "SELECT `username`, `password` FROM `accounts` WHERE `username`='$username';";
    $insert = "INSERT INTO `accounts` (`username`,  `password`) VALUES ('$username', '$password');";
    $result = $conn->query($select);
    if ($result->num_rows > 0) {
        echo 'Name taken. Please try a different username';
    }
    //send back the updated cell
    else if (mysqli_query($conn, $insert)) {
        $updatedCell = array("username" => $username, "password" => $password);
        echo 'Account created. Please login to your new account';
    } 
    else {
        echo 'ERROR: ' . mysqli_error($conn);
    }
}
