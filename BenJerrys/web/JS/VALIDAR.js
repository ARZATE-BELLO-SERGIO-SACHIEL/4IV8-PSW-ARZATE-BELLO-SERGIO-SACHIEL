/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function tamaño(){
    if(agregar.nombreh.value.length >20){
        alert("Por favor escribe menos de 20 caracteres en el campo ");
        agregar.nombre.focus();
    return false;
    }
    if(agregar.precioh.value.length >20){
        alert("Por favor escribe menos de 20 caracteres en el campo ");
        agregar.precioh.focus();
    return false;
    }
    if(agregar.descripcionh.value.length >20){
        alert("Por favor escribe menos de 20 caracteres en el campo ");
        agregar.descripcionh.focus();
    return false;
    }
    if(agregar.promocionh.value.length >20){
        alert("Por favor escribe menos de 20 caracteres en el campo ");
        agregar.promocionh.focus();
    return false;
    }
    
    
    


}

