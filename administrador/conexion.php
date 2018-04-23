<?php  @session_start();
  $con = mysqli_connect('localhost', 'root', '', 'dev_examen');
  $r = $con->query("SET NAMES utf8");
 ?>
