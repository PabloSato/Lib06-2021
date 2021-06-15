<!DOCTYPE html>

<head>
    <title>BIBLIOTECA | LIBROS</title>
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
                    <li><a href="../index.php#libros">home</a></li>
                    <li><a href="javascript:history.go(-1)">volver</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <!---------------------------------------------------------------------------CONTENIDO-->
    <section class="fondo_claro">
       <div class="conte">
            <div class="buscador">
               <input type="text" id="myInput"  onkeyup="myfunction()" placeholder="buscar libro..."
                      title="Type in a name" autofocus>
           </div>
            <hr>
            <div class="gal_total" id="myUL">
                <?php include '../inc/libros.php';?>
            </div>
            
        </div>

    </section>
    <script>
        function showTtl(id){document.getElementById(id).style.display="block";}
    </script>
    <script>
        function hideTtl(id){document.getElementById(id).style.display="none";}
    </script>
    <script>
        function myfunction(){
            var input, filter, ul, li, a , i, txtValue;
            input = document.getElementById('myInput');
            filter = input.value.toUpperCase();
            ul = document.getElementById('myUL');
            li = document.getElementsByClassName('gal_libros');
            for(i = 0; i<li.length; i++){
                a = li[i].getElementsByTagName("h5")[0];
                txtValue = a.textContent || a.innerText;
                if(txtValue.toUpperCase().indexOf(filter) > -1){
                    li[i].style.display = "";
                } else {
                    li[i].style.display = "none";
                }
                }
            }
        }
    </script>
    </body>