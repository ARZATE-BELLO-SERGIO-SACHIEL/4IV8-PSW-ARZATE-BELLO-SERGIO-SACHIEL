<%-- 
    Document   : adminhelado
    Created on : 2/05/2021, 06:49:38 PM
    Author     : Elitebook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Registro</title>
    </head>
    <body>
        <h1>Actualizacion Helados</h1>
        <br>
        <form method="get" name="formularioeditar">    
            <table border="2" width="100%" >
                <%
                    //aqui ya puedo incorporar codigo java
                    Connection con = null;
                    Statement set = null;
                    ResultSet rs = null;
                    String url, userName, password, driver;
                    url = "jdbc:mysql://localhost/ben_and_jerrys";
                    userName = "root";
                    password = "sergio2004";
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
                            
                            q = "select id_pro, nom_pro, pre_pro, des_pro promo_pro from producto where id_pro="+id;
                            
                            rs = set.executeQuery(q);
                            while(rs.next()){
                                %>
                <tr>
                    <td>ID</td>
                    <td> <input type="hidden" name="id2" value="<%=rs.getInt("id_pro")%>" > </td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td> <input type="text" name="nombreh2" value="<%=rs.getString("nom_pro")%>" > </td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td> <input type="text" name="precioh2" value="<%=rs.getInt("pre_pro")%>" > </td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td> <input type="text" name="descripcionh2" value="<%=rs.getString("des_pro")%>" > </td>
                </tr>  
                <tr>
                    <td>Promocion</td>
                    <td> <input type="text" name="promocionh2" value="<%=rs.getString("promo_pro")%>"> </td>
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
                    <td> <input type="hidden" name="id2" value="<%=rs.getInt("id_pro")%>" > </td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td> <input type="text" name="nombreh2" value="<%=rs.getString("nom_pro")%>" > </td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td> <input type="text" name="precioh2" value="<%=rs.getInt("pre_pro")%>" > </td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td> <input type="text" name="descripcionh2" value="<%=rs.getString("des_pro")%>" > </td>
                </tr>  
                <tr>
                    <td>Promocion</td>
                    <td> <input type="text" name="promocionh2" value="<%=rs.getString("promo_pro")%>"> </td>
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
