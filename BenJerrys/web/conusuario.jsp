<%-- 
    Document   : consultar
    Created on : 29/04/2021, 05:48:58 PM
    Author     : demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="Stylesheet" href="css/gru.css">
        <title>Consulta</title>
    </head>
    <body>
        <h1>Tabla General de Registro</h1>
        <div class="containerTable" >
            <table border="2" width="100%">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>A.PATERNO</th>
                        <th>A.MATERNO</th>
                        <th>EDAD</th>
                        <th>USUARIO</th>
                        <th>CONTRASEÑA</th>
                        <th>CALLE</th>
                        <th>COLONIA</th>
                        <th>DELEGACION</th>
                        <th>F.NACIMIENTO</th>
                        <th>TELEFONO</th>
                    </tr>        
                </thead>
                <tbody>
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
                                
                                q = "select * from cliente order by nom_cli asc";
                                
                                rs = set.executeQuery(q);
                                while(rs.next()){
                                    %>
                <tr>
                    <td><%=rs.getInt("id_cli")%> </td>
                    <td><%=rs.getString("nom_cli")%> </td>
                    <td><%=rs.getString("appat_cli")%> </td>
                    <td><%=rs.getString("apmat_cli")%> </td>
                    <td><%=rs.getInt("edad_cli")%> </td>
                    <td><%=rs.getString("usu_cli")%> </td>
                    <td><%=rs.getString("contra_cli")%> </td>
                    <td><%=rs.getString("calle_cli")%> </td>
                    <td><%=rs.getString("colo_cli")%> </td>
                    <td><%=rs.getString("del_cli")%> </td>
                    <td><%=rs.getString("nac_cli")%> </td>
                    <td><%=rs.getString("tel_cli")%> </td>                  
                </tr>                
                                    
                                    <%
                                
                                }
                            rs.close();    
                            set.close();
                            
                            }catch(SQLException ed){
                                System.out.println("Error al consultar la tabla");
                                System.out.println(ed.getMessage());
                                %>
                </tbody>
            </table> 
                <br>
                <h1>Error no se pueden visualiar los datos en este momento</h1>
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
            <br>
            <br>
            <div>
                <form name="formulario borrar" action="borraru.jsp">
                    <table>
                        <thead>
                        <th>
                            BORRAR REGISTRO
                        </th>
                        </thead>
                        <tr>
                            <td><label>ID</label></td>
                            <td><input class="text" type="number" name="id"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input class="boton" type="submit" value="Borrar"></td>
                        </tr>
                    </table>
                </form>
            </div>
            <br>
            <br>
            <a href="consultar.jsp" >REGRESAR A PAGINA DEL ADMINISTRADOR</a>    
        </div>
    </body>
</html>


