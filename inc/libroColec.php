<?php
include '../inc/conexion.php';
$sql_tomoCol = "SELECT * FROM tomoCol WHERE id_coleccion = $id";
$consul_tomoCol = mysqli_query($con, $sql_tomoCol);
$numTomos = mysqli_num_rows($consul_tomoCol);
if($numTomos>0){
    $sql_libro1 = "SELECT libro.portada, libro.id, libro.titulo
                    FROM libro
                    INNER JOIN tomoCol
                    ON libro.titulo = tomoCol.libro
                    WHERE libro.coleccion = $id AND tomoCol.id_coleccion = $id
                    ORDER BY tomoCol.numero ASC";
}else{
    $sql_libro1 = "SELECT libro.portada, libro.id, libro.titulo
                FROM libro
                WHERE libro.coleccion = $id
                ORDER BY libro.titulo ASC";
}

$consulta_autor = mysqli_query($con, $sql_libro1);
$nfilas = mysqli_num_rows($consulta_autor);
if($nfilas>0){
    for($i=0; $i<$nfilas;$i++){
        $fila = mysqli_fetch_array($consulta_autor);
        ?><li class="gal_libros">
            <a href="../detalle/detalleLibro.php?id=<?=$fila["id"]?>">
                <div class="port_catal" onmouseover="showTtl('<?=$fila["id"]?>')" onmouseout="hideTtl('<?=$fila["id"]?>')">
                    <img src="../actbbdd/uploads/<?=$fila["portada"]?>" alt="<?=$fila["libro"]?>">
                    <div class="tit_catal" id="<?=$fila["id"]?>">
                        <h5><?=$fila["titulo"] ?></h5>
                    </div>
                </div>
                    
            </a>
        </li><?php
    }
}else{
?><li>No hay registros</li><?php
}
?>