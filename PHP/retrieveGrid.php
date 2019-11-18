<?php
require('db.php');

$select = "SELECT * FROM `grid`;";

if (mysqli_query($conn, $select)) {
    $result = $conn->query($select);
    $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($data);
} else {
    echo 'ERROR: ' . mysqli_error($conn);
}
