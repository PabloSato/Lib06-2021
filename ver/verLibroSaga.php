<?php
include '../inc/conexion.php';
$id="";
if(isset($_GET["id"])){
    $id = $_GET["id"];
    $sql_sag = "SELECT saga.id_saga, saga.nombre AS saga, saga.imagen,
                coleccion.nombre AS col_name, coleccion.id AS id_col
                FROM saga
                INNER JOIN coleccion
                ON saga.coleccion = coleccion.id
                WHERE id_saga = $id";
    $consulta_sag = mysqli_query($con, $sql_sag);
    $filaS = mysqli_fetch_array($consulta_sag);
    $saga = $filaS["saga"];
    $col = $filaS["col_name"];
    $id_saga = $filaS["id_saga"];
    $id_col = $filaS["id_col"];
}
?>
<!DOCTYPE html>
<head>
    <title>BIBLIOTECA | <?=$saga?></title>
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
                <h2><?=$col?> - <?=$saga?></h2>
            </div>
            <nav>
                <ul>
                    <li><a href="verLibroColec.php?id=<?=$id_col?>">ir a <?=$col?></a></li>
                    <li><a href="javascript:history.go(-1)">volver</a></li>
                </ul>
            </nav>
        </div>
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
                <?php include '../inc/libroSaga.php' ?>
           </ul>
            
        </div>

    </section>
    <script>
        function showTtl(id){document.getElementById(id).style.display="block";}
    </script>
    <script>
        function hideTtl(id){document.getElementById(id).style.display="none";}
    </script>
    <script>
        function myFunction(){
            var input, filter, ul, li, a, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            ul = document.getElementById("myUL");
            li = ul.getElementsByTagName("li");
            for(i = 0; i< li.length; i++){
                a = li[i].getElementsByTagName("a")[0];
                txtValue = a.textContent || a.innerText;
                if(txtValue.toUpperCase().indexOf(filter) > -1){
                    li[i].style.display = "";
                }else{
                    li[i].style.display = "none";
                }
            }
        }
    </script>
    </body>