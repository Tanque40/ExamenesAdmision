folios_preguntas = [[1001, 1002, 1003, 1004, 1005], [2001, 2002, 2003, 2004, 2005], [3001, 3002, 3003, 3004, 3005], [4001, 4002, 4003, 4004, 4005], [5001, 5002, 5003, 5004, 5005]];
usados = [];
usados2 = [];
folios_para_usar = [];
id_general = ["espanol_exa", "mate_exa", "ciencias_exa", "historia_exa", "geografia_exa"];
id_especifico = [];
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
function obtener_folios() {
    for (var i = 0; i < folios_preguntas.length; i++) {
        for (var k = 0; k < 3; k++) {
            folios_para_usar.push(aleatorio(folios_preguntas[i][0], folios_preguntas[i][4]));
            //console.log(folios_para_usar.toString());
        }
    }
}
z = 0;
$(document).ready(function(){
    obtener_folios();
    folio_use = getParameterByName('folio');
    $(".card").append('<div class="input-field hide"><input type="text" name="folio" value="'+folio_use+'"></div>');
    $.get("pruebas.php", {folios: folios_para_usar},function(data){
        if(data.error){
            window.alert(data.mensaje);
        }
        else {
            $(".card-title").text("Materia: "+data[0].Materia);
        }
    }, "json" );
});
