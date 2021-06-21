<?php

include '../inc/conexion.php';

//INFO DEL LIBRO
$id = $_POST["id"];
$pag = $_POST["paginas"];

//INSERTAMOS EN BBDD
$sqLeyendo = "INSERT INTO leyendo(id_book, total, act_pag, inicio) VALUES ('$id', '$pag', 1, NOW())";
$consultaLeyendo = mysqli_query($con, $sqLeyendo) or die ("Error al insertar un libro en Leyendo");
header("location:../detalle/detalleLibro.php?id=$id");