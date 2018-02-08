<?php
include '../../conexion.php';

/* comprobar la conexión */
if (mysqli_connect_errno()) {
    $error=mysqli_connect_error();
    echo json_encode(array('mensaje' => "Falló la conexión: $error", 'error' => "True"));
    exit();
}

$folios = $_REQUEST['folios'];
$array = array();

for ($i=0; $i < count($folios); $i++) {
    $prueba = "SELECT * FROM Materias WHERE Id_pregunta = '$folios[$i]'";
    if(mysqli_multi_query($link, $prueba)){
        do{
            if ($resul = mysqli_use_result($link)) {
                while ($fila = mysqli_fetch_row($resul)) {
                    array_push($array,array("$fila[0]","$fila[1]","$fila[2]","$fila[3]", "$fila[4]", "$fila[5]", "$fila[6]", "$fila[7]"));
                }
                mysqli_free_result($resul);
            }
            if(mysqli_more_results($link)){
                printf("----------------\n");
            }
        }while (mysqli_next_result($link));
    }
    else{
        $error = mysqli_error($link);
        echo json_encode(array('mensaje' => $error, 'error' => "True"));
        printf("Errormessage: %s\n", mysqli_error($link));
    }
}

echo json_encode($array);
mysqli_close($link);
?>
