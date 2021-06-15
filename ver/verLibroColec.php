<?php
include '../inc/conexion.php';
$id="";
if(isset($_GET["id"])){
    $id = $_GET["id"];
    $sql_gen = "SELECT * FROM coleccion WHERE id = $id";
    $consulta_gen = mysqli_query($con, $sql_gen);
    $filaG = mysqli_fetch_array($consulta_gen);
    $coleccion = $filaG["nombre"];   
    
    $sql_saga = "SELECT * FROM saga WHERE coleccion = $id";
    $consu_saga = mysqli_query($con, $sql_saga);
    $nfilas = mysqli_num_rows($consu_saga);
    
}
?>
<!DOCTYPE html>
<head>
    <title>BIBLIOTECA | <?=$coleccion?></title>
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
                <h2><?=$coleccion?></h2>
            </div>
            <nav>
                <ul>
                    <li><a href="verColecciones.php">colecciones</a></li>
                    <li><a href="../add/addSaga.php?col='<?=$id?>'">añadir Saga</a></li>
                    <li><a href="javascript:history.go(-1)">volver</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <!---------------------------------------------------------------------------CONTENIDO-->
    <section class="fondo_claro">
       <div class="conte">
            <div class="buscador">
               <input type="text" id="myInput" placeholder="buscar libro..." onkeyup="myfunction()"
                      title="Type in a name" autofocus>
           </div>
           
            <?php
            $sql_autor = "SELECT * FROM saga
              WHERE saga.coleccion = $id
              ORDER BY nombre ASC";
                $consulta_autor = mysqli_query($con, $sql_autor);
                $nfilas = mysqli_num_rows($consulta_autor);
                if($nfilas>0){
                    ?>
           <hr>
            <h2>SAGAS</h2>
            <div class="gal_total_colec">
                        <?php
                    for($i=0; $i<$nfilas;$i++){
                        $fila = mysqli_fetch_array($consulta_autor);
                        ?><div class="gal_libros_colec">
                            <a href="../ver/verLibroSaga.php?id=<?=$fila["id_saga"]?>">
                                <div class="port_colec" onmouseover="showTtl('<?=$fila["id_saga"]?>')" onmouseout="hideTtl('<?=$fila["id_saga"]?>')">
                                    <img src="../actbbdd/uploads/<?=$fila["imagen"]?>" alt="<?=$fila["nombre"]?>">
                                    <div class="tit_colec" id="<?=$fila["id_saga"]?>">
                                        <h5><?=$fila["nombre"] ?></h5>
                                    </div>
                                </div>

                            </a>
                        </div><?php
                    }
                }?><br>
            </div>
            <hr>
            <br>
            <div class="gal_total">
                <?php include '../inc/libroColec.php';?>
            </div>
            
        </div>

    </section>
    <script>
        function showTtl(id){document.getElementById(id).style.display="block";}
    </script>
    <script>
        function hideTtl(id){document.getElementById(id).style.display="none";}
    </script>
    </body>