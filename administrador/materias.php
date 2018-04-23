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
	      <a href="#" class="brand-logo center">Secciones</a>
	    </div>
	  </nav>

		<br>

	  	<div class="container">
		  	<div class="row">
		  		<div class="col s12">
		  			<div class="card">
		  				<div class="card-content">
								<div class="row">
									<div class="col s12">
										<ul class="tabs">
											<li class="tab col s3"><a class="active" href="#test4">Secciones</a></li>
											<li class="tab col s3"><a href="#test1">Agregar sección</a></li>
											<li class="tab col s3"><a href="#test2">Modificar preguntas</a></li>
										</ul>
									</div>
									<div class="col s12" id = "test4">
										<?php
											$q = $con->query("SELECT * FROM secciones");
										?>
										<span class="card-title center">Secciones</span>
										<table class="striped">
							        <thead>
							          <tr>
							              <th>Sección</th>
							              <th>Número de preguntas</th>
							          </tr>
							        </thead>

							        <tbody>
												<?php while ($user = mysqli_fetch_array($q)) {?>
	                        <tr>
	                          <td><?php echo $user['seccion']; ?></td>
	                          <td><?php echo $user['no_preguntas']; ?></td>
														<td><a target="_blank" href="verp.php?seccion=<?php echo $user['seccion']; ?>">Ver preguntas</a></td>
														<td><a href="alertaseliminar.php?delete=<?php echo $user['seccion'];?>">Eliminar sección</a></td>
	                        </tr>
	                      <?php } ?>
							        </tbody>
							     </table>
									</div>
									<div id="test1" class="col s12">
										<span class="card-title center">Agregar sección</span>
										<form class="section" action="addsection.php" method="post">
												<div class="input-field">
													<i class="material-icons prefix">format_list_numbered</i>
													<input type="number" name="npreguntas" min="0" max="99">
													<label for="npreguntas">Ingresa el número de preguntas que aparecerán en la sección</label>
												</div>
												<div class="center">
													<button class="btn waves-effect waves-light" type="submit" name="action">Registrar
														<i class="material-icons right">send</i>
													</button>
												</div>
										</form>
									</div>
									<div id="test2" class="col s12">
										<span class="card-title center">Modificar preguntas</span>
										<form class="formulario" action="modify.php" method="post">
											<div class="input-field">
												<i class="material-icons prefix">assignment</i>
												<input type="number" name="nseccion" min="0">
												<label for="nseccion">Ingresa el número de sección</label>
											</div>
											<div class="input-field">
												<i class="material-icons prefix">format_list_numbered</i>
												<input type="number" name="nuevo" min="0" max="99">
												<label for="nuevo">Ingresa el nuevo número de preguntas que aparecerán en la sección</label>
											</div>
											<div class="center">
												<button class="btn waves-effect waves-light" type="submit" name="action">Editar
													<i class="material-icons right">send</i>
												</button>
											</div>
										</form>
									</div>
								</div>
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
				<li><a href="logout.php"><i class="material-icons">exit_to_app</i>Salir del sistema</a></li>

		    <li><div class="divider"></div></li>
		    <center><p><i class="material-icons">settings</i></p><p>ADMINISTRADOR</p></center>
 		</ul>
  		<a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
 </div>
</main>
<script>
	$("#vp").click(function(){
		window.location.href = "preguntas/verp.html";
	});
	$(document).ready(function(){
	 $('ul.tabs').tabs();
 });

</script>
</body>
</html>
