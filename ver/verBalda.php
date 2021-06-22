<?php
include '../inc/conexion.php';
$id="";
if(isset($_GET["id"])){
    $id = $_GET["id"];
    $sql_st = "SELECT * FROM estanteria WHERE id = '$id'";
    $consulta_st = mysqli_query($con, $sql_st);
    $filaSt = mysqli_fetch_array($consulta_st);
    $st = $filaSt["nombre"]; 
    $ub = $filaSt["ubicacion"];
}
?>
<!DOCTYPE html>
<head>
    <title>BIBLIOTECA | BALDAS</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css">
</head>
<body>
    <!---------------------------------------------------------------------------CABECERA-->
    <header>
        <!--<div class="up"><div class="gen"><a href="#">Misterio</a></div></div>-->
        
            <div id="logo">
                <h2><?= $ub ?> - Estanteria <?=$st?></h2>
            </div>
            <nav>
                <ul>
                    <li><a href="../index.php#ubicaciones">home</a></li>
                    <li><a href="javascript:history.go(-1)">volver</a></li>
                </ul>
            </nav>
     
    </header>
    <!---------------------------------------------------------------------------CONTENIDO-->
    <section class="fondo_claro">
       <div class="conte">
            <div class="buscador">
               <input type="text" id="myInput" placeholder="buscar balda..." onkeyup="myfunction()"
                      title="Type in a name" autofocus>
           </div>
            <hr>
            <div class="gal_total_colec">
                <?php include '../inc/st_balda.php';?>
            </div>
            
        </div>

    </section>
    <script type="text/javascript" src="../javascript/funciones.js"></script>
    </body>