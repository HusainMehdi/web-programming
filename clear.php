<?php

// Connect to a database
$conn = mysqli_connect('localhost', 'root', '123456', 'grid');

echo 'Processing.....';

    $query = "UPDATE `grid numbers` SET `hilighted` = FALSE";

    if (mysqli_query($conn, $query)) {
        echo 'db cleared...';
    } else {
        echo 'ERROR: ' . mysqli_error($conn);
    }


//Check for Get variable
if (isset($_GET['hilighted'])) {
    echo 'GET: db cleared' . $_GET['hilighted'];
}


