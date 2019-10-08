<?php

// Connect to a database
$conn = mysqli_connect('localhost', 'root', '123456', 'grid');

echo 'Processing.....';

echo $_POST['number'];

//Check for POST variable
 if (isset($_POST['number'])) {
    // $hilighted = mysqli_real_escape_string($conn, $_POST['hilighted']);
     $number = mysqli_real_escape_string($conn, $_POST['number']);
     $hilighted = mysqli_real_escape_string($conn, $_POST['hilighted']);




    $query = "UPDATE `grid numbers` SET `hilighted` = $hilighted WHERE `number` = $number;";

    if (mysqli_query($conn, $query)) {
        echo 'update success...';
    } else {
        echo 'ERROR: ' . mysqli_error($conn);
    }
}

//Check for Get variable
if (isset($_GET['hilighted'])) {
    echo 'GET: update successful' . $_GET['hilighted'];
}


