<?php
include '../inc/conexion.php';

$nombre = $_POST["ubicacion"];

$sql_autor = "SELECT * FROM ubicacion WHERE nombre = '$nombre'";
$consulta_autor = mysqli_query($con, $sql_autor);
$nfilas = mysqli_num_rows($consulta_autor);
if($nfilas>0){
    header("location:../add.php?mng=1");
}else{
    $sql_autor = "INSERT INTO ubicacion(nombre) VALUES('$nombre')";
    $consulta_autor = mysqli_query($con, $sql_autor) or die ("Error al insertar en la BBDD");
    header("location:../add.php?mng=2");
}