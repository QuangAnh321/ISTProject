<?php
    session_start();

    $conn = mysqli_connect("localhost", "root", "", "istdatabase");

    if (!$conn) {
        die("Error connecting to database: " . mysqli_connect_error());

    }

    /* Added utf-8 support for Mysql in order to display Vietnamese contents */

    if (!$conn->set_charset("utf8")) {
        printf("Error loading character set utf8: %s\n", $conn->error);
    } else {
        $conn->character_set_name();
    }

    define ('ROOT_PATH', realpath(dirname(__FILE__)));
    define('BASE_URL', 'http://localhost/ISTProject/');

?>