<?php
include '../inc/conexion.php';
$sql_saga = "SELECT * FROM saga ORDER BY nombre ASC";
$consulta_saga = mysqli_query($con, $sql_saga);
$nfilas_saga = mysqli_num_rows($consulta_saga);
if($nfilas_saga>0){
    for($i=0; $i<$nfilas_saga; $i++){
        $fila = mysqli_fetch_array($consulta_saga);
        ?>
        <option value="<?= $fila["nombre"]?>">   
        <?php
    }
}
