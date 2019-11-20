<?php

// Connect to a database
require('db.php');

//Check for POST variable
if (isset($_POST['username'])) {
    //convert POST variables to sql
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    //queries for the db
    $select = "SELECT `username`, `password` FROM `accounts` WHERE `username`='$username';";
    $insert = "INSERT INTO `accounts` (`username`,  `password`) VALUES ('$username', '$password');";

    //result obtained by the select query
    $result = $conn->query($select);
    //if user exists, (ie query returns a non blank) break execution and send message to user that the name is already taken
    if ($result->num_rows > 0) {
        echo 'Name taken. Please try a different username';
    }
    //else add user to db and let them know they have a new account
    else if (mysqli_query($conn, $insert)) {
        echo 'Account created. Please login to your new account';
    }
    //send error for debugging if both of the above fail
    else {
        echo 'ERROR: ' . mysqli_error($conn);
    }
}
