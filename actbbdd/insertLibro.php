<?php
include '../inc/conexion.php';

$mgn = "";
$error = "";

//INFO DEL LIBRO
$titulo = $_POST["titulo"];
$paginas = $_POST["paginas"];
$idioma = $_POST["idioma"];
$leido = $_POST["leido"];
//$coleccion = $_POST["coleccion"];//---------------
$tomoCol = $_POST["tomoCol"];
$saga = $_POST["saga"];
$tomoSag = $_POST["tomoSag"];
$ubicacion = $_POST["ubicacion"];
$estanteria = $_POST["estanteria"];
$balda = $_POST["balda"];
$sinopsis=$_POST["sinopsis"];

//INFO DEL AUTOR
$alias_autor = $_POST["autor"];
$sql_idAutor = "SELECT * FROM autor WHERE alias = '$alias_autor'";
$consu_idAutor = mysqli_query($con, $sql_idAutor);
$result_idAutor = mysqli_fetch_array($consu_idAutor);
$autor = $result_idAutor["id"];
$alias_autor2 = $_POST["autor2"];
$sql_idAutor2 = "SELECT * FROM autor WHERE alias = '$alias_autor2'";
$consu_idAutor2 = mysqli_query($con, $sql_idAutor2);
$result_idAutor2 = mysqli_fetch_array($consu_idAutor2);
$autor2 = $result_idAutor2["id"];

//INFO COLECCIÓN
$col_form = $_POST["coleccion"];
$sql_colecion = "SELECT * FROM coleccion WHERE nombre = '$col_form'";
$consu_col = mysqli_query($con, $sql_colecion);
$result_col = mysqli_fetch_array($consu_col);
$coleccion = $result_col["id"];

//INFO SAGA
$saga_form = $_POST["saga"];
$sql_saga = "SELECT * FROM saga WHERE nombre = '$saga_form'";
$consu_saga = mysqli_query($con, $sql_saga);
$result_saga = mysqli_fetch_array($consu_saga);
$saga = $result_saga["id"];

//GENERO
$genero = $_POST["genero"];
$genero2 = $_POST["genero2"];
$genero3 = $_POST["genero3"];

//INFO DIBUJANTE
$dibu = $_POST["dibujante"];
if($leido == "si"){
    $leido = 1;
}else if($leido==""){
    $leido = 0;
}
//No pregunams si ya existe, porque podemos tener libros repetidos. ESTO HAY QUE MIRAR COMO CORREGIRLO

//portada
$foto_name = $_FILES["portada"]["name"];
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["portada"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
  $check = getimagesize($_FILES["portada"]["tmp_name"]);
  if($check !== false) {
    echo "File is an image - " . $check["mime"] . ".";
    $uploadOk = 1;
  } else {
    echo "File is not an image.";
    $uploadOk = 0;
  }
}

// Check if file already exists
if (file_exists($target_file)) {
  $foto_name."_".time()."_".$titulo;
  $uploadOk = 1;
}

// Check file size
if ($_FILES["portada"]["size"] > 5000000000) {
  echo "Sorry, your file is too large.";
  $uploadOk = 0;
}

// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
  echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
  $uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
  echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
  if (move_uploaded_file($_FILES["portada"]["tmp_name"], $target_file)) {
    echo "The file ". htmlspecialchars( basename( $_FILES["portada"]["name"])). " has been uploaded.";
    if(($coleccion != "") &&($tomoCol != "") && ($saga != "") && ($tomoSag != "")){
     $sql_autor = "INSERT INTO libro(titulo, paginas, idioma, leido, coleccion, saga, ubicacion, estanteria, balda, portada, fecha, sinopsis) VALUES('$titulo',$paginas, $idioma, $leido, $coleccion, $saga, '$ubicacion', '$estanteria', $balda, '$foto_name', NOW(), '$sinopsis')";
     $consulta_libro = mysqli_query($con, $sql_autor) or die ("Error al insertar en BBDD 1 ");
     $sql_ID = "SELECT id FROM libro WHERE fecha = (SELECT max(fecha) FROM libro)";
     $consulID = mysqli_query($con, $sql_ID);
     $resultadoID= mysqli_fetch_array($consulID);
     $id_libro = $resultadoID["id"];
     $sql_libAutor = "INSERT INTO libro_autor(id_autor, id_libro) VALUES($autor,$id_libro)";
     $consulta_autor = mysqli_query($con, $sql_libAutor) or die ("Error al insertar en BBDD aqui autor");
     if($autor2 != ""){ 
        $sql_libAutor2 = "INSERT INTO libro_autor(id_autor, id_libro) VALUES($autor2,$id_libro)";
        $consulta_autor2 = mysqli_query($con, $sql_libAutor2) or die ("Error al insertar en BBDD aqui autor2");
     }
     if($dibu != ""){
     $sql_libAutor3 = "INSERT INTO libro_dibujante(id_autor,id_dibujante, id_libro) VALUES($autor,$dibu,$id_libro)";
     $consulta_autor3 = mysqli_query($con, $sql_libAutor3) or die ("Error al insertar en BBDD aqui autor3");   
     }
     $sql_genero = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero)";
     $consulta_genero = mysqli_query($con, $sql_genero);
     if($genero2 != ""){
         $sql_genero2 = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero2)";
         $consulta_genero = mysqli_query($con, $sql_genero2);
     }
     if($genero3 != ""){
         $sql_genero3 = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero3)";
         $consulta_genero = mysqli_query($con, $sql_genero3);
     }
     $sql_libBalda = "INSERT INTO libro_balda(balda, libro) VALUES ($balda, '$titulo')";
     $consulta_balda = mysqli_query($con, $sql_libBalda) or die ("Error al insertar en BBDD aqui balda");
     $sql_toCol = "INSERT INTO tomoCol(numero, id_coleccion, libro) VALUES ($tomoCol, $coleccion, '$titulo')";
     $consulta_toCol = mysqli_query($con, $sql_toCol) or die ("Error al insertar en BBDD aqui toCol");
     $sql_toSag = "INSERT INTO tomoSag(numero, id_saga, libro) VALUES ($tomoSag, $saga, '$titulo')";
     $consulta_toSa = mysqli_query($con, $sql_toSag) or die ("Error al insertar en BBDD aqui toSag");
     header("location:../add/addLibro.php?mng=2");
    }else if (($coleccion != "") && ($tomoCol == "") && ($saga != "") && ($tomoSag != "")){
     $sql_autor = "INSERT INTO libro(titulo, paginas, idioma, leido, coleccion, saga, ubicacion, estanteria, balda, portada, fecha, sinopsis) VALUES('$titulo',$paginas, $idioma, $leido, $coleccion, $saga, '$ubicacion', '$estanteria', $balda, '$foto_name', NOW(), '$sinopsis')";
     $consulta_libro = mysqli_query($con, $sql_autor) or die ("Error al insertar en BBDD 1-5");
     $sql_ID = "SELECT id FROM libro WHERE fecha = (SELECT max(fecha) FROM libro)";
     $consulID = mysqli_query($con, $sql_ID);
     $resultadoID= mysqli_fetch_array($consulID);
     $id_libro = $resultadoID["id"];
     $sql_libAutor = "INSERT INTO libro_autor(id_autor, id_libro) VALUES($autor,$id_libro)";
     $consulta_autor = mysqli_query($con, $sql_libAutor) or die ("Error al insertar en BBDD aqui autor");
     if($autor2 != ""){ 
        $sql_libAutor2 = "INSERT INTO libro_autor(id_autor, id_libro) VALUES($autor2,$id_libro)";
        $consulta_autor2 = mysqli_query($con, $sql_libAutor2) or die ("Error al insertar en BBDD aqui autor2");
     }
     $sql_genero = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero)";
     $consulta_genero = mysqli_query($con, $sql_genero);
     if($genero2 != ""){
         $sql_genero2 = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero2)";
         $consulta_genero = mysqli_query($con, $sql_genero2);
     }
     if($genero3 != ""){
         $sql_genero3 = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero3)";
         $consulta_genero = mysqli_query($con, $sql_genero3);
     }
     if($dibu != ""){
     $sql_libAutor3 = "INSERT INTO libro_dibujante(id_autor,id_dibujante, id_libro) VALUES($autor,$dibu,$id_libro)";
     $consulta_autor3 = mysqli_query($con, $sql_libAutor3) or die ("Error al insertar en BBDD aqui autor3");   
     }
     $sql_libBalda = "INSERT INTO libro_balda(balda, libro) VALUES ($balda, '$titulo')";
     $consulta_balda = mysqli_query($con, $sql_libBalda) or die ("Error al insertar en BBDD aqui balda");
     $sql_toSag = "INSERT INTO tomoSag(numero, id_saga, libro) VALUES ($tomoSag, $saga, '$titulo')";
     $consulta_toSa = mysqli_query($con, $sql_toSag) or die ("Error al insertar en BBDD aqui toSag");
     header("location:../add/addLibro.php?mng=2");
        
    }else if(($coleccion != "") && ($tomoCol != "") && ($saga == "")){
     $sql_autor = "INSERT INTO libro(titulo, paginas, idioma, leido, coleccion, ubicacion, estanteria, balda, portada, fecha, sinopsis) VALUES('$titulo',$paginas, $idioma, $leido, $coleccion, '$ubicacion', '$estanteria', $balda, '$foto_name', NOW(), '$sinopsis')";
     $consulta_libro = mysqli_query($con, $sql_autor) or die ("Error al insertar en BBDD 2 ");
     $sql_ID = "SELECT id FROM libro WHERE fecha = (SELECT max(fecha) FROM libro)";
     $consulID = mysqli_query($con, $sql_ID);
     $resultadoID= mysqli_fetch_array($consulID);
     $id_libro = $resultadoID["id"];
     $sql_libAutor = "INSERT INTO libro_autor(id_autor, id_libro) VALUES($autor,$id_libro)";
     $consulta_autor = mysqli_query($con, $sql_libAutor) or die ("Error al insertar en BBDD aqui! autor $autor");
     if($autor2 != ""){ 
        $sql_libAutor2 = "INSERT INTO libro_autor(id_autor, id_libro) VALUES($autor2,$id_libro)";
        $consulta_autor2 = mysqli_query($con, $sql_libAutor2) or die ("Error al insertar en BBDD aqui autor2");
     }
     if($dibu != ""){
     $sql_libAutor3 = "INSERT INTO libro_dibujante(id_autor,id_dibujante, id_libro) VALUES($autor,$dibu,$id_libro)";
     $consulta_autor3 = mysqli_query($con, $sql_libAutor3) or die ("Error al insertar en BBDD aqui autor3");   
     }
     $sql_genero = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero)";
     $consulta_genero = mysqli_query($con, $sql_genero);
     if($genero2 != ""){
         $sql_genero2 = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero2)";
         $consulta_genero = mysqli_query($con, $sql_genero2);
     }
     if($genero3 != ""){
         $sql_genero3 = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero3)";
         $consulta_genero = mysqli_query($con, $sql_genero3);
     }
     $sql_libBalda = "INSERT INTO libro_balda(balda, libro) VALUES ($balda, '$titulo')";
     $consulta_balda = mysqli_query($con, $sql_libBalda) or die ("Error al insertar en BBDD aqui balda");
     $sql_toCol = "INSERT INTO tomoCol(numero, id_coleccion, libro) VALUES ($tomoCol, $coleccion, '$titulo')";
     $consulta_toCol = mysqli_query($con, $sql_toCol) or die ("Error al insertar en BBDD aqui toCol");
     header("location:../add/addLibro.php?mng=2");
    }else if(($coleccion != "") && ($tomoCol == "")){
     $sql_autor = "INSERT INTO libro(titulo, paginas, idioma, leido, coleccion, ubicacion, estanteria, balda, portada, fecha, sinopsis) VALUES('$titulo',$paginas, $idioma, $leido, $coleccion, '$ubicacion', '$estanteria', $balda, '$foto_name', NOW(), '$sinopsis')";
     $consulta_libro = mysqli_query($con, $sql_autor) or die ("Error al insertar en BBDD 3");
     $sql_ID = "SELECT id FROM libro WHERE fecha = (SELECT max(fecha) FROM libro)";
     $consulID = mysqli_query($con, $sql_ID);
     $resultadoID= mysqli_fetch_array($consulID);
     $id_libro = $resultadoID["id"];
     $sql_libAutor = "INSERT INTO libro_autor(id_autor, id_libro) VALUES($autor,$id_libro)";
     $consulta_autor = mysqli_query($con, $sql_libAutor) or die ("Error al insertar en BBDD aqui! autor $autor");
     if($autor2 != ""){ 
        $sql_libAutor2 = "INSERT INTO libro_autor(id_autor, id_libro) VALUES($autor2,$id_libro)";
        $consulta_autor2 = mysqli_query($con, $sql_libAutor2) or die ("Error al insertar en BBDD aqui autor2");
     }
     if($dibu != ""){
     $sql_libAutor3 = "INSERT INTO libro_dibujante(id_autor,id_dibujante, id_libro) VALUES($autor,$dibu,$id_libro)";
     $consulta_autor3 = mysqli_query($con, $sql_libAutor3) or die ("Error al insertar en BBDD aqui autor3");   
     }
     $sql_genero = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero)";
     $consulta_genero = mysqli_query($con, $sql_genero);
     if($genero2 != ""){
         $sql_genero2 = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero2)";
         $consulta_genero = mysqli_query($con, $sql_genero2);
     }
     if($genero3 != ""){
         $sql_genero3 = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero3)";
         $consulta_genero = mysqli_query($con, $sql_genero3);
     }
     $sql_libBalda = "INSERT INTO libro_balda(balda, libro) VALUES ($balda, '$titulo')";
     $consulta_balda = mysqli_query($con, $sql_libBalda) or die ("Error al insertar en BBDD aqui balda");
    header("location:../add/addLibro.php?mng=2");
    }else if($coleccion == ""){
     $sql_autor = "INSERT INTO libro(titulo, paginas, idioma, leido, ubicacion, estanteria, balda, portada, fecha, sinopsis) VALUES('$titulo',$paginas, $idioma, '$leido', '$ubicacion', '$estanteria', $balda, '$foto_name', NOW(), '$sinopsis')";
     $consulta_libro = mysqli_query($con, $sql_autor) or die ("Error al insertar en BBDD 4");
     $sql_ID = "SELECT id FROM libro WHERE fecha = (SELECT max(fecha) FROM libro)";
     $consulID = mysqli_query($con, $sql_ID);
     $resultadoID= mysqli_fetch_array($consulID);
     $id_libro = $resultadoID["id"];
     $sql_libAutor = "INSERT INTO libro_autor(id_autor, id_libro) VALUES($autor,$id_libro)";
     $consulta_autor = mysqli_query($con, $sql_libAutor) or die ("Error al insertar en BBDD aqui autor");
     if($autor2 != ""){ 
        $sql_libAutor2 = "INSERT INTO libro_autor(id_autor, id_libro) VALUES($autor2,$id_libro)";
        $consulta_autor2 = mysqli_query($con, $sql_libAutor2) or die ("Error al insertar en BBDD aqui autor2");
     }
     if($dibu != ""){
     $sql_libAutor3 = "INSERT INTO libro_dibujante(id_autor,id_dibujante, id_libro) VALUES($autor,$dibu,$id_libro)";
     $consulta_autor3 = mysqli_query($con, $sql_libAutor3) or die ("Error al insertar en BBDD aqui autor3");   
     }
     $sql_genero = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero)";
     $consulta_genero = mysqli_query($con, $sql_genero);
     if($genero2 != ""){
         $sql_genero2 = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero2)";
         $consulta_genero = mysqli_query($con, $sql_genero2);
     }
     if($genero3 != ""){
         $sql_genero3 = "INSERT INTO libro_generos (id_libro, id_genero) VALUES ($id_libro, $genero3)";
         $consulta_genero = mysqli_query($con, $sql_genero3);
     }
     $sql_libBalda = "INSERT INTO libro_balda(balda, libro) VALUES ($balda, '$titulo')";
     $consulta_balda = mysqli_query($con, $sql_libBalda) or die ("Error al insertar en BBDD aqui balda");
     header("location:../add/addLibro.php?mng=2");
    }
  } else {
    echo "Sorry, there was an error uploading your file!!.";
    header("location:../add/addLibro.php?mng=1");
  }
}
