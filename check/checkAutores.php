<?php
include '../inc/conexion.php';
$sql_autor = "SELECT * FROM autor ORDER BY alias ASC";
$consulta_autor = mysqli_query($con, $sql_autor);
$nfilas = mysqli_num_rows($consulta_autor);
if($nfilas>0){
    for($i=0; $i<$nfilas; $i++){
        $fila = mysqli_fetch_array($consulta_autor);
        ?>

<option value="<?= $fila["id"]?>"><?= $fila["alias"]?></option>   
        <?php
    }
}
