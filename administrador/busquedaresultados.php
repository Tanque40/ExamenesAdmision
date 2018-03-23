<?php
include 'conexion.php';
$salida = "";
$query = "SELECT * FROM Alumnos";
if (isset($_POST['consulta'])) {
  $q = $con ->real_escape_string($_POST['consulta']);
  $query = "SELECT * FROM alumnos WHERE Folio LIKE '%".$q."%' OR Nombre LIKE '%".$q."%' OR Apellido_P LIKE '%".$q."%' OR Apellido_M LIKE '%".$q."%'";
}
$resultado = $con->query($query);
if ($resultado->num_rows > 0) {
  $salida.= "  <table class='excel' border='1'>
                    <thead>
                      <th>Folio</th>
                      <th>Nombre</th>
                      <th>Apellido Paterno</th>
                      <th>Apellido Materno</th>
                      <th>Puntaje</th>
                      <th>Opciones</th>
                    </thead>
                    <tbody>";
                    while ($user = $resultado->fetch_assoc()) {
                        $folio = $user['Folio'];
                        $puntaje = $con ->query("SELECT puntuacion FROM calificacion WHERE folio_alumno = '$folio' AND puntuacion = '1'"); 
                        $punt = mysqli_num_rows($puntaje);
                        $salida.= "<tr>
                          <td>".$user['Folio']."</td>
                          <td>".$user['Nombre']."</td>
                          <td>".$user['Apellido_P']."</td>
                          <td>".$user['Apellido_M']."</td>
                          <td>".$punt."</td>
                          <td><a href='vermas.php?folio=".$user['Folio']."'target='_blank'>Ver más</a></td>
                        </tr>";
                    }
                    $salida.= "</tbody></table>";
}else{
  $salida.= "No se encontraron resultados ):";
}
echo $salida;
$con -> close();
 ?>
