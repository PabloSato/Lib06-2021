<?php
include '../inc/conexion.php';
$id="";
if(isset($_GET["id"])){
    $id = $_GET["id"];
    $sql_autor = "SELECT * FROM autor WHERE id = '$id'";
    $consulta_autor = mysqli_query($con, $sql_autor);
    $fila = mysqli_fetch_array($consulta_autor);
    
    $nombre = $fila["nombre"];
    $apellidos = $fila["apellidos"];
    $alias = $fila["alias"];
    
}
?>
<!DOCTYPE html>
<head>
    <title>BIBLIOTECA | <?= $fila["alias"]?></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css">
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
                        <li><a href="../index.php">home</a></li>
                        <li><a href="../ver/verAutores.php">autores</a></li>
                    <li><a href="javascript:history.go(-1)">volver</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!---------------------------------------------------------------------------CONTENIDO-->
        <section class="fondo_claro">
            <article class="detalle_">
                <div class="col_izq">
                    <div class="det_img">
                        <img src="../actbbdd/uploads/<?=$fila["foto"]?>">
                    </div>
                    <div class="data">
                        <h4>detalles</h4>
                        <hr>
                        <ul>
                            <?php include '../inc/infoLibros.php';?>
                            
                        </ul>
                    </div>
                </div>
                <div class="principal">
                    <div class="nombre_texto">
                        <h2><?php
                        if($nombre == $apellidos){
                            echo $nombre;
                        }else{
                            echo $nombre." ".$apellidos;
                        }
                            if(($nombre != $alias) && ($apellidos != $alias) && ($nombre." ".$apellidos != $alias)){
                                echo " / ".$alias;
                            }
                            ?>

                        </h2>
                        <p><?=$fila["bio"]?></p>
                    </div>
                             <div class="aut_gal">

                                 <?php include '../inc/libroAutor.php';?>

                             </div>
                    
                </div>

            </article>
           
        </section>
        <script>
            function showTtl(id){document.getElementById(id).style.display="block";}
        </script>
        <script>
            function hideTtl(id){document.getElementById(id).style.display="none";}
        </script>
        </body>