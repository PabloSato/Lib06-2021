<?php
include './inc/conexion.php';
$mng = "";
$mng_class = "0";


if(isset($_GET["col"])){
    $col = $_GET["col"];
}

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
    <title>BIBLIOTECA | AÑADIR SAGA</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css" media="screen">
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
                    <li><a href="../index.php#libros">home</a></li>
                    <li><a href="../ver/verColecciones.php">colecciones</a></li>
                        <li><a href="javascript:history.go(-1)">volver</a></li>
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
    
    <section class="fondo_claro" id="autores">
        <div class="conte">
            <h2>Nueva Saga</h2>
            <form action="../actbbdd/insertSaga.php" method="post" enctype="multipart/form-data">
                <div class="formulario">
                     <fieldset class="data">
                         <h3>Añadir datos:</h3>
                          <hr>
                         <label for="nombre">Nombre: </label>
                         <input id="nombre" type="text" name="nombre" placeholder="añade colección..." autofocus required>
                         <br>
                         <label>Imagen:<h6>(1024*1024 / png)</h6></label>
                        <input type="file" name="foto" id="foto">
                        <br>
                     </fieldset>
                    <input type="hidden" id="coleccion" name="coleccion" value="<?=$col?>">
                    
                    <input type="submit" value="añadir saga">
                    <input type="reset" value="borrar datos">
                </div>
            </form>
        </div>
        <span class="mng_<?=$mng_class?>"><?=$mng?></span>
    </section>
    
    
    <!--*****************************JAVASCRIPT******************************************-->

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