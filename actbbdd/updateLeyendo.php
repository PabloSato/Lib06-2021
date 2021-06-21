<?php
include '../inc/conexion.php';

//INFO DEL LIBRO
$id = $_POST["id_book"];
$pag = $_POST["progress"];

//ACTUALIZAMOS LA INFO
$sqlUpdate = "UPDATE leyendo SET act_pag = $pag WHERE id_book = $id";
$consuUpdate = mysqli_query($con, $sqlUpdate) or die ("Error al actualizar la lectura");
header("location:../index.php#libros");
