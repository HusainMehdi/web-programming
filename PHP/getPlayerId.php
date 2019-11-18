<?php
require('db.php');
$name = mysqli_real_escape_string($conn, $_POST['username']);
$select = "SELECT `id` FROM `playersingame` WHERE `name` = '$name';";

if(mysqli_query($conn, $select)){
    $result = $conn->query($select);
    $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($data);
}