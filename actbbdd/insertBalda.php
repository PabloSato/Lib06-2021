<?php
include '../inc/conexion.php';

$numero = $_POST["balda"];
$stante = $_POST["stBa"];
$ubic = $_POST["ubBa"];

$sql_autor = "SELECT * FROM balda WHERE estanteria = '$stante' AND ubicacion = '$ubic'";
$consulta_autor = mysqli_query($con, $sql_autor);
$nfilas = mysqli_num_rows($consulta_autor);
if($nfilas>0){
    header("location:../add.php?mng=1");
}else{
    $balda = 0;
    for($i = 0; $i < $numero; $i++){
        $balda += 1;
        $sql_autor="INSERT INTO balda(numero, estanteria, ubicacion) VALUES($balda,'$stante', '$ubic')";
        $consulta_autor = mysqli_query($con, $sql_autor) or die("Error al insertar la estanteria en la BBDD");    
        header("location:../add.php#ubicaciones?mng=2");
    }
}
