<%@page import="MODELO.CPresentacion"%>
<%@page import="MODELO.CTamano"%>
<%@page import="MODELO.CCantidad"%>
<%@page import="MODELO.CSabores"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>

<%
    String usuario = "";
    HttpSession sesionuok = request.getSession();
    if(sesionuok.getAttribute("usuario")==null){
    
    %>
    
    <jsp:forward page="index.html">
        <jsp:param name="error" value="Es obligatorio Identificarse" />
        
    </jsp:forward>
    
    <%
    
    }else{
        usuario = (String)sesionuok.getAttribute("nom_usu");
    }
    %>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Helados Ben and Jerrys</title>
    </head>
    <body>
        
        <br>
        
        <h1>boton de Cerrar sesión</h1>
       
        <%
            //todos los productos
            Vector<CSabores> vecsabor = new CSabores().listaSabores();
            
            %>
        
        
        <h1>Una tabla donde aparezcan todos los productos </h1>
        
         <table border="2" width="100%" >
        
        <%
            //recorrer el vector del producto
            for(CSabores sabores : vecsabor){
            //voy imprimiendo producto por producto
               %>
           
    
                <tr>
                    <td>ID</td>
                    <td> <input type="hidden" name="id" value="<%=sabores.getId_sabor()%>" > </td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td> <input type="text" name="nombre" value="<%=sabores.getNom_sabor()%>" > </td>
                </tr>
                        <%
                    
                    }
                    %>
    
        </table>
                
    
        <%
            //todos los productos
            Vector<CCantidad> veccantida = new CCantidad().listaCantidad();
            
            %>
        
        
        <h1>Una tabla donde aparezcan todos los productos </h1>
        
         <table border="2" width="100%" >
        
        <%
            //recorrer el vector del producto
            for(CCantidad cantidad : veccantida){
            //voy imprimiendo producto por producto
               %>
           
    
                <tr>
                    <td>ID</td>
                    <td> <input type="hidden" name="id" value="<%=cantidad.getId_cantidad()%>" > </td>
                </tr>
                <tr>
                    <td>valor</td>
                    <td> <input type="text" name="valor_cantidad" value="<%=cantidad.getValor_cantidad()%>" > </td>
                </tr>
                <tr>
                    <td>unidad</td>
                    <td> <input type="text" name="unidad_cantidad" value="<%=cantidad.getUnidad_cantidad()%>" > </td>
                </tr>
                        <%
                    
                    }
                    %>
        </table>
        
     
        <%
            //todos los productos
            Vector<CTamano> vectamano = new CTamano().listaTamano();
            
            %>
        
        
        <h1>Una tabla donde aparezcan todos los productos </h1>
        
         <table border="2" width="100%" >
        
        <%
            //recorrer el vector del producto
            for(CTamano tamano : vectamano){
            //voy imprimiendo producto por producto
               %>
               
                <tr>
                    <td>ID</td>
                    <td> <input type="hidden" name="id" value="<%=tamano.getId_tamano()%>" > </td>
                </tr>
                <tr>
                    <td>valor</td>
                    <td> <input type="text" name="valor_cantidad" value="<%=tamano.getNombre_tamano()%>" > </td>
                </tr>
               
                        <%
                    
                    }
                    %>
                    
                    <%
            //todos los productos
            Vector<CPresentacion> vecpresentacion = new CPresentacion().listaCPresentacion();
            
            %>
        </table>
        
        <h1>Una tabla donde aparezcan todos los productos </h1>
        
         <table border="2" width="100%" >
        
        <%
            //recorrer el vector del producto
            for(CPresentacion presentacion : vecpresentacion){
            //voy imprimiendo producto por producto
               %>
               
                <tr>
                    <td>ID</td>
                    <td> <input type="hidden" name="id" value="<%=presentacion.getId_presentacion()%>" > </td>
                </tr>
                <tr>
                    <td>valor</td>
                    <td> <input type="text" name="valor_cantidad" value="<%=presentacion.getTipo_presentacion()%>" > </td>
                </tr>
               
                        <%
                    
                    }
                    %>
        </table>
        
    </body>
</html>