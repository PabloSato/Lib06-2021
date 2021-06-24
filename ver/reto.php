<!DOCTYPE html>

<head>
    <title>BIBLIOTECA</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="../css/style_sect.css" rel="stylesheet" type="text/css">
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
                    <li><a href="../index.php#libros">home</a></li>
                    <li><a href="#libros">añadir</a></li>
                </ul>
            </nav>
    </header>
    <section class="fondo_claro">
        <div class="conte">
            <div class="reto">
                <div class="year">
                    <img src="../img/TIPOS-DE-lectura.jpeg">
                    <div class="info_reto">
                        <h3>Reto 2021</h3>
                        <div class="data_reto">
                            <div class="lista">
                                <ul>
                                    <li>Reto: <span>25</span> Libros</li>
                                    <li>Leidos: <span>8</span> Libros</li>
                                    <li><progress value="8" max="25"></progress> 8/25 (32%)</li>
                                </ul>
                            </div>
                            <div class="lista" id="box_1">
                                <ul>
                                    <li>Ritmo esperado: <span>2</span> libros al Mes</li>
                                    <li>Status: <span>3</span> libros <span>atrasado</span></li>
                                    <li class="lista_btns">
                                        <div class="btn open" id="btn_1"><a>actualizar</a></div>
                                        <div class="btn"><a href="#">ver libros</a></div>
                                    </li>
                                </ul>
                            </div>
                            <div class="lista_update" id="pop-up1">
                                <div class="up_data">
                                    <form>
                                        <input type="number" name="progress" value="8">
                                        <label>Libros</label>
                                        <br>
                                        <div class="lista_btns">
                                            <input type="submit" value="actualiar" id="pop-out1">
                                            <input type="button" value="cerrar" id="popout1">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="year">
                <img src="../img/TIPOS-DE-lectura.jpeg">
                <div class="info_reto">
                    <h3>Reto 2020</h3>
                    <div class="data_reto">
                        <div class="lista">
                            <ul>
                                <li>Reto: <span>20</span> Libros</li>
                                <li>Leidos: <span>21</span> Libros</li>
                                <li><progress value="21" max="20"></progress> 21/20 (105%)</li>
                            </ul>
                        </div>
                        <div class="lista" id="box_1">
                            <ul>
                                <li>Ritmo esperado: <span>1.5</span> libro al Mes</li>
                                <li>Status: <span>1</span> libro <span>adelantado</span></li>
                                <li class="lista_btns">
                                    <div class="btn open" id="btn_1"><a>actualizar</a></div>
                                    <div class="btn"><a href="#">ver libros</a></div>
                                </li>
                            </ul>
                        </div>
                        <div class="lista_update" id="pop-up1">
                            <div class="up_data">
                                <form>
                                    <input type="number" name="progress" value="8">
                                    <label>Libros</label>
                                    <br>
                                    <div class="lista_btns">
                                        <input type="submit" value="actualiar" id="pop-out1">
                                        <input type="button" value="cerrar" id="popout1">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </section>
    <!--JAVASCRIPT!!------------*********************************************************-->
    <script type="text/javascript" src="../css/functions.js"></script>
</body>