folios_preguntas = [];
usados = [];
usados2 = [];
folios_para_usar = [];
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
var folio_use;
function aleatorio(min, max){
    while(repe != false){
        var num = Math.floor(Math.random()*(max-min+1))+min;
        var repe = repetido(num);
    }
    usados.push(num);
    return num;
}
var conteo = 0;
function aleatorio2(min, max){
    while(repe2 != false){
        var num2 = Math.floor((Math.random()*(max-min+1))+min);
        var repe2 = repetido2(num2);
    }
    usados2.push(num2);
    conteo += 1;
    if (conteo == 4) {
        usados2.splice(0, 4);
        conteo = 0;
    }
    return num2;
}
function repetido(num){
    var repe = false;
    for (var i = 0; i< usados.length; i++){
        if(num == usados[i]){
            repe = true
        }
    }
    return repe;
}
function repetido2(num2){
    var repe2 = false;
    for (var i = 0; i< usados2.length; i++){
        if(num2 == usados2[i]){
            repe2 = true;
        }
    }
    return repe2;
}
//Con esta funcion generaremos lo folios aleatorios por materia
function obtener_folios(rango, numero_preguntas) {
    for (var i = 0; i < numero_preguntas; i++) {
        //El regiustro entra directo a los folios finales de preguntas a realizar
        folios_preguntas.push(aleatorio(rango[0], rango[rango.length-1]));
        console.log(folios_preguntas);
    }
}
function separar_folios(folios){
    //La intencion de la funcion es separar en grupos de folios los folios ya recibidos
    //Comenzamos inicializando un array vacio el cual nos servirá de auxiliar para ir llenando un arreglo mas grande
    x = []
    //El primer ciclo irá avanzando dependiendo el tamaño de los folios que recibieron
    for (var i = 0; i < folios.length; i++) {
        //Primero para asegurar que no sea el ultimo elemento del array
        if(folios[i] == folios[folios.length-1]){
            //En caso de serlo se añadirá al elemento de array que ya esta desarrollado
            x.push(parseInt(folios[i]));
            //Una vez agregado tambien se añadirá al arreglo final
            folios_para_usar.push(x)
        }
        else {
            //En caso contrario se checa que los folios sean iguales, pertenezcan a la misma base todos en 1000 o 2000 etc
            if (folios[i][0] == folios[i+1][0]) {
                    //En caso de serlo se agrega el numero a nuestro arreglo auxiliar convirtiendolo a entero
                    x.push(parseInt(folios[i]));
            }
            else{
                //Y si no son iguales significa que es el ultimo elemento de nuestro grupo de folios
                //Por lo que hay que cerrar nuestro array auxiliar y añadir todos los elementos a el array de folios finales
                x.push(parseInt(folios[i]));
                folios_para_usar.push(x);
                //Reiniciamos el array auxiliar
                x = [];
            }
        }
    }
}
//Hemos mandado por url el numero de folios totales que tiene el arreglo de folios de preguntas
num_folios = getParameterByName('num_folios');
//Obtenemos el array de folios de modo STRING
folios_disponibles = getParameterByName('folios_preguntas');
//Separamos lo folios del string y los volvemos un mismo arreglo
folios_disponibles_final = folios_disponibles.split(",", num_folios);
//Pasamos a la funcion los elemento de los folios que recibimos de URL
separar_folios(folios_disponibles_final);
//Solo para asegurarnos que todo haya salido correcto
console.log(folios_para_usar);
z = 0;
//Una vez qu el documento haya cargado lo básico procederá con lo siguiente:
$(document).ready(function(){
    //Indicamos el folio del alumno
    folio_use = getParameterByName('folio');
    //Cantidad de elementos que tiene el arreglo de materias-no.preguntas
    elementos = getParameterByName('ele');
    //Se obtiene un string con toda la info de materias-no.preguntas
    materias = getParameterByName('info');
    //Se crea el arreglo separando por "," y en un maximo de elementos
    para_usar = materias.split(",", elementos);
    //Añadiremos cada folio con un ciclo el cual mandará el numero de preguntas por materia
    // y mandara el rango de folios
    //Nos llevara un contador muy necesario
    k = 0
    for (var i = 0; i < para_usar.length; i+=2) {
        obtener_folios(folios_para_usar[k], para_usar[i+1]);
        k += 1;
    }
    //Añadimos un input oculto para tener el folio donde se van a guardar
    $(".card").append('<div class="input-field hide"><input type="text" name="folio" value="'+folio_use+'"></div>');
    //Funcion en JQuery que manda a llamar un archivo php, le pasamos variables desde las sentencias {}
    $.get("pruebas.php", {folios: folios_preguntas},function(data){
        //Si llega a haber errores se mostrara un mensaje
        if(data.error){
            window.alert(data.mensaje);
        }
        else {
            k = 0;
            //Comenzaremos un ciclo que se repetira el mismo numero de veces que las materias que haya
            for (var i = 0; i < para_usar.length/2; i++) {
                //tambien por fuera iniciamos un contador que va a llevar todas las preguntas
                para_usar[i]
            }
        }
    }, "json");
    //$('ul.tabs').tabs();
});
