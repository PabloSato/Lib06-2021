
<!DOCTYPE html>
<head>
    <title>BIBLIOTECA | AUTORES</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
    <!---------------------------------------------------------------------------CABECERA-->
    <header>
        
            <div id="logo">
                <h2>BIBLIOTECA</h2>
            </div>
            <nav>
                <ul>
                    <li><a href="../index.php#autores">home</a></li>
                    <li><a href="javascript:history.go(-1)">volver</a></li>
                </ul>
            </nav>
        
    </header>
    <section class="fondo_claro">
        <div class="conte">
            <div class="buscador">
               <input type="text" id="myInput" placeholder="buscar autor..." onkeyup="myFunction()"
                      title="Type in a name" autofocus>
           </div>
            <hr>
            <ul class="gal_total" id="myUL">
                <?php include '../inc/autores.php';?>
            </ul>
            
        </div>
    </section>
    </body>
    <script type="text/javascript" src="../javascript/funciones.js"></script>
        
</html>
