<?php
 include '../inc/conexion.php';

 $nombre = $_POST["nombre"];
 $apellidos = $_POST["apellidos"];
 $alias = $_POST["alias"];
 $bio = $_POST["bio"];
 $dibu = $_POST["dibu"];
 
 $sql_autor = "SELECT * FROM autor WHERE alias = '$alias'";
 $consulta_autor = mysqli_query($con, $sql_autor);
 $nfilas = mysqli_num_rows($consulta_autor);
 if($nfilas > 0){
     header("location:../add.php?mng=1");
 }else{
    
//EXTRAEMOS LA INFO DE LA FOTO Y GUARDAMOS EN VARIABLES
$foto_name = $_FILES["foto"]["name"];
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["foto"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));


// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
  $check = getimagesize($_FILES["foto"]["tmp_name"]);
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
  $foto_name."_".time()."_".$nombre;
  $uploadOk = 1;
}

// Check file size
if ($_FILES["foto"]["size"] > 50000000) {
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
  if (move_uploaded_file($_FILES["foto"]["tmp_name"], $target_file)) {
    echo "The file ". htmlspecialchars( basename( $_FILES["foto"]["name"])). " has been uploaded.";
    if($dibu == 'si'){
     $sql_autor = "INSERT INTO autor(nombre, apellidos, alias, bio, foto, fecha, dibujante) VALUES('$nombre','$apellidos','$alias','$bio','$foto_name', NOW(), 1)";
     header("location:../add/addAutor.php?mng=2");
    }else{
     $sql_autor = "INSERT INTO autor(nombre, apellidos, alias, bio, foto, fecha) VALUES('$nombre','$apellidos','$alias','$bio','$foto_name', NOW())";
     $consulta_autor = mysqli_query($con, $sql_autor) or die ("Error al insertar en BBDD");
     header("location:../add/addAutor.php?mng=2");
    }
  } else {
    echo "Sorry, there was an error uploading your file!!.";
  }
}
 }

