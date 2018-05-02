<?php
  include 'conexion.php';
  $opcion = $_POST['selgra'];
  $periodo = $_POST['periodo'];
  $numero = $_POST['npreguntas'];

  $grado = $_POST['grade'];

  

  if ($opcion == 1) {
    $turno = "matutino";
  }

  if ($opcion == 2) {
    $turno = "vespertino";
  }

  if ($opcion == 3) {
    $turno = "admision";
  }

  if ($opcion == 4) {
    $turno = "pruebas";
  }


  $pfinal = $con->query("SELECT * FROM division_examen WHERE grado = '$grado' AND turno = '$turno'");
  $row = $pfinal -> fetch_assoc();

  $ppfinal = (int)$row['p_final']+100;

  $nuevo = $con->query("UPDATE division_examen SET p_final = $ppfinal WHERE grado = '$grado' AND turno = '$turno'");



  $query = $con->query("SELECT * FROM secciones");
  $num = mysqli_num_rows($query)+2;
  $seccion = "Sección_".(string)$num;

  $id = (string)$opcion."00".(string)$periodo.(string)$num."00";


  $registro = $con->query("INSERT INTO secciones VALUES ($id, '$seccion', $numero, $id)");
  if ($registro) {
     header('location: alerta.php?mensaje=Se ha creado con exito&p=adseccion&t=success');
  }else{
    header('location: alerta.php?mensaje=Ha ocurrido un error&p=adseccion&t=error');
  }
?>
