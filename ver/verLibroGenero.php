<?php
include '../inc/conexion.php';
$id="";
if(isset($_GET["id"])){
    $id = $_GET["id"];
    $sql_gen = "SELECT * FROM genero WHERE id = '$id'";
    $consulta_gen = mysqli_query($con, $sql_gen);
    $filaG = mysqli_fetch_array($consulta_gen);
    $genero = $filaG["nombre"];   
}
?>
<!DOCTYPE html>
<head>
    <title>BIBLIOTECA | <?=$genero?></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css">
</head>
<body>
    <!---------------------------------------------------------------------------CABECERA-->
    <header>
        <!--<div class="up"><div class="gen"><a href="#">Misterio</a></div></div>-->
        
            <div id="logo">
                <h2><?=$genero?></h2>
            </div>
            <nav>
                <ul>
                    <li><a href="verGeneros.php">generos</a></li>
                    <li><a href="javascript:history.go(-1)">volver</a></li>
                </ul>
            </nav>
      
    </header>
    <!---------------------------------------------------------------------------CONTENIDO-->
    <section class="fondo_claro">
       <div class="conte">
            <div class="buscador">
               <input type="text" id="myInput" placeholder="buscar libro..." onkeyup="myFunction()"
                      title="Type in a name" autofocus>
           </div>
            <hr>
            <ul class="gal_total" id="myUL">
                <?php include '../inc/libroGenero.php';?>
            </ul>
            
        </div>

    </section>
    <script type="text/javascript" src="../javascript/funciones.js"></script>
    </body>