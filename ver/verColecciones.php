 
<!DOCTYPE html>
<head>
    <title>BIBLIOTECA | COLECCIONES</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
    <!---------------------------------------------------------------------------CABECERA-->
    <header>
        <div class="cabecera">
            <div id="logo">
                <h2>BIBLIOTECA</h2>
            </div>
            <nav>
                <ul>
                    <li><a href="../index.php#libros">home</a></li>
                    <li><a href="../add/addColeccion.php">añadir</a></li>
                    <li><a href="javascript:history.go(-1)">volver</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <section class="fondo_claro">
        <div class="conte">
            <div class="buscador">
               <input type="text" id="myInput" placeholder="buscar coleccion..." onkeyup="myFunction()"
                      title="Type in a name" autofocus>
           </div>
            <hr>
            <ul class="gal_total_colec" id="myUL">
                <?php include '../inc/colecciones.php';?>
            </ul>
            
        </div>
    </section>
    </body>
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
</html>
