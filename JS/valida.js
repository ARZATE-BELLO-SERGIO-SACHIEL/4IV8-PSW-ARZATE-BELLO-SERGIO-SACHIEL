function valida(formulario){
    /*queremos validadr que se escriban mas de 5 caracteres
    em el campo de nombre*/
    if(formulario.nombre.value.length < 5){
        alert("por favor escribe mas de 5 caracteres en el campo nombre");
        formulario.nombre.focus();
    return false;
    }
}
