<?php
include '../inc/conexion.php';

//INFO DEL LIBRO
$id = $_POST["id"];

$sqlDelete = "DELETE FROM leyendo WHERE id_book = '$id'";
$borrarQuery = mysqli_query($con, $sqlDelete);
header("location:../detalle/detalleLibro.php?id=$id");