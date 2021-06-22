<?php
include './inc/conexion.php';
//ÚLTIMO AUTOR
$sql_autor = "SELECT * FROM autor WHERE fecha = (SELECT max(fecha) FROM autor)";
$consulta_autor = mysqli_query($con, $sql_autor);
$fila_autor= mysqli_fetch_array($consulta_autor);

//ÚLTIMO LIBRO
$sql_last_book = "SELECT * FROM libro WHERE fecha = (SELECT max(fecha) FROM libro)";
$consulta_lastBook = mysqli_query($con, $sql_last_book);
$last_book = mysqli_fetch_array($consulta_lastBook);
$id_last_book = $last_book["id"];
$sql_last_book_autor = "SELECT * FROM libro_autor WHERE id_libro = '$id_last_book'";
$consulta_last_book_autor = mysqli_query($con, $sql_last_book_autor);
$last_book_autor = mysqli_fetch_array($consulta_last_book_autor);
$id_autor_book = $last_book_autor["id_autor"];
$sql_autor_name= "SELECT * FROM autor WHERE id = '$id_autor_book'";
$consulta_id = mysqli_query($con, $sql_autor_name);
$name_autor = mysqli_fetch_array($consulta_id);

//LEYENDO
    //LIBRO

?>
<!DOCTYPE html>
<head>
    <title>BIBLIOTECA</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="screen">
</head>

<body>
    <!---------------------------------------------------------------------------CABECERA-->
    <header>
        <!--<div class="up"><div class="gen"><a href="#">Misterio</a></div></div>-->
        <div class="cabecera">
            <div id="logo">
                <h2>BIBLIOTECA</h2>
            </div>
            <nav>
                <ul>
                    <li><a href="#home">home</a></li>
                    <li><a href="#libros">libros</a></li>
                    <li><a href="#autores">autores</a></li>
                    <li><a href="#ubicaciones">ubicaciones</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <!------------------------------------------------------------------------PORTADA-->
    <section id="home" class="portada">
        <h1>BIBLIOTECA</h1>
    </section>
    <!--CONTENIDO-->
    <!------------------------------------------------------------------------LIBROS-->
    <section id="libros" class="fondo_claro">
        <div class="conte">
            <h2>LIBROS</h2>
            <h3><cite>Tantos libros, tan poco tiempo</cite></h3>
            <div class="tres">   
                <div class="izq">
                    <h4>Leyendo</h4>
                    <div class="galeria_read">
                        <?php include './inc/leyendo.php'; ?>
                    </div>
                </div>

                <div class="cent">
                    <article>
                        <a href="detalle/detalleLibro.php?id=<?= $last_book["id"] ?>"><img src="actbbdd/uploads/<?= $last_book["portada"] ?>" alt="<?= $last_book["titulo"] ?>"></a>
                        <div class="info">
                            <h4><a href="detalle/detalleLibro.php?id=<?= $last_book["id"] ?>"><?= $last_book["titulo"] ?></a></h4>
                            <h5><a href="detalle/detalleAutor.php?id=<?=$name_autor["id"]?>"><?= $name_autor["alias"] ?></a></h5>
                            <p><?= $last_book["sinopsis"] ?></p>
                        </div>
                    </article>
                </div>
                
                <div class="dere">
                    <h4>Menu</h4>
                        <nav>
                            <ul>
                                <li><a href="ver/verLibro.php">LIBROS</a></li>
                                <li><a href="ver/verColecciones.php">COLECCIONES</a></li>
                                <li><a href="ver/verGeneros.php">GENEROS</a></li>
                                <li><a href="ver/verIdioma.php">IDIOMAS</a></li>
                                <li><a href="#ubicaciones">AÑADIR</a></li>
                                <li><a href="#">RETO</a></li>
                                <li><a href="#">MISCELANEA</a></li>
                            </ul>
                        </nav>       
                </div>

            </div>
        </div>    
    </section>

    <!------------------------------------------------------------------------AUTORES-->
    <section id="autores" class="fondo_oscuro">   
            <div class="conte">
                <h2>AUTORES</h2>
                <h3><cite>Escoge un autor como escogerías un amigo</cite></h3>
                <div class="tres">
                    <div class="izq"></div>
                    <div class="cent">
                        <article>
                            <a href="detalle/detalleAutor.php?id=<?=$fila_autor["id"]?>"><img src="actbbdd/uploads/<?=$fila_autor["foto"]?>" alt="<?=$fila_autor["alias"]?>"></a>
                            <div class="info">
                                <h4><a href="detalle/detalleAutor.php?id=<?=$fila_autor["id"]?>"><?=$fila_autor["alias"]?></a></h4>
                                <h5><a href="ver/verAutores.php"><i>Últimos Autores</i></a></h5>
                                <p><?=$fila_autor["bio"]?></p>
                            </div>
                        </article>
                    </div>
                    <div class="dere">
                        <h4>Menu</h4>
                        <nav>
                            <ul>
                                <li><a href="ver/verAutores.php">AUTORES</a></li>
                                <li><a href="add/addAutor.php">AÑADIR</a></li>
                                <li><a href="#">EDITAR</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
    </section>

    <!------------------------------------------------------------------------UBICACIONES-->
    <section id="ubicaciones" class="fondo_claro">
        <div class="conte dos">
            <h2>UBICACIONES</h2>
            <h3><cite>Un lugar para cada libro</cite></h3>

            <div class="menu_izq">
                <h4>habitaciones</h4>
                <div class="menu">
                    <nav>
                        <ul>
                            <li><a href="#pablo" onclick="showPablo()">Pablo</a></li>
                            <li><a href="#paty" onclick="showPaty()">Patty</a></li>
                            <li><a href="#buhar" onclick="showBuhar()">Buhardilla</a></li>
                            <li><a href="#salon" onclick="showSalon()">Salón</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="ubi_gal">
                <div id="pablo">
                    <?php
                    $sql_st = "SELECT * FROM estanteria WHERE ubicacion = 'Habitación Pablo'";
                    $consulta_st = mysqli_query($con, $sql_st);
                    $filas_st = mysqli_num_rows($consulta_st);
                    $num = 0;
                    if($filas_st>0){
                        for($i=0; $i< $filas_st; $i++){
                            $num += 1;
                            $fila= mysqli_fetch_array($consulta_st);
                            ?><div class="gal_st">
                                <a href="ver/verBalda.php?id=<?= $fila["id"] ?>"><img src="img/st/st<?=$num?>.jpeg" alt="estanteria"></a>
                            </div><?php
                        }
                    }else{
                        ?><li>No hay registros</li><?php
                    }
                    ?>
                </div>
               <div id="paty">
                    <?php
                    $sql_st = "SELECT * FROM estanteria WHERE ubicacion = 'Habitación Patty'";
                    $consulta_st = mysqli_query($con, $sql_st);
                    $filas_st = mysqli_num_rows($consulta_st);
                    $num = 0;
                    if($filas_st>0){
                        for($i=0; $i< $filas_st; $i++){
                            $num += 1;
                            $fila= mysqli_fetch_array($consulta_st);
                            ?><div class="gal_st">
                                <a href="ver/verBalda.php?id=<?= $fila["id"] ?>"><img src="img/st/st<?=$num?>.jpeg" alt="estanteria"></a>
                            </div><?php
                        }
                    }else{
                        ?><li>No hay registros</li><?php
                    }
                    ?>
                </div>
                <div id="buhar">
                    <?php
                    $sql_st = "SELECT * FROM estanteria WHERE ubicacion = 'Buhardilla'";
                    $consulta_st = mysqli_query($con, $sql_st);
                    $filas_st = mysqli_num_rows($consulta_st);
                    $num = 0;
                    if($filas_st>0){
                        for($i=0; $i< $filas_st; $i++){
                            $num += 1;
                            $fila= mysqli_fetch_array($consulta_st);
                            ?><div class="gal_st">
                                <a href="ver/verBalda.php?id=<?= $fila["id"] ?>"><img src="img/st/st<?=$num?>.jpeg" alt="estanteria"></a>
                            </div><?php
                        }
                    }else{
                        ?><li>No hay registros</li><?php
                    }
                    ?>
                </div>
                <div id="salon">
                    <?php
                    $sql_st = "SELECT * FROM estanteria WHERE ubicacion = 'Salon'";
                    $consulta_st = mysqli_query($con, $sql_st);
                    $filas_st = mysqli_num_rows($consulta_st);
                    $num = 0;
                    if($filas_st>0){
                        for($i=0; $i< $filas_st; $i++){
                            $num += 1;
                            $fila= mysqli_fetch_array($consulta_st);
                            ?><div class="gal_st">
                                <a href="ver/verBalda.php?id=<?= $fila["id"] ?>"><img src="img/st/st<?=$num?>.jpeg" alt="estanteria"></a>
                            </div><?php
                        }
                    }else{
                        ?><li>No hay registros</li><?php
                    }
                    ?>
                </div>
                
                
                
            </div>
        </div>
    </section>
    <!--JAVASCRIPT!!------------*********************************************************-->
    <script type="text/javascript" src="css/functions.js"></script>
</body>