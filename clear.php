<?php

// Connect to a database
$conn = mysqli_connect('mysql-server-1', 'cw78', '7xOYtRAJDd', 'cw78') or die ("failed to connect " . mysqli_connect_error());

echo 'Processing.....';

    $query = "UPDATE `gridcells` SET `hilighted` = FALSE";

    if (mysqli_query($conn, $query)) {
        echo 'db cleared...';
    } else {
        echo 'ERROR: ' . mysqli_error($conn);
    }


//Check for Get variable
if (isset($_GET['hilighted'])) {
    echo 'GET: db cleared' . $_GET['hilighted'];
}


