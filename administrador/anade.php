<?php
include 'conexion.php';
$num = $_POST['numero'];
$pregunta = $_POST['pregunta'];
$rescor = $_POST['rc'];
$resin = $_POST['ri'];
$resin2 = $_POST['ri2'];
$resin3 = $_POST['ri3'];
$materia = $_POST['materias'];

$s = $con->query("SELECT * FROM secciones");
$number = mysqli_num_rows($s);

 /* $seccion = "Seccion_".(string)$num;
  $last = $con->query("SELECT last FROM secciones WHERE seccion = '$seccion'");
  $user = $last->fetch_assoc();
  $id = $user['last'];
  $id += 1;
  echo $id;*/
  $section = "Sección_".(string)$num;
  $data = $con->query("SELECT * FROM secciones WHERE seccion = '$section'");
  $seccion = "Sección_".(string)$num;

  $ndata = $con->query("SELECT * FROM materias WHERE Materia = '$seccion'");
  $nnn = mysqli_num_rows($ndata)+1;

  //$row = $cons->fetch_assoc();
  $imprimir = $data->fetch_assoc();

  $idred = $imprimir['id'];

  $id_materia = (string)$idred;
  $idred += 1;

  $idr = (string)$idred;
  //echo $idr;
  $isd = array();
 for ($i=0; $i < strlen($idr) ; $i++) { 
   # code...
   # echo $idr[$i];
   array_push($isd, $idr[$i]);
 }

  $m = (string)$materia;

  if ($nnn<10) {
    $r1 = array(1 => $m[0], 2 => $m[1], 6 => $nnn);
  }else{
    $fnumber = (string)$nnn;
    $r1 = array(1 => $m[0], 2 => $m[1], 5 => $fnumber[0], 6 => $fnumber[1]);    
  }
  

  $idd = array_replace($isd, $r1);
  $prueba = "";
  for ($i=0; $i < count($idd); $i++) { 
    # code...
    echo $idd[$i];
    echo "<br>";
    $prueba.=$idd[$i];
  }

  echo $prueba;
  $id = $prueba;




  if (!isset($POST['archivo'])) {
    $directorio = '../alumno/examenfinal/images';
    $nombreArchivo = $_FILES['archivo']['name'];
    $nombreTmpArchivo = $_FILES['archivo']['tmp_name'];
    $nombreabase = 'images/'.$nombreArchivo;
    move_uploaded_file($nombreTmpArchivo, "$directorio/$nombreArchivo");
      if ($con->query("INSERT INTO materias (Id_pregunta, Id_materia, Materia, Pregunta, Respuesta_correcta, Respuesta_inc_1, Respuesta_inc_2, Respuesta_inc_3, imagen) VALUES ($id, '$id_materia', '$seccion', '$pregunta', '$rescor', '$resin', '$resin2', '$resin3', '$nombreabase')")) {
          header('location: alerta.php?mensaje=Pregunta insertada correctamente&p=anade&t=success');
      }else{
        echo "Error", mysqli_error($con);
      }

  }else{
    $insertar = $con->query("INSERT INTO materias (Id_pregunta, Id_materia, Materia, Pregunta, Respuesta_correcta, Respuesta_inc_1, Respuesta_inc_2, Respuesta_inc_3) VALUES ($id, '$id_materia', '$materia', '$pregunta', '$rescor', '$resin', '$resin2', '$resin3')");
    header('location: alerta.php?mensaje=Pregunta insertada correctamente&p=anade&t=success');
  }
  $act = $con->query("UPDATE secciones SET last = $id WHERE seccion = '$seccion'");







?>
