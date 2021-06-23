<!DOCTYPE html>
<head>
    <title>BIBLIOTECA - LEYENDO</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
    <!---------------------------------------------------------------------------CABECERA-->
    <header>
        <!--<div class="up"><div class="gen"><a href="#">Misterio</a></div></div>-->
        
            <div id="logo">
                <h2>BIBLIOTECA</h2>
            </div>
            <nav>
                <ul>
                    <li><a href="../index.php">home</a></li>
                    <li><a href="javascript:history.go(-1)">volver</a></li>
                </ul>
            </nav>
    </header>
    <section class="fondo_claro">
            <div class="conte">
                <h2>LEYENDO</h2>
                <hr>
                <div class="uno">
                    <?php include '../inc/leyendoLibros.php'; ?>
                </div>
            </div>
    </section>
</body>