<?php
include '../inc/conexion.php';
$sql_colec = "SELECT * FROM coleccion ORDER BY nombre ASC";
$consulta_colec = mysqli_query($con, $sql_colec);
$nfilas_col = mysqli_num_rows($consulta_colec);
if($nfilas_col>0){
    for($i=0; $i<$nfilas_col; $i++){
        $fila_col = mysqli_fetch_array($consulta_colec);
        ?>

<option value="<?= $fila_col["id"]?>"><?= $fila_col["nombre"]?></option>   
        <?php
    }
}
