<?php
include '../inc/conexion.php';
$sql_libro = "SELECT * FROM libro WHERE balda = '$id' ORDER BY fecha ASC";
$consulta_balda = mysqli_query($con, $sql_libro);
$nfilas = mysqli_num_rows($consulta_balda);
if($nfilas>0){
    for($i=0; $i<$nfilas;$i++){
        $fila = mysqli_fetch_array($consulta_balda);
        ?><div class="gal_libros">
            <a href="../detalle/detalleLibro.php?id=<?=$fila["id"]?>">
                <div class="port_catal" onmouseover="showTtl('<?=$fila["id"]?>')" onmouseout="hideTtl('<?=$fila["id"]?>')">
                    <img src="../actbbdd/uploads/<?=$fila["portada"]?>" alt="<?=$fila["titulo"]?>">
                    <div class="tit_catal" id="<?=$fila["id"]?>">
                        <h5><?=$fila["titulo"] ?></h5>
                    </div>
                </div>
                    
            </a>
        </div><?php
    }
}else{
?><li>No hay registros</li><?php
}
?>