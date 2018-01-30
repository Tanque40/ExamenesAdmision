<?php
    $link = mysqli_connect("localhost", "root", "contraseña", "phpmyadmin");
    mysqli_query($link, "SET NAMES 'utf8'");
 ?>
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
</head>
<body>
    <?php
    /* Comprobamos la conexión*/
    if (mysqli_connect_errno()):?>
        <script type="text/javascript">
           <?php $error = mysqli_connect_error(); ?>
           window.alert("<?php echo $error; ?>");
        </script>
    <?php endif; ?>
        
</body>
</html>
