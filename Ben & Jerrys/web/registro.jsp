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
        <title>REGISTRO</title>
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
                String nombre, appat, apmat,calle, colonia, delegacion, usuario, contraseña, fn, tel, q;
                int edad;
                
                nombre = request.getParameter("nombre");
                appat = request.getParameter("appat");
                apmat = request.getParameter("apmat");
                edad =  Integer.parseInt(request.getParameter("edad"));
                calle = request.getParameter("calle");
                colonia = request.getParameter("colonia");
                delegacion= request.getParameter("delegacion");
                usuario = request.getParameter("usuario");
                contraseña = request.getParameter("contraseña");
                fn = request.getParameter("nacimiento");
                tel = request.getParameter("tel");
              
                    
                q = "insert into cliente( nom_cli, appat_cli, apmat_cli, edad_cli, usu_cli, contra_cli, calle_cli, colo_cli, del_cli, nac_cli, tel_cli ) "
                        + "values ('"+nombre+"', '"+appat+"', '"+apmat+"', '"+edad+"', '"+usuario+"', '"+contraseña+"', '"+calle+"', '"+colonia+"', '"+delegacion+"', '"+fn+"', '"+tel+"')";
                
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
        <a href="index.html" >Regresar a la Pagina Principal</a>
    </body>
</html>
