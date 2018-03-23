<?php
  include 'conexion.php';
  $numero = $_POST['npreguntas'];
  $q = $con->query("SELECT * FROM secciones");
  $num = mysqli_num_rows($q);
  $num += 1;
  $seccion = "Seccion ".(string)$num;
  $last = $num*1000;
  $insertar = $con->query("INSERT INTO secciones VALUES ('$seccion', $numero, $last)");
  if ($insertar) {
    header('location: alerta.php?mensaje=Se ha ingresado correctamente&p=adseccion&t=success');
  }else{
    header('location: alerta.php?mensaje=Ha ocurrido un error&p=adseccion&t=error');
  }
?>
