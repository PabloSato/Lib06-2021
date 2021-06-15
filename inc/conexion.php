<?php

$host = "localhost";
$user = "pablofs";
$pass = "1234";
$dbname = "Biblioteca";

$con = mysqli_connect($host, $user, $pass) or die ("Error de conexion");
mysqli_select_db($con, $dbname) or die ("Error al conectar a la BBDD");