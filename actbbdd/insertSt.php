<?php
include '../inc/conexion.php';

$nombre = $_POST["st"];
$ubicacion = $_POST["ub"];

$sql_autor = "SELECT * FROM estanteria WHERE nombre = '$nombre' AND ubicacion = '$ubicacion'";
$consulta_autor = mysqli_query($con, $sql_autor);
$nfilas = mysqli_num_rows($consulta_autor);
if($nfilas>0){
    header("location:../add.php?mng=1");
}else{
    $sql_autor="INSERT INTO estanteria(nombre, ubicacion) VALUES('$nombre', '$ubicacion')";
    $consulta_autor = mysqli_query($con, $sql_autor) or die("Error al insertar la estanteria en la BBDD");
    header("location:../add.php?mng=2");
}

