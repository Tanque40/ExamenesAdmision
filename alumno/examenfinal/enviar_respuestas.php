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

for ($i=0; $i < 15; $i++) {
    printf("%s    %s   <br>", $folio_preguntas[$i], $folios_respuestas[$i]);
}


$link = mysqli_connect("localhost", "phpmyadmin", "Bruno0400", "phpmyadmin");
mysqli_query($link, "SET NAMES 'utf8'");


if (mysqli_connect_errno()) {
   printf("Falló la conexión: %s <br>", mysqli_connect_error());
   exit();
}

for ($i=0; $i < 15; $i++) {
    $prueba = "INSERT INTO Respuestas_alumno VALUES ('$folio_alumno','$folio_preguntas[$i]','$folios_respuestas[$i]')";
    if(!mysqli_query($link, $prueba)){
    printf("Error en la pregunta %d \n Errormessage: %s\n", ($i+1),mysqli_error($link));
    }
    else{
        printf("Enviada la respuesta %s <br>", $i+1);
    }
}
mysqli_close($link);
printf("Se le redireccinara en un momento, ha terminado la evaluación");
header("refresh: 5.0; url=../../index.html");
?>
