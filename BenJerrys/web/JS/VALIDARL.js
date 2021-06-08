/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validarL(e){
    var teclado = (agregar.all)?e.keyCode:e.which;
    if(teclado == 8)return true;

    var patron = /[a-z\d .\-]/;

    var prueba = String.fromCharCode(teclado);
    return patron.test(prueba);
}



