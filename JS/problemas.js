function validar(a){
    var teclado = (document.all)?a.KeyCode:a.which;
    if(teclado == 8)return true; 

    var patron = /[0-9\d .]/;

    var prueba = String.fromCharCode(teclado);
    return patron.test(prueba);
}

function interes(){
    var valor = document.formulario.cantidad.value;
    var valor2 = document.formulario.mes.value;
    var result = parseInt(valor);
    var result2 = parseInt(valor2);
    var interes = result*0.02*result2;
    var total = result+interes;

    document.formulario.sueldot.value = "$"+total;
}

function borrar(){
    document.formulario.cantidad.value = "";
    document.formulario.mes.value = "";
    document.formulario.sueldot.value = "";
}

