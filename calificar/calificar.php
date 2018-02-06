<?php
    $link = mysqli_connect("localhost", "root", "bvitte18", "phpmyadmin");
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
           window.alert("<?php echo $error; ?>, SE TE REDIRECCIONARÁ EN UN MOMENTO");
        </script>

    <?php
    header("refresh: 5.0; url=../index.html");
    endif; ?>
    <div class="container">
        <div class="card white">
            <div class="card-content black-text">
                <span class="card-title">Proceso de calificado (Al finalizar, dar click en el boton "Aceptar")</span>
                <table>
                    <thead>
                        <tr>
                            <th>Folio de alumno</th>
                            <th>Folio de pregunta calificada</th>
                            <th>Correcta / Incorrecta</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $consulta_BD = "SELECT * FROM Respuestas_alumno";
                        if($respuesta = mysqli_multi_query($link, $consulta_BD)):?>
                            <?php $numero_de_filas = mysqli_num_rows($respuesta);
                            $resul = mysqli_use_result($link);
                            for ($i=0; $i < $numero_de_filas; $i++):?>
                                <tr>
                                    <?php $z = 0;
                                    while(($fila = mysqli_fetch_row($resul)) && ($z < 3) ):?>
                                        <th><?php echo $fila[$z];?></th>
                                        <?php $z++ ; ?>
                                    <?php endwhile; ?>
                                </tr>
                            <?php endfor; ?>
                            <?php mysqli_free_result($resul);
                            mysqli_close($link);?>
                        <?php else: ?>
                            <?php $error = mysqli_error($link); ?>
                            <script type="text/javascript">
                                window.alert("<?php echo $error; ?>, SE TE REDIRECCIONARÁ EN UN MOMENTO");
                            </script>
                            <?php header("refresh: 6.0; url=../index.html"); ?>
                        <?php endif; ?>
                    </tbody>
                </table>
                <div class="card-action">
                    <div class="input-field">
                        <center>
                            <a href="../index.html">
                                <button class="btn waves-effect waves-light blue">
                                    Aceptar<i class="material-icons right">send</i>
                                </button>
                            </a>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
