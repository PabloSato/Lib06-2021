<?php
include './conexion.php';
$sql_libroAutor = "SELECT * FROM libro_autor WHERE id_autor = '$id'";
$consulta_libroAutor = mysqli_query($con, $sql_libroAutor);
$nfilas=mysqli_num_rows($consulta_libroAutor);
$generos = array();
$colecs = array();
$sagas = array();
if($nfilas>0){
    for($i=0; $i<$nfilas;$i++){
        $filaLA = mysqli_fetch_array($consulta_libroAutor);
        $id_lib = $filaLA["id_libro"];
        $sql_libro = "SELECT * FROM libro WHERE id='$id_lib'";
        $consulta_lib = mysqli_query($con, $sql_libro);
        $filaData= mysqli_fetch_array($consulta_lib);
        
        $colecs[] = $filaData["coleccion"];
        $sagas[] = $filaData["saga"];
        $sql_lib_gen = "SELECT * FROM libro_generos WHERE id_libro = $id_lib";
        $consulta_lib_gen = mysqli_query($con, $sql_lib_gen);
        $numGen = mysqli_num_rows($consulta_lib_gen);
        for($j=0; $j<$numGen; $j++){
            $fila_gen1 = mysqli_fetch_array($consulta_lib_gen);
            $id_gen = $fila_gen1["id_genero"];
            $sql_gen2 = "SELECT * FROM genero WHERE id = '$id_gen'";
            $consu_gen2 = mysqli_query($con, $sql_gen2);
            $fila_gen2 = mysqli_fetch_array($consu_gen2);
            $generos[] = $fila_gen2["id"];
        }
    }
    
    ?><li>Género: 
        <ul>
        <?php
    $noRepGen = array_unique($generos);
    $cuantosGen = count($noRepGen);
    if($cuantosGen>=1){
        for($i=0; $i<$cuantosGen; $i++){
            $sql_gen="SELECT * FROM genero WHERE id='$noRepGen[$i]'";
            $consulta_gen = mysqli_query($con, $sql_gen);
            $filaG = mysqli_fetch_array($consulta_gen);
            ?><li><span><a href="../ver/verLibroGenero.php?id=<?= $filaG["id"] ?>""><?=$filaG["nombre"]?></a></span></li><?php  
        }
    }else{
        for($i=0; $i<$cuantosGen; $i++){
            $sql_gen="SELECT * FROM genero WHERE id='$noRepGen[$i]'";
            $consul_gen = mysqli_query($con, $sql_gen);
            $gen_arr= mysqli_fetch_array($consul_gen);
            $gen_id=$gen_arr["id"];
            ?><li><span><a href="../ver/verLibroGenero.php?id=<?=$gen_id?>""><?=$filaG["nombre"]?></a></span></li><?php  
        }
    }?></ul></li>
    <?php
    $numC = 0;
    $col_count = count($colecs);
    for($i = 0; $i<$col_count;$i++){
        if($colecs[$i] != ""){
            $numC += 1;
        }
    }
    if($numC >= 1){
    ?>
    <li>Colecciones:
        <ul>
            <?php
            $noRepColecs = array_unique($colecs);
            for($i=0; $i<$col_count; $i++){
                $sql_col = "SELECT * FROM coleccion WHERE id = '$noRepColecs[$i]'";
                $cons_col = mysqli_query($con, $sql_col);
                $col_arr = mysqli_fetch_array($cons_col);
                $id_col = $col_arr["id"];
                $col = $col_arr["nombre"];
                ?><li><a href="../ver/verLibroColec.php?id=<?= $id_col ?>"><?= $col ?></a></li><?php
    }}
            ?>
        </ul>
    </li>
    <?php
        $numS = 0;
        $sagas_count = count($sagas);
        for($i=0; $i<$sagas_count; $i++){
            if($sagas[$i] != ""){
           $numS += 1; 
            }
        }
        if($numS >= 1){?>
    <li>Sagas:
        <ul>
            <?php
            $noRepSagas = array_unique($sagas);
            for($i=0; $i<$sagas_count; $i++){
                $sql_sag= "SELECT * FROM saga WHERE id_saga = '$noRepSagas[$i]'";
                $cons_saga = mysqli_query($con, $sql_sag);
                $saga_array = mysqli_fetch_array($cons_saga);
                $id_saga = $saga_array["id_saga"];
                $saga_name = $saga_array["nombre"];
                ?><li><a href="../ver/verLibroSaga.php?id=<?= $id_saga ?>"><?= $saga_name ?></a></li><?php
            }
            ?>
        </ul>
    </li>
       <?php }
        
}else{
    ?><li>no hay registros</li><?php
}