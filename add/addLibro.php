<?php
include '../inc/conexion.php';
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
   if(isset($_GET["id"])){
       $id_balda = $_GET["id"];
       $sql_balda = "SELECT * FROM balda WHERE id = '$id_balda'";
       $consulta_balda = mysqli_query($con, $sql_balda);
       $balda = mysqli_fetch_array($consulta_balda);
   }
?>

<!DOCTYPE html>
<head>
    <title>BIBLIOTECA | AÑADIR LIBRO</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css" media="screen">
</head>

<body>
    <!---------------------------------------------------------------------------CABECERA-->
    <header>
        <!--<div class="up"><div class="gen"><a href="#">Misterio</a></div></div>-->
       
            <div id="logo">
                <h2>AÑADIR</h2>
            </div>
            <nav>
                <ul>
                    <li><a href="../index.php#libros">home</a></li>
                    <li><a href="../ver/verLibro.php">libros</a></li>
                        <li><a href="javascript:history.go(-1)">volver</a></li>
                </ul>
            </nav>
        
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
                    <form action="../actbbdd/insertLibro.php" method="post" enctype="multipart/form-data">
                    <div class="data">
                         <h3>Añadir datos.</h3>
                          <hr>
                         <label for="titulo">Título: </label>
                         <br>
                         <input id="titulo" type="text" name="titulo" placeholder="añade titulo..." autofocus required>
                        <br>
                        <label for="autores">Autor: </label>
                        <br>
                        <div class="dos">
                            <input list="autores" name="autor" id="autor" class="lista" placeholder="introduce el autor....">
                            <datalist id="autores">
                                <?php
                                    include '../check/checkAutores.php';
                                ?>
                            </datalist>
                            <input list="autores2" name="autor2" id="autor2" class="lista" placeholder="introduce más autores....">
                            <datalist id="autores2">
                                <?php
                                    include '../check/checkAutores.php';
                                ?>
                            </datalist>
                        </div>
                        <label for="coleccion">¿Pertenece a una Colección?</label>
                        <br>
                        <input type="radio" name="colec_siNo" value="si" onclick="show('clc')">Si
                        <input type="radio" name="colec_siNo" value="no" onclick="hide('clc')">No
                        <br>
                        <div class="col" id="clc">
                            <div class="dosyuno">
                                <label for="coleccion">Colección: </label>
                                <label for="tomoCol">Tomo: </label>
                            </div>
                            <div class="dosyuno">
                                <input list="colec" id="coleccion" name="coleccion" class="lista" type="text" placeholder="añade colección...">
                                <datalist id="colec">
                                   <?php
                                        include '../check/checkColec.php';
                                    ?> 
                                </datalist>
                                <input id="tomoCol" type="number" name="tomoCol" placeholder="añade número...">
                            </div>
                            <label for="saga">¿Pertenece a una Saga?</label>
                            <br>
                            <input type="radio" name="saga_siNo" value="si" onclick="show('sgs')">Si
                            <input type="radio" name="saga_siNo" value="no" onclick="hide('sgs')">No
                            <div class="sag" id="sgs">
                                <div class="dosyuno">
                                    <label for="saga">Saga: </label>
                                    <label for="tomoSag">Tomo: </label>
                                </div>
                                <div class="dosyuno">
                                    <input list="sag" id="saga" name="saga" class="lista" type="text" placeholder="añade saga...">
                                    <datalist id="sag">
                                        <?php
                                          include '../check/checkSaga.php';
                                        ?>
                                    </datalist>
                                    <input id="tomoSag" type="number" name="tomoSag" placeholder="añade número...">
                                </div>
                            </div>
                        </div>
                        <label for="genero">Género Literario: </label>
                        <br>
                        <div class="tres">
                            <select id="genero" name="genero">
                                <option disabled selected>--</option>
                                <?php
                                   include '../check/checkGenero.php';
                                ?>
                            </select>
                            <select id="genero2" name="genero2">
                                <option disabled selected>--</option>
                                <?php
                                   include '../check/checkGenero.php';
                                ?>
                            </select>
                            <select id="genero3" name="genero3">
                                <option disabled selected>--</option>
                                <?php
                                   include '../check/checkGenero.php';
                                ?>
                            </select>
                        </div>
                        <div class="dos">
                            <label for="paginas">Páginas: </label>
                            <label for="paginas">Idioma: </label>
                        </div>
                        <div class="dos">
                            <input id="paginas" type="number" name="paginas" placeholder="añade número...">
                            <select id="idioma" name="idioma">
                                <option disabled selected>--</option>
                                <?php
                                  include '../check/checkIdioma.php';
                                ?>
                            </select>
                        </div>
                        <div class="dos">
                            <div>
                                Leído<input type="checkbox" name="leido" value="si">
                            </div>
                            <div>
                                <label>Portada: </label>
                             <input type="file" name="portada">
                            </div>
                        </div>
                        <label>¿Es un Comic?</label>
                            <input type="radio" name="comic" value="si">Si
                            <input type="radio" name="comic" value="no" checked>No
                        <br>
                        <label>Sinopsis:</label>
                        <br>
                        <textarea name="sinopsis" id="sinopsis" rows="10" placeholder="añade sinopsis"></textarea>
                    </div>
                        <input type="hidden" id="ub" name="ubicacion" value="<?=$balda["ubicacion"]?>">
                        <input type="hidden" id="st" name="estanteria" value="<?= $balda["estanteria"] ?>">
                        <input type="hidden" name="balda" id="balda" value="<?= $balda["id"] ?>">
                    
                    <input type="submit" value="añadir libro">
                    <input type="reset" value="borrar datos">
                    </form>
                </div>
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
    
    
    