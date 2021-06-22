<?php
include '../inc/conexion.php';
$id="";
if(isset($_GET["id"])){
    $id = $_GET["id"];
    $sql_libBal = "SELECT * FROM libro_balda WHERE balda = '$id'";
    $consulta_libBal = mysqli_query($con, $sql_libBal);
    $filaL = mysqli_fetch_array($consulta_libBal);
    $libro = $filaL["libro"]; 
    
    $sql_balda = "SELECT * FROM balda WHERE id = '$id'";
    $cons_balda = mysqli_query($con, $sql_balda);
    $filaBalda = mysqli_fetch_array($cons_balda);
    $balda = $filaBalda["numero"];
    $stante = $filaBalda["estanteria"];
    $ubic = $filaBalda["ubicacion"];
    
    $sql_stante = "SELECT id FROM estanteria WHERE nombre = '$stante'";
    $consu_st = mysqli_query($con, $sql_stante);
    $fila_st = mysqli_fetch_array($consu_st);
    $id_stante = $fila_st["id"];
}
?>
<!DOCTYPE html>
<head>
    <title>BIBLIOTECA | <?=$ubic?> | <?=$stante?> - <?= $balda ?></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css">
</head>
<body>
    <!---------------------------------------------------------------------------CABECERA-->
    <header>
        <!--<div class="up"><div class="gen"><a href="#">Misterio</a></div></div>-->
        
            <div id="logo">
                <h2><?=$ubic?> - Estanteria <?=$stante?> - Balda <?= $balda ?></h2>
            </div>
            <nav>
                <ul>
                    <li><a href="../index.php#ubicaciones">home</a></li>
                    <li><a href="../add/addLibro.php?id=<?= $id ?>">añadir</a>
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
                <?php include '../inc/libroBalda.php';?>
            </ul>
            
        </div>

    </section>
    <script type="text/javascript" src="../javascript/funciones.js"></script>
    </body>