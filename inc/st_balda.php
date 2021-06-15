<?php
include '../inc/conexion.php';
$sql_balda = "SELECT * FROM balda WHERE estanteria = '$st'";
$consulta_balda = mysqli_query($con, $sql_balda);
$nfilas_balda = mysqli_num_rows($consulta_balda);
if($nfilas_balda>0){
    $nume = 0;
    for($i=0; $i<$nfilas_balda;$i++){
        $nume += 1;
        $fila = mysqli_fetch_array($consulta_balda);
        ?><div class="gal_libros_colec">
            <a href="../ver/verLibroBalda.php?id=<?=$fila["id"]?>">
                <div class="port_colec" onmouseover="showTtl('<?=$fila["id"]?>')" onmouseout="hideTtl('<?=$fila["id"]?>')">
                    <img src="../img/balda/balda<?= $nume ?>.png" alt="numero balda">
                    <div class="tit_colec" id="<?=$fila["id"]?>">
                        <h5>Balda <?=$fila["numero"] ?></h5>
                    </div>
                </div>
                    
            </a>
        </div><?php
    }
}else{
?><li>No hay registros</li><?php
}
?>