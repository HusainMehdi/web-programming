<?php

//Create Connection
$conn = mysqli_connect('localhost', 'root', '123456', 'ajaxtest');

$query = 'SELECT * FROM users';

//Get Result
$result = mysqli_query($conn, $query);

//Fetch Data
$users = mysqli_fetch_all($result, MYSQLI_ASSOC);

//Takes the result returned from the database and formats it into JSON
echo json_encode($users);
