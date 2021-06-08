<%-- 
    Document   : actualizar
    Created on : 29/04/2021, 06:37:12 PM
    Author     : demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            //aqui ya puedo incorporar codigo java
            Connection con = null;
            Statement set = null;
            ResultSet rs = null;
            String url, userName, password, driver;
            url = "jdbc:mysql://us-cdbr-east-03.cleardb.com/heroku_5c48da85fb31c1f";
                        userName = "ba136190cebddc";
                        password = "9236067b";
                        driver = "com.mysql.jdbc.Driver";
            
            try{
                Class.forName(driver);
                con = DriverManager.getConnection(url, userName, password);
                try{
                        set = con.createStatement();
                        //necesito los parametros del formulario
                        String q;
                        int id,precio;
                        String nombre, descripcion, promocion ;
                        
                        
                        nombre = request.getParameter("nombreh2");
                        precio = Integer.parseInt(request.getParameter("precioh2"));
                        descripcion = request.getParameter("descripcionh2");
                        promocion = request.getParameter("promocionh2");
                        id = Integer.parseInt(request.getParameter("id"));
                        
                        q = "update producto set "
                                + "nom_pro = '"+nombre+"', pre_pro = '"+precio+"', des_pro = '"+descripcion+"', promo_pro = '"+promocion+"' "
                                + "where id_pro = "+id+"";
                        
                        int actualizar = set.executeUpdate(q);
                        
                        %>
                        <h1>Datos Actualizados con Exito</h1>
                        <%
                        set.close();
                    
                }catch(SQLException ed){
                        System.out.println("Error al actualizar el registro en la tabla");
                        System.out.println(ed.getMessage());
                        %>
                        <h1>Solo juguito contigo ¬¬ T_T</h1>
                        <%
                        
                
                }
                con.close();
            
            }catch(Exception e){
                System.out.println("Error al conectar con la bd");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
                %>
                <br>
                <h1>Sitio en Construccion</h1>        
                        <%
            }
            
            %>
        
        
        <a href="consultar.jsp" >Regresar a la Pagina del admin</a>  
        
        
        
    </body>
</html>
