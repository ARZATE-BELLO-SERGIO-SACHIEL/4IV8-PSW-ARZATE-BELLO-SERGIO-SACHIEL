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
        alert("Ingrese un año valido");
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

function ValidarValores(v){
    var teclado = (document.all)?v.KeyCode:v.which;
    if(teclado == 8)return true;

    var patron = /[0-9\d .]/;

    var prueva = String.fromCharCode(teclado);
    return patron.test(prueva);
}

function Calculos(){
    var valor1 = document.formulario7.num1.value;
    var num1 = parseFloat(valor1);
    var valor2 = document.formulario7.num2.value;
    var num2 = parseFloat(valor2);

    if(num1 == num2){
        var total = num1*num2
        document.formulario7.resultado.value = total;
    }else{
        if(num1 > num2){
            var total = num1-num2
        document.formulario7.resultado.value = total;

        }else{
            var total = num1+num2
        document.formulario7.resultado.value = total;

        }
    }
}

function Borrar(){
    document.formulario7.num1.value = "";
    document.formulario7.num2.value = "";
    document.formulario7.resultado.value = "";
}
function RevisarValores(v){
    var teclado = (document.all)?v.KeyCode:v.which;
    if(teclado == 8)return true;

    var patron = /[0-9\d .]/;

    var prueva = String.fromCharCode(teclado);
    return patron.test(prueva);
}

function EvaluarValores(){
    var valor1 = document.formulario8.num1.value;
    var num1 = parseFloat(valor1);
    var valor2 = document.formulario8.num2.value;
    var num2 = parseFloat(valor2);
    var valor3 = document.formulario8.num3.value;
    var num3 = parseFloat(valor3);

    if(num1 == num2){
        alert("INGRESE NUMEROS DIFERENTES");
        document.formulario8.num1.focus();
        return false;

    }else{
        if(num2 == num3){
            alert("INGRESE NUMEROS DIFERENTES");
            document.formulario8.num2.focus();
            return false;
        }else{  
            if(num1 == num3){
                alert("INGRESE NUMEROS DIFERENTES");
                document.formulario8.num1.focus();
                return false;
            }
        }         
    }

   if(num1 > num2 & num1 > num3){
        document.formulario8.resultado.value = num1;
   }else{
       if(num2 > num1 & num2 > num3){
        document.formulario8.resultado.value = num2;
       }else{
           if(num3 > num1 & num3 > num2){
            document.formulario8.resultado.value = num3;
           }
       }
   }
}

function BorrarValores(){
    document.formulario8.num1.value = "";
    document.formulario8.num2.value = "";
    document.formulario8.num3.value = "";
    document.formulario8.resultado.value = "";
}




function RevisarHoras(h){
    var teclado = (document.all)?h.KeyCode:h.which;
    if(teclado == 8)return true;

    var patron = /[0-9\d .]/;

    var prueva = String.fromCharCode(teclado);
    return patron.test(prueva);
}

function CalcularHoras(){

    var valor = document.formulario9.horas.value;
    var num1 = parseInt(valor);
    if(num1 < 40 || num1 == 0 || num1 == ""){
        alert("INGRESE UN VALOR VALIDO");
        document.formulario9.horas.focus();
        return false;
    }
    var horasx = num1-40;
    if(horasx <= 8){
        var horasdobles = horasx;
        var horastriplesf = 0;
        document.formulario9.num2.value = horasdobles;
        document.formulario9.num3.value = horastriplesf;
        var resultado = horasdobles+horastriplesf;
        document.formulario9.resultado.value = resultado;

        var pagosdoblesf = horasdobles*1000*2;
        document.formulario9.pago2.value = pagosdoblesf+"$";

        var pagostriplesf = horastriplesf*1000*3;
        document.formulario9.pago3.value = pagostriplesf+"$";

        var pagototalf =  pagosdoblesf+pagostriplesf;
        document.formulario9.pagot.value = pagototalf+"$";

    }else{
        var horasdoblesf = horasx/8;
        var horasdoblesc = horasdoblesf%1;
        var horasdoblesint = horasdoblesf-horasdoblesc;
        var horasdoblesintp = horasdoblesint*8

        if(horasdoblesintp > 1){
            var horasdoblesm = 8;
            document.formulario9.num2.value = horasdoblesm;

            var horastriples = horasx-8;
            document.formulario9.num3.value = horastriples;

            var totalf = horasdoblesm+horastriples;
            document.formulario9.resultado.value = totalf;

            var horasdoblespagadas = horasdoblesm*1000*2
            var horastriplespagadas = horastriples*1000*3
            document.formulario9.pago2.value = horasdoblespagadas+"$";
            document.formulario9.pago3.value = horastriplespagadas+"$";

            var pagototal = horasdoblespagadas+horastriplespagadas+40000;
            document.formulario9.pagot.value = pagototal+"$";

        }else{
            var horasdoblesf = horasx/8;
            var horasdoblesc = horasdoblesf%1;
            var horasdoblesint = horasdoblesf-horasdoblesc;
            var horasdoblesintp = horasdoblesint*8
            var horastriples = horasx-8;

            document.formulario9.num2.value =  horasdoblesintp;
            document.formulario9.num3.value = horastriples;

            var totalf = horasdoblesf+horastriples;
            document.formulario9.resultado.value = totalf+"$";

            var horasdoblespagadas = horasdoblesf*1000*2
            var horastriplespagadas = horastriples*1000*3
            document.formulario9.pago2.value = horasdoblespagadas+"$";
            document.formulario9.pago3.value = horastriplespagadas+"$";

            var pagototal = horasdoblespagadas+horastriplespagadas+40000;
            document.formulario9.pagot.value = pagototal+"$";
        }
    } 
}

function BorrarHoras(){
    document.formulario9.horas.value = "";
    document.formulario9.num2.value = "";
    document.formulario9.num3.value = "";
    document.formulario9.resultado.value = "";
    document.formulario9.pagot.value = "";
    document.formulario9.pago2.value = "";
    document.formulario9.pago3.value = "";
}


 function ValidarTiempo(t){

    var teclado = (document.all)?t.KeyCode:t.which;
    if(teclado == 8)return true;

    var patron = /[0-9\d .]/;

    var prueva = String.fromCharCode(teclado);
    return patron.test(prueva);
 }

 function CalcularUtilidad(){
    var valor = document.formulario10.años.value;
    var años = parseFloat(valor);
    var valor1 = document.formulario10.salario.value;
    var salario = parseFloat(valor1);
    if(años < 1){
        var utilidades = salario*0.05;
        document.formulario10.utilidad.value = utilidades+"$";
    }else{
        if(años >= 1 & años < 2){
            var utilidades = salario*0.07;
            document.formulario10.utilidad.value = utilidades+"$";
        }else{
            if(años >= 2 & años < 5){
                var utilidades = salario*0.07;
                document.formulario10.utilidad.value = utilidades+"$";
            }else{
                if(años >= 5 & años < 10){
                    var utilidades = salario*0.15;
                    document.formulario10.utilidad.value = utilidades+"$";
                }else{
                    if(años >= 10){
                        var utilidades = salario*0.20;
                        document.formulario10.utilidad.value = utilidades+"$";
                    }
                }
            }
        }
    }
 }

 function BorrarDutilidads(){
    document.formulario10.años.value = "";
    document.formulario10.salario.value = "";
    document.formulario10.utilidad.value = "";
 }



