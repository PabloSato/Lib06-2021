<?php
include './inc/conexion.php';
$mng = "";
$mng_class = "0";

if(isset($_GET["mng"]))
    $mng_class=$_GET["mng"];
   $mng=$_GET["mng"]; 
   switch ($mng){
       case "1":
           $mng="Ya está registrado, error";
           break;
       case "2":
           $mng="Añadido correctamente";
           break;
   }
?>

<!DOCTYPE html>
<head>
    <title>BIBLIOTECA | AÑADIR</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="css/style_sect.css" rel="stylesheet" type="text/css" media="screen">
</head>

<body>
    <!---------------------------------------------------------------------------CABECERA-->
    <header>
        <!--<div class="up"><div class="gen"><a href="#">Misterio</a></div></div>-->
        <div class="cabecera">
            <div id="logo">
                <h2>AÑADIR</h2>
            </div>
            <nav>
                <ul>
                    <li><a href="index.php#libros">home</a></li>
                    <li><a href="#libros">libros</a></li>
                    <li><a href="#autores">autores</a></li>
                    <li><a href="#colecciones">colecciones</a></li>
                    <li><a href="addUbic.php">ubicaciones</a></li>
                </ul>
            </nav>
        </div>
    </header>
      <!------------------------------------------------------------------------PORTADA-->
      <!-- <section id="home" class="portada">
        <h1>AÑADIR</h1>
    </section> -->
    <!--CONTENIDO-->
    <!------------------------------------------------------------------------LIBROS-->
    <section id="libros" class="fondo_claro">
        <div class="conte">
            <h2>Nuevo Libro</h2>
            
                <div class="formulario">
                    <form action="actbbdd/insertLibro.php" method="post" enctype="multipart/form-data">
                    <div class="data">
                         <h3>Añadir datos.</h3>
                          <hr>
                         <label for="titulo">Título: </label>
                         <br>
                         <input id="titulo" type="text" name="titulo" placeholder="añade titulo..." autofocus required>
                        <br>
                        <label for="autor">Autor: </label>
                        <br>
                        <select id="autor" name="autor">
                            <option disabled="" selected="">--</option>
                            <?php
                            include './check/checkAutores.php';
                            ?>
                        </select>
                        <br>
                        <label for="coleccion">¿Pertenece a una Colección?</label>
                        <br>
                        <input type="radio" name="colec_siNo" value="si" onclick="show('clc')">Si
                        <input type="radio" name="colec_siNo" value="no" onclick="hide('clc')">No
                        <br>
                        <div class="col" id="clc">
                            <label for="coleccion">Colección: </label>
                            <br>
                            <input id="coleccion" type="text" name="coleccion" placeholder="añade titulo colección...">
                            <br>
                            <label for="tomoCol">Tomo: </label>
                            <br>
                            <input id="tomoCol" type="number" name="tomoCol" placeholder="añade número...">
                            <br>
                            <label for="saga">¿Pertenece a una Saga?</label>
                            <br>
                            <input type="radio" name="saga_siNo" value="si" onclick="show('sgs')">Si
                            <input type="radio" name="saga_siNo" value="no" onclick="hide('sgs')">No
                            <br>
                            <div class="sag" id="sgs">
                                <label for="saga">Saga: </label>
                                <br>
                                <input id="saga" type="text" name="saga" placeholder="añade titulo saga...">
                                <br>
                                <label for="tomoSag">Tomo: </label>
                                <br>
                                <input id="tomoSag" type="number" name="tomoSag" placeholder="añade número...">
                                <br>
                            </div>
                        </div>
                        <label for="genero">Género Literario: </label>
                        <br>
                        <select id="genero" name="genero">
                            <option disabled selected>--</option>
                            <?php
                               include './check/checkGenero.php';
                            ?>
                        </select>
                        <br>
                        <label for="paginas">Páginas: </label>
                        <br>
                        <input id="paginas" type="number" name="paginas" placeholder="añade número...">
                        <br>
                        <label for="paginas">Idioma: </label>
                        <br>
                        <select id="idioma" name="idioma">
                            <option disabled selected>--</option>
                            <?php
                              include './check/checkIdioma.php';
                            ?>
                        </select>
                        <br>
                        <input type="checkbox" name="leido" value="si">Leído
                        <br>
                        <label>Portada <h5>(24,38 x 36,12 cm)</h5></label>
                        <input type="file" name="portada">
                        <br>
                        <label>Sinopsis:</label>
                        <br>
                        <textarea name="sinopsis" id="sinopsis" rows="10" placeholder="añade sinopsis"></textarea>
                    </div>
                    <div class="ubic">
                        <h3>Ubicación.</h3>
                        <hr>
                        <label for="ub">Habitación. </label>
                        <br>
                        <input type="text" id="ub" name="ubicacion" placeholder="introduce habitación..">
                        <br>
                        <label for="st">Estanteria: </label>
                        <br>
                        <input type="text" id="st" name="estanteria" placeholder="introduce estantería..">
                        <br>
                        <label for="balda">Balda: </label>
                        <br>
                        <input type="number" name="balda" id="balda" placeholder="añade número de balda">
                    </div>
                    <input type="submit" value="añadir libro">
                    <input type="reset" value="borrar datos">
                    </form>
                </div>
            
        </div>
    </section>
    <section class="fondo_oscuro" id="autores">
        <div class="conte">
            <h2>Nuevo Autor</h2>
            <form action="actbbdd/insertAutor.php" method="post" enctype="multipart/form-data">
                <div class="formulario">
                     <fieldset class="data">
                         <h3>Añadir datos.</h3>
                          <hr>
                         <label for="nombre">Nombre: </label>
                         <br>
                         <input id="nombre" type="text" name="nombre" placeholder="añade nombre..." required>
                        <br>
                        <label for="apellidos">Apellidos: </label>
                        <br>
                        <input id="apellidos" type="text" name="apellidos" placeholder="añade los apellidos..." required>
                        <br>
                        <label for="alias">Alias: </label>
                        <br>
                        <input id="alias" type="text" name="alias" placeholder="añade el alias...">
                        <br>
                        <label>Foto</label>
                        <input type="file" name="foto" id="foto">
                        <br>
                        <label for="bio">Biografía: </label>
                        <br>
                        <textarea id="bio" rows="10" cols="72" name="bio" placeholder="añade biografía..."></textarea>
                     </fieldset>
                    
                    <input type="submit" value="añadir autor">
                    <input type="reset" value="borrar datos">
                </div>
            </form>
        </div>
        <span class="mng_<?=$mng_class?>"><?=$mng?></span>
    </section>
    <section class="fondo_claro" id="colecciones">
        <div class="conte">
            <h2>Nueva Colección</h2>
            <form action="provesar.jsp" method="get">
                <div class="formulario">
                    <fieldset class="data">
                        <h3>Añadir datos.</h3>
                         <hr>
                        <label for="ncol">Colección: </label>
                        <br>
                        <input id="ncol" type="text" name="ncol" placeholder="añade nombre..." required>
                        <br>
                        <label>Imagen</label>
                        <input type="file" name="foto_col">
                       <br>
                        <label for="saga">¿Tiene alguna Saga?</label>
                        <br>
                        <input type="radio" name="saga_siNo" value="si" onclick="show('sgs2')">Si
                        <input type="radio" name="saga_siNo" value="no" onclick="hide('sgs2')">No
                        <br>
                           <fieldset class="sag" id="sgs2">
                               <form action="procesar.jsp" method="get">
                               <label for="nsaga">Saga: </label>
                               <br>
                               <input id="nsaga" type="text" name="nsaga" placeholder="añade titulo saga...">
                               <br>
                                <label>Imagen</label>
                                <input type="file" name="foto_sag">
                                 <br>
                                <input type="submit" value="añadir saga">
                                <input type="reset" value="borrar datos">
                            </form>
                           </fieldset>
                    </fieldset>

                    <input type="submit" value="añadir coleccion">
                    <input type="reset" value="borrar datos">
                </div>
            </form>
        </div>
    </section>
    <section class="fondo_oscuro" id="ubicaciones">
        <div class="conte">
            <h2>Nueva Ubicación</h2>
            <form action="actbbdd/insertUbic.php" method="post" enctype="multipart/form-data">
                <div class="formulario">
                    <fieldset class="ubic">
                        <h3>Ubicación.</h3>
                        <hr>
                        <label for="ub">Habitación. </label>
                        <br>
                        <input type="text" id="ubicacion" name="ubicacion" placeholder="introduce habitación..">
                        <br>
                        <input type="submit" value="añadir ubicación">
                        <input type="reset" value="borrar datos">
                    </fieldset>
                </div>
            </form>
        <span class="mng_<?=$mng_class?>"><?=$mng?></span>
        <form action="actbbdd/insertSt.php" method="post" enctype="multipart/form-data">
                <div class="formulario">
                            <fieldset class="ubic">
                                <labe>Elige Habitación</labe>
                                <select id="ub" name="ub">
                                    <option disabled="" selected="">--</option>
                                    <?php
                                    include './check/chexckUbic.php';
                                    ?>
                                </select>
                                <br>
                                <br>
                                <label for="st">Estanteria: </label>
                                <br>
                                <input type="text" id="st" name="st" placeholder="introduce estantería..">
                                <br>
                                <input type="submit" value="añadir estantería">
                                <input type="reset" value="borrar datos">
                            </fieldset>
                </div>
            </form>
        <span class="mng_<?=$mng_class?>"><?=$mng?></span>
        <form action="actbbdd/insertBalda.php" method="post" enctype="multipart/form-data">
                 <div class="formulario">
                            <fieldset class="ubic">
                                <labe>Elige Habitación</labe>
                                <select id="ubBa" name="ubBa">
                                    <option disabled="" selected="">--</option>
                                    <?php
                                    include './check/checkUbic.php';
                                    ?>
                                </select>
                                <br>
                                <br>
                                <labe>Elige Estanteria</labe>
                                <select id="stBa" name="stBa">
                                    <option disabled="" selected="">--</option>
                                    <?php
                                    include './check/checkSt.php';
                                    ?>
                                </select>
                                <br>
                                <br>
                                <label for="balda">Cuantas Baldas hay: </label>
                                <br>
                                <input type="number" id="balda" name="balda">
                                <br>
                                <input type="submit" value="añadir balda">
                                <input type="reset" value="borrar datos">
                            </fieldset>
                 </div>
            </form>
        <span class="mng_<?=$mng_class?>"><?=$mng?></span>
                    
                    
                
            
        </div>
    </section>
    <!--*****************************JAVASCRIPT******************************************-->
    <script src="js/ckeditor5-build-classic/ckeditor.js"></script>
    <!--<script>
        ClassicEditor.create(document.getElementById('editor'));
    </script>-->
    <script>
        function show(id){document.getElementById(id).style.display="block";}
    </script>
    <script>
        function hide(id){document.getElementById(id).style.display="none";}
    </script>
</body>