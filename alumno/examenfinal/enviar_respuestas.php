<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="shortcut icon" href="../images/logo.png">
	<title>Evaluación</title>
	<meta charset="utf-8">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="../materialize/css/materialize.min.css"  media="screen,projection"/>
    <link rel="stylesheet" href="css/estilos.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2"></script>
</head>
<body>
<?php
$folio_preguntas = array();
$folios_respuestas = array();
$folio_alumno = $_POST['folio'];
$folio_preguntas[0] = $_POST['folio_pregunta_0'];
$folios_respuestas[0] = $_POST['espanol_exa0'];
$folio_preguntas[1] = $_POST['folio_pregunta_1'];
$folios_respuestas[1] = $_POST['espanol_exa1'];
$folio_preguntas[2] = $_POST['folio_pregunta_2'];
$folios_respuestas[2] = $_POST['espanol_exa2'];
$folio_preguntas[3] = $_POST['folio_pregunta_3'];
$folios_respuestas[3] = $_POST['mate_exa0'];
$folio_preguntas[4] = $_POST['folio_pregunta_4'];
$folios_respuestas[4] = $_POST['mate_exa1'];
$folio_preguntas[5] = $_POST['folio_pregunta_5'];
$folios_respuestas[5] = $_POST['mate_exa2'];
$folio_preguntas[6] = $_POST['folio_pregunta_6'];
$folios_respuestas[6] = $_POST['ciencias_exa0'];
$folio_preguntas[7] = $_POST['folio_pregunta_7'];
$folios_respuestas[7] = $_POST['ciencias_exa1'];
$folio_preguntas[8] = $_POST['folio_pregunta_8'];
$folios_respuestas[8] = $_POST['ciencias_exa2'];
$folio_preguntas[9] = $_POST['folio_pregunta_9'];
$folios_respuestas[9] = $_POST['historia_exa0'];
$folio_preguntas[10] = $_POST['folio_pregunta_10'];
$folios_respuestas[10] = $_POST['historia_exa1'];
$folio_preguntas[11] = $_POST['folio_pregunta_11'];
$folios_respuestas[11] = $_POST['historia_exa2'];
$folio_preguntas[12] = $_POST['folio_pregunta_12'];
$folios_respuestas[12] = $_POST['geografia_exa0'];
$folio_preguntas[13] = $_POST['folio_pregunta_13'];
$folios_respuestas[13] = $_POST['geografia_exa1'];
$folio_preguntas[14] = $_POST['folio_pregunta_14'];
$folios_respuestas[14] = $_POST['geografia_exa2'];

$respuestas = array();
$opcion = array();
$combinaciones = array("_a", "_b", "_c", "_d");
/*55234776*/
for ($i=0; $i < 15; $i++) {
    for($k = 0; $k < strlen($folios_respuestas[$i]); $k++){
        if($folios_respuestas[$i][$k] == '_'){
            $opcion[$i] = $folios_respuestas[$i][$k+1];
            $respuestas[$i] = str_replace($combinaciones, "", $folios_respuestas[$i]);
        }
    }
}

$link = mysqli_connect("localhost", "phpmyadmin", "Bruno0400", "phpmyadmin");
mysqli_query($link, "SET NAMES 'utf8'");


if (mysqli_connect_errno()) {
   printf("Falló la conexión: %s <br>", mysqli_connect_error());
   exit();
}

for ($i=0; $i < 15; $i++) {
    $prueba = "INSERT INTO Respuestas_alumno VALUES ('$folio_alumno','$folio_preguntas[$i]', '$opcion[$i]','$respuestas[$i]')";
    if(!mysqli_query($link, $prueba)){
    printf("Error en la pregunta %d \n Errormessage: %s\n", ($i+1),mysqli_error($link));
    }
}
mysqli_close($link);
?>
<script type="text/javascript">
    swal("Buen trabajo!", "Haz completado la prueba, en un momento se te redireccionará", "success");
</script>
<?php
header("refresh: 5.0; url=../../index.html");
 ?>
</body>
</html>
