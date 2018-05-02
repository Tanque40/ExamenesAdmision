<?php
include 'conexion.php';
if (!isset($_SESSION['user'])) {
	header('location: index.php');
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Administrador</title>
	<meta charset="utf-8">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<style media="screen">
	 html {
	font-family: GillSans, Calibri, Trebuchet, sans-serif;
  }
	.button-collapse{
		display: none;
	}
		header, main, footer {
	  padding-left: 300px;
	}

	@media only screen and (max-width : 992px) {
	  header, main, footer {
		padding-left: 0;
	  }
	  .button-collapse{
		display: inherit;
	}
	}
	</style>
</head>
<body>


<main>

	  <nav class="#455a64 blue-grey darken-2">
		<div class="nav-fixed">
		  <img src="images/logo.png" class="brand-logo right circle" width="80px" height="65px">
		  <a href="#" class="brand-logo center">PREGUNTAS</a>
		</div>
	  </nav>



		<div class="container">
			<div class="row">
				<div class="col s12">
					<div class="card">
						<div class="card-content">
					<span class="card-title">Ingresar nueva pregunta</span>
					<form class="formulario" action="anade.php" method="post" enctype="multipart/form-data">
					 <div class="input-field">  
					   <input type="number" name="numero" min="0">
					   <label for="numero">Ingrese la sección</label>
					 </div>
					 <div class="input-field">
						<select name="grade" id="grade">
							<option value="" disabled selected>Selecciona el grado</option>
							<option value="1">1° de secundaria</option>
							<option value="2">2° de secundaria</option>
							<option value="3">3° de secundaria</option>
							<option value="4">1° semestre</option>
							<option value="5">2° semestre</option>
							<option value="6">3° semestre</option>
							<option value="7">4° semestre</option>
							<option value="8">5° semestre</option>
							<option value="9">6° semestre</option>
						</select>
						<label>Selecciona una opción</label>
					 </div>
					 <div>
					 	<select name="materias" id="materias" class="browser-default">
							<option value="" disabled selected>Selecciona la materia</option>
						</select>
					 </div>
					 <div class="input-field">
					   <input type="text" name="pregunta" id="pregunta" required>
					   <label for="pregunta">Ingresa la pregunta</label>
					 </div>
					 <div class="input-field">
					   <input type="text" name="rc" id="rc" required>
					   <label for="rc">Ingresa la respuesta correcta</label>
					 </div>
					 <div class="input-field">
					   <input type="text" name="ri" id="ri" required>
					   <label for="ri">Ingresa la respuesta incorrecta 1</label>
					 </div>
					 <div class="input-field">
					   <input type="text" name="ri2" id="ri2" required>
					   <label for="ri2">Ingresa la respuesta incorrecta 2</label>
					 </div>
					 <div class="input-field">
					   <input type="text" name="ri3" id="ri3" required>
					   <label for="ri3">Ingresa la respuesta incorrecta 3</label>
					 </div>
										 <div class="file-field input-field">
										 <div class="btn #1565c0 blue darken-3">
											 <span>Imágen</span>
											 <i class="material-icons right">attach_file</i>
											 <input type="file" name="archivo" >
										 </div>
										 <div class="file-path-wrapper">
											 <input class="file-path validate" type="text" placeholder="Subir archivo" name="archivo">
										 </div>
									 </div>

					 <center>
					 <button class="btn waves-effect waves-light" type="submit" name="action">Añadir
						<i class="material-icons right">note_add</i>
					  </button></center>
					</form>
					<br>
					<center><a href="pdf2.php" class="btn-floating btn-large waves-effect waves-light red" target="_blank" ><i class="material-icons">picture_as_pdf</i></a></center>
						</div>
					</div>
				</div>
			</div>
		</div>



		<ul id="slide-out" class="side-nav fixed">
			<li><div class="user-view">
			  <div class="background">
				<img src="images/fondo.jpg">
			  </div>
			  <a><img  src="images/avatar.png" width="100px" height="100px"></a>
			  <a><span class="white-text name">Usuario: <?php echo $_SESSION['user'] ?></span></a>
			  <a><span class="white-text email">Tipo de cuenta: Administrador</span></a>
			</div></li>

				<li><a href="index.php"><i class="material-icons">home</i>Inicio</a></li>
			<li><a href="materias.php"><i class="material-icons">create</i>Secciones</a></li>
			<li><a href="preguntas.php"><i class="material-icons">assignment</i>Preguntas</a></li>
			<li><a href="aspirantes.php"><i class="material-icons">assignment_ind</i>Aspirantes</a></li>
			<li><a href="../calificar/calif.html"><i class="material-icons">assessment</i>Calificar</a></li>
				<?php
					$consulta = $con->query("SELECT * FROM calificacion");
					$resultados = mysqli_num_rows($consulta);
					if ($resultados < 1) {
				 ?>
					<li><a disabled><i class="material-icons">assignment_ind</i>Resultados</a></li>
			 <?php }else{?>
					<li><a href="resultados.php"><i class="material-icons">assignment_ind</i>Resultados</a></li>
			 <?php } ?>
			 	<li><a href="resp.php">Resultados P</a></li>

				<li><a href="logout.php"><i class="material-icons">exit_to_app</i>Salir del sistema</a></li>

			<li><div class="divider"></div></li>
			<center><p><i class="material-icons">settings</i></p><p>ADMINISTRADOR</p></center>
		</ul>
		<a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
 </div>
</main>
<script type="text/javascript">
$(document).ready(function() {
$('select').material_select();
});
</script>

<script>
	$("#grade").change(function() {
		grado = document.getElementById('grade').value;
		seleccion = document.getElementById('materias');
		$.post('consulta.php', {grado: grado}, function(data, textStatus, xhr) {
			console.log(data);
			ids = new Array();
			for (var x = 1; x < data.length; x+= 2) {
				ids.push(data[x]);
			}
			console.log(ids);
			materias = new Array();
			for (var y = 0; y < data.length; y+= 2) {
				materias.push(data[y]);
			}
			console.log(materias);
			for (var i = 0; i < data.length/2 ; i++) {
		        seleccion.options[i+1] = new Option(materias[i], ids[i]);
		    }
		}, 'json');
	});
</script>
</body>
</html>
