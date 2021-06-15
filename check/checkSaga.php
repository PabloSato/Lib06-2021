<?php
include '../inc/conexion.php';
$sql_autor = "SELECT * FROM saga";
$consulta_autor = mysqli_query($con, $sql_autor);
$nfilas = mysqli_num_rows($consulta_autor);
if($nfilas>0){
    for($i=0; $i<$nfilas; $i++){
        $fila = mysqli_fetch_array($consulta_autor);
        ?>

<option value="<?= $fila["id_saga"]?>"><?= $fila["nombre"]?></option>   
        <?php
    }
}
