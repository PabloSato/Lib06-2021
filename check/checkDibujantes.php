<?php
include '../inc/conexion.php';
$sql_dibu = "SELECT * FROM dibujante ORDER BY apellidos ASC";
$consulta_dibu = mysqli_query($con, $sql_dibu);
$nfilas = mysqli_num_rows($consulta_dibu);
if($nfilas>0){
    for($i=0; $i<$nfilas; $i++){
        $fila = mysqli_fetch_array($consulta_dibu);
        ?>

<option value="<?= $fila["id"]?>"><?= $fila["alias"]?></option>   
        <?php
    }
}
