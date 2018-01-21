<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="../images/logo.png">
    <title>Plantel Azteca</title>
    <link type="text/css" rel="stylesheet" href="../materialize/css/materialize.min.css"  media="screen,projection"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style media="screen">
        .espacio-izquierda{
            margin-left: 10px;
        }
        .carousel .carousel-item{
            width:100%;
            height: 150%;
        }
    </style>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../materialize/js/materialize.min.js"></script>
<script type="text/javascript">
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
$(document).ready(function(){
    var folio_use = getParameterByName('folio');
    $.get("comprobardatos.php",{folio_usado: folio_use}, function(data){
        $("#lol").val(data.error);
        $("#_folio").val(data.folio);
        $("#nombre").val(data.nombre);
        $("#apellido_paterno").val(data.apellido_p);
        $("#apellido_materno").val(data.apellido_m);
        $("#nombre_tutor").val(data.nombre_tut);
        $("#apellido_paterno_tutor").val(data.apellido_tut_p);
        $("#apellido_tutor_materno").val(data.apellido_tut_m);
        $("#correo_tutor").val(data.correo_tut);
        $("#telefono_de_casa").val(data.telefono_casa);
        $("#telefono_celular_tut").val(data.telefono_celular);
        $("#Calle").val(data.calle);
        $("#numero_de_casa").val(data.numero);
        $("#Colonia").val(data.colonia);
        $("#Delegacion").val(data.municipio);
        $("#Estado").val(data.estado);
  }, "json" );
  $("input").prop('disabled', true);
});
function continuar(){
    window.location.href = "examen/index.html";
}
</script>
<body>
    <center>
        <ul id="tabs-swipe-demo" class="tabs">
            <li class="tab col s3"><a class="active" href="#test-swipe-1">Datos Alumno</a></li>
            <li class="tab col s3"><a href="#test-swipe-2">Datos Tutor</a></li>
            <li class="tab col s3"><a href="#test-swipe-3">Dirección</a></li>
        </ul>
    </center>
    <div id="test-swipe-1">
        <div class="container">
            <div class="row">
                <div class="col s12">
                    <div class="card">
                        <div class="card-content">
                            <span class="card-title center">Datos del alumno</span>
                            <div class="text-">
                                <label for="_folio">Folio:</label>
                                <input type="text" name="_folio" id="_folio" value="">
                                <label for="nombre">Nombre:</label>
                                <input type="text" name="nombre" id="nombre" value="">
                                <label for="apellido_paterno">Apellido paterno:</label>
                                <input type="text" name="apellido_paterno" id="apellido_paterno" value="">
                                <label for="apellido_materno">Apellido Materno:</label>
                                <input type="text" name="apellido_materno" id="apellido_materno" value="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="test-swipe-2">
        <div class="container" id="test-swipe-2">
            <div class="row">
                <div class="col s12">
                    <div class="card">
                        <div class="card-content">
                            <span class="card-title center">Datos tutor</span>
                            <label for="nombre_tutor">Nombre:</label>
                            <input type="text" name="nombre_tutor" id="nombre_tutor" value="">
                            <div class="col s6">
                                <label for="apellido_paterno_tutor">Apellido Paterno:</label>
                                <input type="text" name="apellido_paterno_tutor" id="apellido_paterno_tutor" value="">
                            </div>
                            <div class="col s6">
                                <label for="apellido_tutor_materno">Apellido Materno:</label>
                                <input type="text" name="apellido_tutor_materno" id="apellido_tutor_materno" value="">
                            </div>
                            <label for="correo_tutor">Correo:</label>
                            <input type="text" name="correo_tutor" id="correo_tutor" value="">
                            <label for="telefono_de_casa">Teléfono de casa:</label>
                            <input type="text" name="telefono_de_casa" id="telefono_de_casa" value="">
                            <label for="telefono_celular_tut">Teléfono celular:</label>
                            <input type="text" name="telefono_celular_tut" id="telefono_celular_tut" value="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="test-swipe-3">
        <div class="container" id="test-swipe-3">
            <div class="row">
                <div class="col s12">
                    <div class="card">
                        <div class="card-content">
                            <span class="card-title center">Direccion</span>
                            <label for="Calle">Calle:</label>
                            <input type="text" name="Calle" id="Calle" value="">
                            <label for="numero_de_casa">Numero:</label>
                            <input type="text" name="numero_de_casa" id="numero_de_casa" value="">
                            <label for="Colonia">Colonia:</label>
                            <input type="text" name="Colonia" id="Colonia" value="">
                            <label for="Delegacion">Delegacion/Municipio:</label>
                            <input type="text" name="Delegacion" id="Delegacion" value="">
                            <label for="Estado">Estado:</label>
                            <input type="text" name="Estado" id="Estado" value="">
                            <div class="input-field">
                                <center>
                                <button class="btn waves-effect waves-light #e53935 red darken-1" type="button" name="action">Confirmar
                                    <i class="material-icons right">send</i>
                                 </button>
                                 </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function(){
            $('ul.tabs').tabs({
                swipeable : true
            });
        });

    </script>
</body>
</html>
