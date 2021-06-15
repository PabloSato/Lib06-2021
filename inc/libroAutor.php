<?php
include '../inc/conexion.php';
$sql_libroAutor = "SELECT * FROM libro_autor WHERE id_autor = '$id'";
$consulta_libroAutor = mysqli_query($con, $sql_libroAutor);
$nfilas=mysqli_num_rows($consulta_libroAutor);
if($nfilas>0){
    for($i=0; $i<$nfilas;$i++){
        $filaLA = mysqli_fetch_array($consulta_libroAutor);
        $id_lib = $filaLA["id_libro"];
        $sql_libro = "SELECT * FROM libro WHERE id='$id_lib'";
        $consulta_lib = mysqli_query($con, $sql_libro);
        $fila= mysqli_fetch_array($consulta_lib);
        ?><div class="aut_books">
            <a href="../detalle/detalleLibro.php?id=<?=$fila["id"]?>">
                <div class="port_colec" onmouseover="showTtl('<?=$fila["id"]?>')" onmouseout="hideTtl('<?=$fila["id"]?>')">
                    <img src="../actbbdd/uploads/<?=$fila["portada"]?>" alt="titulo libro">
                    <div class="tit_catal" id="<?=$fila["id"]?>">
                        <h5><?=$fila["titulo"] ?></h5>
                    </div>
                </div>
                    
            </a>
        </div><?php
    
    }
}else{
    ?><li>no hay registros</li><?php
}