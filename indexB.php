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
$sqLeyendo="SELECT leyendo.id_book, leyendo.total AS paginas, leyendo.act_pag,
            libro.titulo, libro.portada
            FROM leyendo
            INNER JOIN libro
            ON leyendo.id_book = libro.id";
$consultaLeyendo = mysqli_query($con, $sqLeyendo);
$filaLeyendo = mysqli_fetch_array($consultaLeyendo);
$id_book = $filaLeyendo["id_book"];
$tot = $filaLeyendo["paginas"];
$actual = $filaLeyendo["act_pag"];
$book = $filaLeyendo["titulo"];
$cover = $filaLeyendo["portada"];
    //AUTOR
$sqlAutLeyendo= "SELECT autor.alias, autor.id AS id_autor
                FROM autor
                INNER JOIN libro_autor
                ON autor.id = libro_autor.id_autor
                WHERE libro_autor.id_libro = $id_book";
$conAutLeyendo = mysqli_query($con, $sqlAutLeyendo);
$filaAutorLeyendo = mysqli_fetch_array($conAutLeyendo);
$nombreAutor = $filaAutorLeyendo["alias"];
$idAutor = $filaAutorLeyendo["id_autor"];

    //PORCENTAJE
$porcen = round(($actual/$tot)*100);



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

            <div class="col_izq">
                <h4>Leyendo</h4>
                <div class="galeria1">
                    <div class="gal_view1">
                        <div class="imgen">
                            <a href="detalle/detalleLibro.php?id=<?=$id_book?>"><img src="actbbdd/uploads/<?=$cover?>" alt="<?=$book?>"></a>
                        </div>
                        <div class="pop-up" id="pop-up1">
                            <div class="up">
                                <h5>Actualiza tu progreso</h5>
                            </div>
                            <div class="info">
                                <form method="post" enctype="multipart/form-data" action="actbbdd/updateLeyendo.php">
                                    <label>Página</label>
                                    <input type="number" name="progress" placeholder="<?=$actual?>">
                                    <label>de <?=$tot?></label>
                                    <br>
                                    <input type="hidden" id="id_book" name="id_book" value="<?=$id_book?>">
                                    <input type="submit" value="actualiar" onclick="closeForm('pop-up1'), openDisplay('1')">
                                </form>
                            </div>
                        </div>
                        <div class="data_books" id="1">
                            <h5><a href="detalle/detalleLibro.php?id=<?=$id_book?>"><?=$book?></a></h5>
                            <p>de <span><a href="detalle/detalleAutor.php?id=<?=$idAutor?>"><?=$nombreAutor?></a></span></p>
                            <progress value="<?=$actual?>" max="<?=$tot?>"></progress>
                            <p><code><?=$actual?>/<?=$tot?> (<?=$porcen?>%)</code></p>
                            <div class="btn open"><a onclick="openForm('pop-up1'), closeDisplay('1')">actualizar</a></div>
                        </div>
                    </div>
                    <div class="gal_view1">
                        <div class="imgen">
                            <a href="detalle/det_libro2.html"><img src="img/books/icon2.jpeg" alt="El Señor de los Anillos"></a>
                        </div>
                        <div class="pop-up" id="pop-up2">
                            <div class="up">
                                <h5>Actualiza tu progreso</h5>
                            </div>
                            <div class="info">
                                <form>
                                    <label>Página</label>
                                    <input type="number" name="progress" placeholder="975">
                                    <label>de 1600</label>
                                    <br>
                                    <input type="submit" value="actualiar" onclick="closeForm('pop-up2'), openDisplay('2')">
                                </form>
                            </div>
                        </div>
                        <div class="data_books" id="2">
                            <h5><a href="detalle/det_libro2.html">El Señor de los Anillos</a></h5>
                            <p>de <span><a href="detalle/det_autor2.html">J.R.R.Tolkien</a></span></p>
                            <progress value="975" max="1600"></progress>
                            <p><code>975/1600 (60%)</code></p>
                            <div class="btn open"><a onclick="openForm('pop-up2'), closeDisplay('2')">actualizar</a></div>
                        </div>
                    </div>
                    <div class="gal_view1">
                        <div class="imgen">
                            <a href="detalle/det_libro3.html"><img src="img/books/icon3.jpeg" alt="Yo, Robot"></a>
                        </div>
                        <div class="pop-up" id="pop-up3">
                            <div class="up">
                                <h5>Actualiza tu progreso</h5>
                            </div>
                            <div class="info">
                                <form>
                                    <label>Página</label>
                                    <input type="number" name="progress" placeholder="325">
                                    <label>de 370</label>
                                    <br>
                                    <input type="submit" value="actualiar" onclick="closeForm('pop-up3'), openDisplay('3')">
                                </form>
                            </div>
                        </div>
                        <div class="data_books" id="3">
                            <h5><a href="detalle/det_libro3.html">Yo, Robot</a></h5>
                            <p>de <span><a href="detalle/det_autor3.html">Isaac Asimov</a></span></p>
                            <progress value="325" max="370"></progress>
                            <p><code>325/719 (87%)</code></p>
                            <div class="btn open"><a onclick="openForm('pop-up3'), closeDisplay('3')">actualizar</a></div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="col_cent">
                <article>
                    <div class="art_img">
                        <a href="detalle/detalleLibro.php?id=<?= $last_book["id"] ?>"><img src="actbbdd/uploads/<?= $last_book["portada"] ?>" alt="<?= $last_book["titulo"] ?>"></a>
                    </div>
                    <div class="art_texto">
                        <h4><a href="detalle/detalleLibro.php?id=<?= $last_book["id"] ?>"><?= $last_book["titulo"] ?></a></h4>
                        <h5><a href="detalle/detalleAutor.php?id=<?=$name_autor["id"]?>"><?= $name_autor["alias"] ?></a></h5>
                        <p><?= $last_book["sinopsis"] ?></p>
                    </div>
                </article>
            </div>
                <div class="col_der">
                    <h4>Menu</h4>
                    <div class="menu">
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
                <div class="col_izq"></div>
                <div class="col_cent">
                    <article>
                        <div class="art_img">
                            <a href="detalle/detalleAutor.php?id=<?=$fila_autor["id"]?>"><img src="actbbdd/uploads/<?=$fila_autor["foto"]?>" alt="<?=$fila_autor["alias"]?>"></a>
                        </div>
                        <div class="art_texto">
                            <h4><a href="detalle/detalleAutor.php?id=<?=$fila_autor["id"]?>"><?=$fila_autor["alias"]?></a></h4>
                            <h5><a href="ver/verAutores.php"><i>Últimos Autores</i></a></h5>
                            <p><?=$fila_autor["bio"]?></p>
                        </div>
                    </article>
                </div>
                    <div class="col_der">
                        <h4>Menu</h4>
                        <div class="menu">
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
    <script>
        function openForm(id){document.getElementById(id).style.display = "block";}
    </script>
    <script>
        function closeDisplay(id){document.getElementById(id).style.display="none"}
    </script>
    <script>
        function closeForm(id){document.getElementById(id).style.display = "none";}
    </script>
        <script>
        function openDisplay(id){document.getElementById(id).style.display="block"}
    </script>
     <script>
        function showPablo(){
            document.getElementById('pablo').style.display="block";
            document.getElementById('paty').style.display="none";
            document.getElementById('buhar').style.display="none";
            document.getElementById('salon').style.display="none";
        }
    </script>

    <script>
        function showPaty(){
            document.getElementById('paty').style.display="block";
            document.getElementById('pablo').style.display="none";
            document.getElementById('buhar').style.display="none";
            document.getElementById('salon').style.display="none";
        }
    </script>
    <script>
        function showSalon(){
            document.getElementById('salon').style.display="block";
            document.getElementById('paty').style.display="none";
            document.getElementById('buhar').style.display="none";
            document.getElementById('pablo').style.display="none";
        }
    </script>
    <script>
        function showBuhar(){
            document.getElementById('buhar').style.display="block";
            document.getElementById('paty').style.display="none";
            document.getElementById('pablo').style.display="none";
            document.getElementById('salon').style.display="none";
        }
    </script>
</body>