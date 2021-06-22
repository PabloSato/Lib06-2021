<?php
include '../inc/conexion.php';

$sqLeyendo="SELECT leyendo.id_book, leyendo.total AS paginas, leyendo.act_pag,
            libro.titulo, libro.portada
            FROM leyendo
            INNER JOIN libro
            ON leyendo.id_book = libro.id";
$consultaLeyendo = mysqli_query($con, $sqLeyendo);
$numLey = mysqli_num_rows($consultaLeyendo);
$max = 4;
if($max<5){
    $max = true;
}
if($numLey>0){
    if($numLey > 3){
        $max = 3;
    }else{
        $max = $numLey;
    }
    for($i = 0; $i < $max; $i++){
        $num =$i+1;
        $filaLeyendo = mysqli_fetch_array($consultaLeyendo);
        $id_book = $filaLeyendo["id_book"];
        $tot = $filaLeyendo["paginas"];
        $actual = $filaLeyendo["act_pag"];
        $book = $filaLeyendo["titulo"];
        $cover = $filaLeyendo["portada"];
            //AUTOR
        $sqlAutLeyendo= "SELECT autor.alias, autor.id AS id_autor
                        FROM autor
                        INNER JOIN libro_autor
                        ON autor.id = libro_autor.id_autor
                        WHERE libro_autor.id_libro = $id_book";
        $conAutLeyendo = mysqli_query($con, $sqlAutLeyendo);
        $filaAutorLeyendo = mysqli_fetch_array($conAutLeyendo);
        $nombreAutor = $filaAutorLeyendo["alias"];
        $idAutor = $filaAutorLeyendo["id_autor"];
            //PORCENTAJE
        $porcen = round(($actual/$tot)*100);?>
        <div class="read_book">
            <a href="detalle/detalleLibro.php?id=<?=$id_book?>"><img src="actbbdd/uploads/<?=$cover?>" alt="<?=$book?>"></a>
           <div class="info" id="box_<?=$num?>">
                <h5><a href="detalle/detalleLibro.php?id=<?=$id_book?>"><?=$book?></a></h5>
                <p>de <span><a href="detalle/detalleAutor.php?id=<?=$idAutor?>"><?=$nombreAutor?></a></span></p>
                <progress value="<?=$actual?>" max="<?=$tot?>"></progress>
                <p><code><?=$actual?>/<?=$tot?> (<?=$porcen?>%)</code></p>
                <div class="btn open" id="btn_<?=$num?>"><a>actualizar</a></div>
            </div>
            <div class="update" id="pop-up<?=$num?>">
                <h5>Actualiza tu progreso</h5>
                <div class="up_data">
                    <form method="post" enctype="multipart/form-data" action="actbbdd/updateLeyendo.php">
                        <label>Página</label>
                        <input type="number" name="progress" placeholder="<?=$actual?>">
                        <label>de <?=$tot?></label>
                        <br>
                        <input type="hidden" id="id_book" name="id_book" value="<?=$id_book?>">
                        <input type="submit" value="actualiar" id="pop-out<?=$num?>">
                        <div class="close" id="popout<?=$num?>">cerrar</div>
                        
                    </form>
                </div>
            </div>
        </div>
    <?php
    }
    if($numLey>3){?>
        <div class="more">
            <div class="btn" id="more"><a>ver todo</a></div>
        </div>
   <?php }
    }else{
?><li>No hay registros</li><?php
}
?>