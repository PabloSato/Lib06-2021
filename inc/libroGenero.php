<?php
include '../inc/conexion.php';
$sql_autor = "SELECT libro.id, libro.portada, libro.titulo, libro_generos.id_genero AS genero
                FROM libro
                INNER JOIN libro_generos
                ON libro_generos.id_libro = libro.id
                WHERE libro_generos.id_genero = '$id'";
$consulta_autor = mysqli_query($con, $sql_autor);
$nfilas = mysqli_num_rows($consulta_autor);
if($nfilas>0){
    for($i=0; $i<$nfilas;$i++){
        $fila = mysqli_fetch_array($consulta_autor);
        ?><li class="gal_libros">
            <a href="../detalle/detalleLibro.php?id=<?=$fila["id"]?>">
                <div class="port_catal" onmouseover="showTtl('<?=$fila["id"]?>')" onmouseout="hideTtl('<?=$fila["id"]?>')">
                    <img src="../actbbdd/uploads/<?=$fila["portada"]?>" alt="nombre genero">
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