<?php
include 'conexion.php';
$num = $_POST['numero'];
$pregunta = $_POST['pregunta'];
$rescor = $_POST['rc'];
$resin = $_POST['ri'];
$resin2 = $_POST['ri2'];
$resin3 = $_POST['ri3'];
$materia = "default";

$s = $con->query("SELECT * FROM secciones");
$number = mysqli_num_rows($s);
if ($num>$number) {
  header('location: alerta.php?mensaje=Ingrese una seccion valida&p=seccion&t=error');
}else{
  $seccion = "Seccion ".(string)$num;
  $last = $con->query("SELECT last FROM secciones WHERE seccion = '$seccion'");
  $user = $last->fetch_assoc();
  $id = $user['last'];
  $id += 1;
  echo $id;
  $id_materia = (string)$num."000";
  if (!isset($POST['archivo'])) {
    $directorio = '../alumno/examenfinal/images';
    $nombreArchivo = $_FILES['archivo']['name'];
    $nombreTmpArchivo = $_FILES['archivo']['tmp_name'];
    $nombreabase = 'images/'.$nombreArchivo;
    move_uploaded_file($nombreTmpArchivo, "$directorio/$nombreArchivo");
      if ($con->query("INSERT INTO Materias (Id_pregunta, Id_materia, Materia, Pregunta, Respuesta_correcta, Respuesta_inc_1, Respuesta_inc_2, Respuesta_inc_3, imagen) VALUES ($id, '$id_materia', '$seccion', '$pregunta', '$rescor', '$resin', '$resin2', '$resin3', '$nombreabase')")) {
          header('location: alerta.php?mensaje=Pregunta insertada correctamente&p=anade&t=success');
      }else{
        echo "Error", mysqli_error($con);
      }

  }else{
    $insertar = $con->query("INSERT INTO materias (Id_pregunta, Id_materia, Materia, Pregunta, Respuesta_correcta, Respuesta_inc_1, Respuesta_inc_2, Respuesta_inc_3) VALUES ($id, '$id_materia', '$materia', '$pregunta', '$rescor', '$resin', '$resin2', '$resin3')");
    header('location: alerta.php?mensaje=Pregunta insertada correctamente&p=anade&t=success');
  }
  $act = $con->query("UPDATE secciones SET last = $id WHERE seccion = '$seccion'");
}






?>
