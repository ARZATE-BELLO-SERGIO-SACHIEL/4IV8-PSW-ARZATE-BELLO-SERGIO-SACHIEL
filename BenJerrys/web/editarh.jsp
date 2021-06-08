<%-- 
    Document   : editar
    Created on : 29/04/2021, 06:22:41 PM
    Author     : demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilo_index.css">
        <title>Editar Registro</title>
    </head>
    <body>
        <h1>ACTULAIZACION DEL HELADO</h1>
        <br>
        <form method="get" name="formularioeditar" action="actualizarh.jsp">    
            <table border="2" width="100%" >
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
                            int id;
                        
                            id = Integer.parseInt(request.getParameter("id"));
                            
                            q = "select id_pro, nom_pro, pre_pro, des_pro, promo_pro from producto where id_pro="+id;
                            
                            rs = set.executeQuery(q);
                            while(rs.next()){
                                %>
                <tr>
                    <td>ID</td>
                    <td> <input type="hidden" name="id" value="<%=rs.getString("id_pro")%>" > </td>
                </tr>               
                <tr>
                    <td>NOMBRE</td>
                    <td> <input type="text" name="nombreh2" value="<%=rs.getString("nom_pro")%>" > </td>
                </tr>
                <tr>
                    <td>PRECIO</td>
                    <td> <input type="text" name="precioh2" value="<%=rs.getString("pre_pro")%>" > </td>
                </tr>
                <tr>
                    <td>DESCRIPCION</td>sky
                    <td> <input type="text" name="descripcionh2" value="<%=rs.getString("des_pro")%>" > </td>
                </tr> 
                <tr>
                    <td>PROMOCION</td>
                    <td><input type="text" name="promocionh2" value="<%=rs.getString("promo_pro")%>"></td>
                </tr>  
                <tr>
                    <td></td>
                    <td><input class="boton" type="submit" value="Enviar"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="consultar.jsp">VOLVER A CONSULTAR</a> </td>
                </tr>
                                <%
                                
                            }
                            rs.close();
                            set.close();
                        
                        }catch(SQLException ed){
                            System.out.println("Error no se puede leer la tabla");
                            System.out.println(ed.getMessage());
                            %>
                <tr>
                    <td>ID</td>
                    <td> <input type="hidden" name="id" value="<%=rs.getString("id_pro")%>" > </td>
                </tr>  
                <tr>
                    <td>NOMBRE</td>
                    <td> <input type="text" name="nombreh2" value="<%=rs.getString("nom_pro")%>" > </td>
                </tr>
                <tr>
                    <td>PRECIO</td>
                    <td> <input type="number" name="precioh2" value="<%=rs.getString("pre_pro")%>" > </td>
                </tr>
                <tr>
                    <td>DESCRIPCION</td>
                    <td> <input type="text" name="descripcionh2" value="<%=rs.getString("des_pro")%>" > </td>
                </tr> 
                <tr>
                    <td>PROMOCION</td>
                    <td><input type="text" name="promocionh2" value="<%=rs.getString("promo_pro")%>"></td>
                </tr>
                <tr>
                    <td>REGISTRO NO ENCONTRADO</td>
                    <td>
                        <a href="consultar.jsp">VOLVER A CONSULTAR</a> 
                    </td>
                </tr>
                                <%
                        }
                        con.close();
                    
                    }catch(Exception e){
                        System.out.println("Error al conectar la bd");
                        System.out.println(e.getMessage());
                        System.out.println(e.getStackTrace());
                        %>
                <br>
                <h1>Sitio en Construccion</h1>        
                        <%
                    }
                    %>
        </table>
        </form>
    </body>
</html>


