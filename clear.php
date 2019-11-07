<?php

// Connect to a database
require('db.php');

echo 'Processing.....';

$query = "UPDATE `gridcells` SET `hilighted` = FALSE, `owner` = '', `colour` = 'white', `state` = '' ;";

if (mysqli_query($conn, $query)) {
    echo 'db cleared...';
} else {
    echo 'ERROR: ' . mysqli_error($conn);
}


//Check for Get variable
if (isset($_GET['hilighted'])) {
    echo 'GET: db cleared' . $_GET['hilighted'];
}
