<?php
	include 'plantilla.php';
	require 'conexion.php';

	$folio = $_GET['grupo'];
	$query = "SELECT * FROM alumnos WHERE grupo = $folio ORDER BY Apellido_P ASC";
	$resultado = $con->query($query);
	$pdf = new PDF();
	$pdf->AliasNbPages();
	$pdf->AddPage();

	$pdf->SetFillColor(232,232,232);
	$pdf->SetFont('Arial','B',12);
	$pdf->SetY(40);
	$pdf->Cell(120,0, 'Grupo: '.$folio,0,0,'C');
	$pdf->Ln(10);
	$pdf->Cell(38,6,'Matricula',1,0,'C',1);
	$pdf->Cell(49,6,'Apellido Paterno',1,0,'C',1);
	$pdf->Cell(49,6,'Apellido Materno',1,0,'C',1);
	$pdf->Cell(40,6,'Puntaje',1,1,'C',1);
	//$pdf->Cell(150,6,'Respuesta dada',1,1,'C',1);


	$pdf->SetFont('Arial','',10);

	while($row = $resultado->fetch_assoc())
	{
        $pdf->Cell(38,6,utf8_decode($row['Folio']),1,0,'C',1);
    	$pdf->Cell(49,6,utf8_decode($row['Apellido_P']),1,0,'C',1);
    	$pdf->Cell(49,6,utf8_decode($row['Apellido_M']),1,0,'C',1);

        $fol = $row['Folio'];
        $puntaje = 0;
        $at = $con->query("SELECT * FROM calificacion WHERE folio_alumno = '$fol' AND puntuacion = '1'");
        $puntaje = mysqli_num_rows($at);


    	$pdf->Cell(40,6,utf8_decode($puntaje),1,1,'C',1);
        $fol = 0;
        $puntaje = 0;
        $at = "";
	}

	$pdf->Output();
?>
