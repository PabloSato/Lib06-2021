<?php
include './conexion.php';
$sql_libroAutor = "SELECT * FROM libro_autor WHERE id_autor = '$id'";
$consulta_libroAutor = mysqli_query($con, $sql_libroAutor);
$nfilas=mysqli_num_rows($consulta_libroAutor);
$generos = array();
$colSags = array();
if($nfilas>0){
    for($i=0; $i<$nfilas;$i++){
        $filaLA = mysqli_fetch_array($consulta_libroAutor);
        $id_lib = $filaLA["id_libro"];
        $sql_libro = "SELECT * FROM libro WHERE id='$id_lib'";
        $consulta_lib = mysqli_query($con, $sql_libro);
        $filaData= mysqli_fetch_array($consulta_lib);
        $generos[] = $filaData["genero"];
        $colSags[] = $filaData["coleccion"];
        $colSags[] = $filaData["saga"];
    }
    ?><li>Género: 
        <?php
    $cuantosGen = count($generos);
    if($cuantosGen>=1){
        for($i=0; $i<$cuantosGen; $i++){
            $sql_gen="SELECT * FROM genero WHERE nombre='$generos[$i]'";
            $consulta_gen = mysqli_query($con, $sql_gen);
            $filaG = mysqli_fetch_array($consulta_gen);
            ?><span><a href="../ver/verLibroGenero.php?id=<?= $filaG["id"] ?>""><?=$generos[$i]?></a></span><?php  
        }
    }else{
        for($i=0; $i<$cuantosGen; $i++){
            $sql_gen="SELECT * FROM genero WHERE nombre='$generos[$i]'";
            $consul_gen = mysqli_query($con, $sql_gen);
            $gen_arr= mysqli_fetch_array($consul_gen);
            $gen_id=$gen_arr["id"];
            ?><span><a href="../ver/verLibroGenero.php?id=<?=$$gen_id?>""><?=$generos[$i]?></a></span><?php  
        }
    }?></li>
    <li>Colecciones:
        <ul>
            <?php
            $cuantosColSags = count($colSags);
            for($i=0; $i<$cuantosColSags; $i++){
            }
            ?>
        </ul>
    </li>
<?php
}else{
    ?><li>no hay registros</li><?php
}
?>
