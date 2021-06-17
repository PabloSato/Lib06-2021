<?php
include '../inc/conexion.php';
$sql_autor = "SELECT * FROM genero ORDER BY nombre ASC";
$consulta_autor = mysqli_query($con, $sql_autor);
$nfilas = mysqli_num_rows($consulta_autor);
if($nfilas>0){
    for($i=0; $i<$nfilas;$i++){
        $fila = mysqli_fetch_array($consulta_autor);
        ?><li class="gal_libros_colec">
            <a href="../ver/verLibroGenero.php?id=<?=$fila["id"]?>">
                <div class="port_colec" onmouseover="showTtl('<?=$fila["id"]?>')" onmouseout="hideTtl('<?=$fila["id"]?>')">
                    <img src="../actbbdd/uploads/<?=$fila["imagen"]?>" alt="nombre genero">
                    <div class="tit_colec" id="<?=$fila["id"]?>">
                        <h5><?=$fila["nombre"] ?></h5>
                    </div>
                </div>
                    
            </a>
        </li><?php
    }
}else{
?><li>No hay registros</li><?php
}
?>