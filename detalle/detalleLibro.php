<?php
include '../inc/conexion.php';
$id="";
$read = false;
if(isset($_GET["id"])){
    $id = $_GET["id"];
    $sql = "SELECT * FROM libro WHERE id=$id";
    $consulta = mysqli_query($con, $sql);
    $data = mysqli_fetch_array($consulta);
    
    $id_col = $data["coleccion"];
    $id_saga = $data["saga"];
    //LIBRO
    $sql_book = "SELECT libro.titulo as titulo, libro.paginas, libro.leido, 
    libro.portada, libro.sinopsis,
    idioma.nombre as idioma, idioma.id AS id_idioma,
    ubicacion.nombre as ubicacion,
    estanteria.nombre as estanteria,
    balda.numero as balda
    FROM libro
    INNER JOIN libro_autor
    ON libro.id = libro_autor.id_libro
    INNER JOIN idioma
    ON libro.idioma = idioma.id
    INNER JOIN ubicacion
    ON libro.ubicacion = ubicacion.nombre
    INNER JOIN estanteria
    ON libro.estanteria = estanteria.nombre
    INNER JOIN balda
    ON libro.balda = balda.id
    WHERE libro.id = $id";
    $consulta_book = mysqli_query($con, $sql_book);
    $fila= mysqli_fetch_array($consulta_book);
    
    //AUTOR
    $autores = array();
    $id_autores = array();
    $sql_autor = "SELECT autor.alias, autor.id AS id_autor
                    FROM autor
                    INNER JOIN libro_autor
                    ON autor.id = libro_autor.id_autor
                    WHERE libro_autor.id_libro = $id";
    $consulta_autor = mysqli_query($con, $sql_autor);
    $numAutor = mysqli_num_rows($consulta_autor);
    if($numAutor>0){
        for($i=0; $i<$numAutor; $i++){
            $fila_autor = mysqli_fetch_array($consulta_autor);
            $autores[] = $fila_autor["alias"];
            $id_autores[] = $fila_autor["id_autor"];
        }
    }
    //GENEROS
    $generos = array();
    $id_genero = array();
    $sql_generos = "SELECT genero.id AS id_gen, genero.nombre AS genero
                    FROM genero
                    INNER JOIN libro_generos
                    ON libro_generos.id_genero = genero.id
                    WHERE libro_generos.id_libro = $id";
    $consu_gen = mysqli_query($con, $sql_generos);
    $numGen = mysqli_num_rows($consu_gen);
    if($numGen>0){
        for($i=0; $i<$numGen; $i++){
            $fila_gen = mysqli_fetch_array($consu_gen);
            $generos[] = $fila_gen["genero"];
            $id_genero[] = $fila_gen["id_gen"];
        }
    }
    
    $titulo = $fila["titulo"];
    $paginas = $fila["paginas"];
    $leido = $fila["leido"];
    $portada = $fila["portada"];
    $sinopsis = $fila["sinopsis"];
    $idioma = $fila["idioma"];
    $id_idioma = $fila["id_idioma"];
    $ub = $fila["ubicacion"];
    $st = $fila["estanteria"];
    $balda = $fila["balda"];
    
    if($id_col != ''){
        
    $sql_coleccion = "SELECT * FROM coleccion WHERE id = $id_col";
    $consulta_coleccion = mysqli_query($con, $sql_coleccion);
    $col = mysqli_fetch_array($consulta_coleccion);
    $coleccion = $col["nombre"];
    
    $sql_tomoCol = "SELECT * FROM tomoCol WHERE id_coleccion = $id_col AND libro = '$titulo'";
    $consulta_tomoCol = mysqli_query($con, $sql_tomoCol);
    $tC = mysqli_fetch_array($consulta_tomoCol);
    $tomoCol = $tC["numero"];
    
    }
    if($id_saga != ''){
        
    $sql_saga = "SELECT * FROM saga WHERE id_saga = $id_saga";
    $consulta_saga = mysqli_query($con, $sql_saga);
    $sag = mysqli_fetch_array($consulta_saga);
    $saga = $sag["nombre"];
    
    $sql_tomSag = "SELECT * FROM tomoSag WHERE id_saga = $id_saga AND libro = '$titulo'";
    $consulta_tomSag = mysqli_query($con, $sql_tomSag);
    $tS = mysqli_fetch_array($consulta_tomSag);
    $tomoSag = $tS["numero"];
    
    }
    
    
    if($leido == 1){
        $leido = "Si";
    }else{
        $leido = "No";
    }
    
    $sqLeyendo = "SELECT * FROM leyendo WHERE id_book = $id";
    $consultaLeyendo = mysqli_query($con, $sqLeyendo);
    $leyendo = mysqli_num_rows($consultaLeyendo);
    if($leyendo>0){
        $read = true;
    }
    
}
?>
<!DOCTYPE html>

<head>
    <title>BIBLIOTECA | <?=$titulo?></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css">
</head>
<body>
        <!---------------------------------------------------------------------------CABECERA-->
        <header>
            <!--<div class="up"><div class="gen"><a href="#">Misterio</a></div></div>-->
            
                <div id="logo">
                    <h2>BIBLIOTECA</h2>
                </div>
                <nav>
                    <ul>
                        <li><a href="../index.php">home</a></li>
                        <li><a href="../ver/verLibro.php">libros</a></li>
                        <li><a href="javascript:history.go(-1)">volver</a></li>
                    </ul>
                </nav>
            
        </header>
        <!---------------------------------------------------------------------------CONTENIDO-->
        <section class="fondo_claro">
            <article class="detalle_">
                <div class="col_izq">
                    <div class="det_img">
                        <img src="../actbbdd/uploads/<?=$portada?>" alt="<?= $titulo ?>">
                    </div>
                    <div class="data">
                        <h4>detalles</h4>
                        <hr>
                        <ul>
                            <li>Género:
                                <ul>
                                <?php
                                $cuantos_gen = count($id_genero);
                                for($i=0; $i<$cuantos_gen; $i++){
                                    ?>
                                    <li> <span><a href="../ver/verLibroGenero.php?id=<?= $id_genero[$i] ?>""><?=$generos[$i]?></a></span></li>
                                    <?php
                                }
                                ?>
                                </ul>
                            </li>    
                                
                            <li>Idioma: <span><a href="../ver/verLibroIdioma.php?id=<?=$id_idioma?>"><?=$idioma?></a></span></li>
                            <li>Páginas: <span><?=$paginas?></span></li>
                            <li>Leído: <span><?=$leido?></span></li>
                            <?php
                            if($coleccion != ""){
                                ?><li>Colección: <span><a href="../ver/verLibroColec.php?id=<?= $id_col ?>"><?=$coleccion?></a></span><?php
                            if($tomoCol != ""){
                            ?> nº. <span><?=$tomoCol?></span></li><?php
                           }else{
                               ?></li><?php
                           }
                           }
                           if($saga != ""){
                               ?><li>Saga: <span><a href="../ver/verLibroSaga.php?id='<?=$id_saga?>'"><?=$saga?></a></span><?php
                           }
                           if($tomoSag != ""){
                               ?> nº <span> <?=$tomoSag?></span><li><?php
                           }else{
                               ?></li><?php
                           }
                            ?>
                            <li>Ubicación:
                                <ul>
                                    <li>- <span><?=$ub?></span></li>
                                    <li>- <span>Estantería <?=$st?></span></li>
                                    <li>- <span>Balda - <?=$balda?>ª</span></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="principal">
                    <div class="nombre_texto">
                        <h2><?=$titulo?></h2>
                        <h3><?php
                            $cuantos_aut = count($id_autores);
                            $au =array();
                            $au_num = count($au);
                            if($cuantos_aut>1){
                                for($i=0; $i<$cuantos_aut; $i++){
                                    $au[] = $autores[$i];
                                    ?>
                                    <a href="detalleAutor.php?id=<?=$id_autores[$i]?>"><?=$autores[$i]?> </a> /
                                    <?php
                                }
                            }else{
                                    for($i=0; $i<$cuantos_aut; $i++){
                                    $au[] = $autores[$i];
                                    ?>
                                    <a href="detalleAutor.php?id=<?=$id_autores[$i]?>"><?=$autores[$i]?> </a>
                                    <?php
                                }
                                }


                            ?>
                        </h3>
                        <p><?=$sinopsis?></p>
                    </div>
                    <?php
                    if($read != true){?>
                        <form action="../actbbdd/insertLeyendo.php" method="post" enctype="multipart/form-data">
                            <input type="hidden" id="id" name="id" value="<?=$id?>">
                            <input type="hidden" id="paginas" name="paginas" value="<?=$paginas?>">
                            <input type="submit" value="Leer">
                        </form> 
                   <?php }else{?>
                        <form action="../actbbdd/dejarLeer.php" method="post" enctype="multipart/form-data">
                            <input type="hidden" id="id" name="id" value="<?=$id?>">
                            <input type="submit" value="Dejar de Leer">
                        </form> 
                   <?php }
                    ?>
                    
                </div>

            </article>
           
        </section>