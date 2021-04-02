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

function validars(v){
    var teclado = (document.all)?v.KeyCode:v.which;
    if(teclado==8)return true;

    var patron = /[0-9\d .]/;
    
    var prueba = String.fromCharCode(teclado);
    return patron.test(prueba)
}

function CalcularComisionYSalario(){
    var valorcom = document.formulario2.ventas.value;
    var result = parseInt(valorcom);
    var comisiones = result*0.10;
    var total = comisiones;
    var valorsal = document.formulario2.salario.value;
    var result = parseInt(valorsal);
    var salariot = result+total;

    document.formulario2.salariot.value = "$"+salariot;
    
    document.formulario2.comisiones.value = "$"+total;
}

function borrar2(){
    document.formulario2.salario.value = "";
    document.formulario2.ventas.value = "";
    document.formulario2.comisiones.value = "";
    document.formulario2.salariot.value = "";
}

function validard(d){
    var tecalado = (document.all)?d.KeyCode:d.which;
    if(tecalado == 8)return true;

    var patron = /[0-9\d .]/;
    
    var prueva = String.fromCharCode(tecalado);
    return patron.test(prueva);
}

function CalcularDescuento(){
    var valor = document.formulario3.compra.value;
    var result = parseInt(valor);
    var descuento = result*0.15
    var descuentot = descuento;
    var descuentoa = valor-descuentot;

    document.formulario3.descuento.value = "$"+descuentot;
    document.formulario3.pagar.value = "$"+descuentoa;

}

function borrar3(){
    document.formulario3.compra.value = "";
    document.formulario3.descuento.value = "";
    document.formulario3.pagar.value = "";
}

function ValidarCal(d){
   
    var tecalado = (document.all)?d.KeyCode:d.which;
    if(tecalado == 8)return true;

    var patron = /[0-9\d .]/;
    
    var prueva = String.fromCharCode(tecalado);
    return patron.test(prueva);    
}

function CalcularCal(){
    var valor = document.formulario4.calificaciones.value;
    var valorp = parseFloat(valor);

    if(valorp > 100){
        alert("Escribe solo numeros entre 0 al 100");
        document.formulario4.calificaciones.focus();
        return false;
    }

    var calfp = valorp*0.55

    var valorexamen = document.formulario4.examen.value;
    var valorexamenp = parseFloat(valorexamen);

    if(valorexamenp > 100){
        alert("Escribe solo numeros entre 0 al 100");
        document.formulario4.examenp.focus();
        return false;
    }

    var exmp = valorexamenp*0.30

    var valortrabajo = document.formulario4.trabajo.value;
    var valortrabajop = parseFloat(valortrabajo);

    if(valortrabajop > 100){
        alert("Escribe solo numeros entre 0 al 100");
        document.formulario4.trabajo.focus();
        return false;
    }

    var trabp = valortrabajop*0.15;

    var total = valorp+valorexamenp+valortrabajop;
    var totalp = (calfp+exmp+trabp)/10;

    document.formulario4.calificacionesp.value = calfp.toFixed(2)+"%";
    document.formulario4.examenp.value = exmp.toFixed(2)+"%";
    document.formulario4.trabajop.value = trabp.toFixed(2)+"%";
    document.formulario4.total.value = total.toFixed(2)+"%";
    document.formulario4.totalp.value = totalp.toFixed(2)+"%";
}

function borrar4(){
    document.formulario4.calificaciones.value = "";
    document.formulario4.examen.value = "";
    document.formulario4.trabajo.value = "";
    document.formulario4.calificacionesp.value = "";
    document.formulario4.examenp.value = "";
    document.formulario4.trabajop.value = "";
    document.formulario4.total.value = "";
    document.formulario4.totalp.value = "";
}

function ValidarAlumnos(a){
    var teclado = (document.all)?a.KeyCode:a.which;
    if(teclado == 8)return true; 

    var patron = /[0-9\d .]/;

    var prueba = String.fromCharCode(teclado);
    return patron.test(prueba);
}

function CalcularPorcentaje(){
    var valoralumnos = document.formulario5.alumnos.value;
    var valoralumnospars = parseInt(valoralumnos);
    var valoralumnas = document.formulario5.alumnas.value;
    var valoralumnaspars = parseInt(valoralumnas)
    var total = valoralumnospars+valoralumnaspars;

    document.formulario5.total.value = total;

    var poralumnos = (valoralumnos*100)/total;
    document.formulario5.alumnosp.value = poralumnos.toFixed(2)+"%";

    var poralumnas = (valoralumnas*100)/total;
    document.formulario5.alumnasp.value = poralumnas.toFixed(2)+"%";
}

function borrar5(){
    document.formulario5.total.value = "";
    document.formulario5.alumnosp.value = "";
    document.formulario5.alumnasp.value = "";
}

function ValidarAno(e){
    var tecalado = (document.all)?e.KeyCode:e.which;
    if(tecalado == 8)return true;

    var patron = /[0-9\d .]/;
    
    var prueva = String.fromCharCode(tecalado);
    return patron.test(prueva); 
}

function CalcularEdad(){
    const fecha = new Date();
    var hoy = fecha.getFullYear();
    var hoyparseado = parseInt(hoy)
    var valor = document.formulario6.nacimiento.value;
    var nacimiento = parseInt(valor);

    if(nacimiento >= hoyparseado || nacimiento <= 1871){
        alert("Ingrese un año valido")
        document.formulario6.nacimiento.focus();
        return false;
    }

    var edad = hoyparseado-nacimiento;

    document.formulario6.edad.value = edad+" años";
}

function borrar6(){
    document.formulario6.nacimiento.value = "";
    document.formulario6.edad.value = "";
}


 



