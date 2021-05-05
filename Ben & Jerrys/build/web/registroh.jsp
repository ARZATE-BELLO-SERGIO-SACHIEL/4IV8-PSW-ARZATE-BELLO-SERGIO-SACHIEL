<%-- 
    Document   : registro
    Created on : 1/05/2021, 11:17:09 PM
    Author     : Elitebook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRO DE HELADOS</title>
    </head>
    <body>
        
        <% 
        //aqui ya puedo incorporar codigo java
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String url, userName, password, driver;
        
        url = "jdbc:mysql://localhost/Ben_and_Jerrys";
        userName = "root";
        password = "sergio2004";
        
        driver = "com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(url, userName, password);
            
            //diferentes vistas para los errores
            //error exclusivo de sql
            try{
                set = con.createStatement();
                //necesito los parametros del formulario
                String nombre, descripcion, promocion, q;
                int precio;
                
                nombre = request.getParameter("nombreh");
                precio = Integer.parseInt(request.getParameter("precioh"));
                descripcion = request.getParameter("descripcionh");
                promocion = request.getParameter("promocionh");
                
                
                    
                q = "insert into  producto( nom_pro, pre_pro, des_pro, promo_pro ) "
                        + "values ('"+nombre+"', '"+precio+"', '"+descripcion+"','"+promocion+"')";
                
                int Ben_and_Jerrys = set.executeUpdate(q);
                %>
                <h1>Registro Exitoso</h1>
                <%
                set.close();
            
            }catch(SQLException ed){
                System.out.println("Error al registrar en la tabla");
                System.out.println(ed.getMessage());
                
                %>
                <h1>Registro No Exitoso, error en la lectura de la tabla</h1>
                <%
            
            }
            con.close();
        
        }catch(Exception e){
            System.out.println("Error al conectar bd");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
            %>
            <h1>Sitio en Construccion</h1>
            <%
        
        }
            
            %>
        
        
        
        
        
        <a href="consultar.jsp" >Regresar a la Pagina EDICION</a>
    </body>
</html>

