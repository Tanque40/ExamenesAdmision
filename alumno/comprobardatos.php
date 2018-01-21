<?php
$link = mysqli_connect("localhost", "phpmyadmin", "Bruno0400", "phpmyadmin");
mysqli_query($link, "SET NAMES 'utf8'");

/* comprobar la conexión */
if (mysqli_connect_errno()) {
   printf("Falló la conexión: %s <br>", mysqli_connect_error());
   exit();
}
  $folio = $_REQUEST['folio_usado'];
  $prueba = "SELECT a.*, t.*, d.* FROM Alumnos a, Tutor t, Direccion d where a.Folio = '$folio' and t.Folio = '$folio' and d.Folio = '$folio'";
  if(mysqli_multi_query($link, $prueba)){
    do {
      if ($resul = mysqli_use_result($link)) {
        while ($fila = mysqli_fetch_row($resul)) {
          echo json_encode(array('folio' => "$fila[0]",'nombre' => "$fila[1]", 'apellido_p' => "$fila[2]", 'apellido_m' => "$fila[3]", 'folio_tut' => "$fila[4]", 'nombre_tut' => "$fila[5]", 'apellido_tut_p' => "$fila[6]", 'apellido_tut_m' => "$fila[7]", 'correo_tut' => "$fila[8]", 'telefono_casa' => "$fila[9]", 'telefono_celular' => "$fila[10]", 'folio_direccion' => "$fila[11]", 'calle' => "$fila[12]", 'numero' => "$fila[13]", 'colonia' => "$fila[14]", 'municipio' => "$fila[15]", 'estado' => "$fila[16]"));
        }
        mysqli_free_result($resul);
      }
      if(mysqli_more_results($link)){
        printf("----------------\n");
      }
    } while (mysqli_next_result($link));
  }
  else{
  printf("Errormessage: %s\n", mysqli_error($link));
  }

mysqli_close($link);
 ?>
