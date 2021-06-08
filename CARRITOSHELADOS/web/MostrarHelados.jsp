<%-- 
    Document   : MostrarHelados
    Created on : 25/05/2021, 04:17:11 PM
    Author     : Elitebook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>
<!DOCTYPE html>

<%
    String usuario = "";
    HttpSession sesionuok = request.getSession();
    if(sesionuok.getAttribute("usuario")==null){

    %>


<jsp:forward page="index.html">
    <jsp:param name="erro" value="es obligatorio identificarse"></jsp:param>
</jsp:forward>

    <%
    }else{
        usuario = (String)sesionuok.getAttribute("usuario");
    }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //obtener primero el carrito
            //Vector<DCompra> VectorDetCompra = 
            //         (Vector<DCompra>)sessionuok.getAttribute("detalleVenta");
            //carrito de los productos que selecciono el usuario 
            
            
            Vector<MProducto> vecproducto = new MProducto().listaProductos();
            
            %>
        
        <h1>Hello World!</h1>
    </body>
</html>
