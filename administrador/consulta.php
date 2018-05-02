<?php
	include 'conexion.php';
	$grado = $_POST['grado'];
	$ngrado = $grado-1;
	$consulta = $con->query("SELECT * FROM matg WHERE grado = $ngrado");
	$array = array();
	while ($row = $consulta->fetch_assoc()) {
		$materia = $row['materia'];
		$id = $row['id'];
		array_push($array, $materia, $id);
		$materia = "";
		$id = 0;
	}
	echo json_encode($array);
?>