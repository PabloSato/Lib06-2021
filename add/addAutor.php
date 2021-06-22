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
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css" media="screen">
    <script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>
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
                    <li><a href="../index.php#autores">home</a></li>
                    <li><a href="../ver/verAutores.php">autores</a></li>
                        <li><a href="javascript:history.go(-1)">volver</a></li>
                </ul>
            </nav>
        
    </header>
    <section class="fondo_oscuro" id="autores">
        <div class="conte">
            <h2>Nuevo Autor</h2>
            <form action="../actbbdd/insertAutor.php" method="post" enctype="multipart/form-data">
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
                        <!--<div id="editor" name="bio">
                            <p>Añade la biografía....</p>
                        </div>-->
                       
                        <textarea id="bio" rows="10" cols="72" name="bio" placeholder="añade biografía..."></textarea>
                        
                        <br>
                        <label>¿Es Dibujante?</label>
                        <input type="radio" name="dibu" value="si">Si
                        <input type="radio" name="dibu" value="no">No
                     </fieldset>
                    
                    <input type="submit" value="añadir autor">
                    <input type="reset" value="borrar datos">
                </div>
            </form>
        </div>
        <span class="mng_<?=$mng_class?>"><?=$mng?></span>
    </section>
        </section>
    <!--*****************************JAVASCRIPT******************************************-->
    
    <script>
        ClassicEditor
    .create( document.querySelector( '#editor' ) )
    .then( editor => {
        console.log( editor );
    } )
    .catch( error => {
        console.error( error );
    } );
    </script>
    <script>
        function show(id){document.getElementById(id).style.display="block";}
    </script>
    <script>
        function hide(id){document.getElementById(id).style.display="none";}
    </script>
</body>