<%-- 
    Document   : MostrarHelados
    Created on : 7/06/2021, 05:33:22 PM
    Author     : User
--%>

<%@page import="Modelo.DCompra"%>
<%@page import="Modelo.MProducto"%>
<%@page import="java.util.Vector"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Helados Ben and Jerrys</title>
    </head>
    <body>
        <div>
        
        <%
            
          
            
            //todos los productos
            Vector<MProducto> vecproducto = new MProducto().listaProductos();
            
            %>
        
            <table border="2" width="100%" >
        
        <%
            //recorrer el vector del producto
            for(MProducto producto : vecproducto){
            //voy imprimiendo producto por producto
            %>
                
                    <tr>
                        <td>Sabor</td>
                        <td>Cantidad</td>
                        <td>Tamaño</td>
                        <td>Presentación</td>
                        <td>Precio</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td> <input type="hidden" name="id2" value="<%=producto.getId_sabor()%>" > </td>
                        <td> <input type="text" name="nombreh2" value="<%=producto.getId_cantidad()%>" > </td>
                        <td> <input type="text" name="precioh2" value="<%=producto.getId_tamano()%>" > </td>
                        <td> <input type="text" name="descripcionh2" value="<%=producto.getId_presentacion()%>" > </td>
                        <td> <input type="text" name="promocionh2" value="<%=producto.getPrecio_producto()%>"> </td>
                        <td> <a href="AgregarCarrito.java"> <input type="button" name="agregar" value="Agregar"> </a></td>
                    </tr>
            
        <%
            }
            %>
            </table>
        </div>
    </body>
</html>
