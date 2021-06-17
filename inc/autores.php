<?php
include '../inc/conexion.php';
$sql_autor = "SELECT * FROM autor ORDER BY alias ASC;";
$consulta_autor = mysqli_query($con, $sql_autor);
$nfilas = mysqli_num_rows($consulta_autor);
if($nfilas>0){
    for($i=0; $i<$nfilas;$i++){
        $fila = mysqli_fetch_array($consulta_autor);
        ?><li class="gal_libros">
            <a href="../detalle/detalleAutor.php?id=<?=$fila["id"]?>">
                <div class="port_catal" onmouseover="showTtl('<?=$fila["id"]?>')" onmouseout="hideTtl('<?=$fila["id"]?>')">
                    <img src="../actbbdd/uploads/<?=$fila["foto"]?>" alt="nombre autor">
                    <div class="tit_catal" id="<?=$fila["id"]?>">
                        <h5><?=$fila["alias"] ?></h5>
                    </div>
                </div>
                    
            </a>
        </li><?php
    }
}else{
?><li>No hay registros</li><?php
}
?>