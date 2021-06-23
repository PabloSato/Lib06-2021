<?php
include '../inc/conexion.php';

//TODOS LOS LIBROS QUE SE ESTÁN LEYENDO
$sqLeyendo_total = "SELECT leyendo.id_book, leyendo.total, leyendo.act_pag, leyendo.inicio,
                    libro.id, libro.titulo, libro.portada,
                    libro_autor.id_autor, libro_autor.id_libro,
                    autor.id AS idAutor, autor.alias AS autor
                    FROM leyendo
                    INNER JOIN libro
                    ON leyendo.id_book = libro.id
                    INNER JOIN libro_autor
                    ON libro_autor.id_libro = leyendo.id_book
                    INNER JOIN autor
                    ON autor.id = libro_autor.id_autor
                    ORDER BY leyendo.inicio DESC";
$consu_ley_total = mysqli_query($con, $sqLeyendo_total);
$totalLib = mysqli_num_rows($consu_ley_total);
if($totalLib>0){
    for($i = 0; $i < $totalLib; $i++){
        $libro = mysqli_fetch_array($consu_ley_total);?>
        <div class="libro">
            <img src="../actbbdd/uploads/<?=$libro["portada"]?>">
                        <div class="data">
                            <h5><a href="../detalle/detalleLibro.php?id=<?=$libro["id_book"]?>"><?=$libro["titulo"]?></a></h5>
                            <p>de <span><a href="../detalle/detalleAutor.php?id=<?=$libro["id_autor"]?>"><?=$libro["autor"]?></a></span></p>
                            <?php $por = round(($libro["act_pag"]/$libro["total"]*100));?>
                            <progress value="<?=$libro["act_pag"]?>" max="<?=$libro["total"]?>"></progress>
                            <p><code><?=$libro["act_pag"]?>/<?=$libro["total"]?> (<?=$por?>%)</code></p>
                                <div class="up_data">
                                    <form method="post" enctype="multipart/form-data" action="../actbbdd/updateLeyendo.php">
                                        <label>Página</label>
                                        <input type="number" name="progress" placeholder="" value="<?=$libro["act_pag"]?>">
                                        <label>de <?=$libro["total"]?></label>
                                        <br>
                                        <?php $dia = date_create($libro["inicio"]); $mes = date_create($libro["inicio"]);  ?>
                                        <label>Empezado el día <span><?= date_format($dia, "d")?></span> de <span><?= date_format($mes, "F") ?></span></label>
                                        <br>
                                        <div class="btns">
                                            <input type="submit" value="actualizar">
                                            <input type="button" value="terminé" class="fin">
                                            <input type="button" value="dejar de leer" class="out">
                                        </div>
                                    </form>
                                </div>
                        </div>
                    </div><?php
    }
}else{
?><li>No hay registros</li><?php
}
?>