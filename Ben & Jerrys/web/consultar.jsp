<%-- 
    Document   : consultar
    Created on : 29/04/2021, 05:48:58 PM
    Author     : demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="Stylesheet" href="css/gru.css">
    </head>
    <body>
        
       
        
        <div class="arriba">
            <table class="navegacion" width="100%" >
                <tbody>
                    <tr>
                        <td class="navegacion">
                            <div class="imagen">
                                <img src="./IMG/logo.png" alt="logo" width="150" height="50">
                            </div>
                        </td>
                        <td class="navegacion">
                            <nav class="barra">
                                <ul>
             
                                    <li>
                                        <a href="index.html">
                                            Iniciar
                                        </a>
                                    </li>
                                    <li>
                                        <a href="Registro.jsp">
                                            Registrarse
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>
        
        <br>
        <br>
        <br>
        <br>
        <br><br><br>
        
        
        
        
        <header>
            <h1>TABLA DE PRODUCTOS</h1>
            <br>
            <div class="dig">
                <table border="2" width="100%">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>NOMBRE</th>
                        <th>PRECIO</th>
                        <th>DECRIPCION</th>
                        <th>PROMOCION</th>
                    </tr>        
                </thead>
                <tbody>
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
                            try{
                                set = con.createStatement();
                                //necesito los parametros del formulario
                                String q;
                                
                                q = "select * from producto order by nom_pro asc";
                                
                                rs = set.executeQuery(q);
                                while(rs.next()){
                                    %>
                <tr>
                    <td><%=rs.getInt("id_pro")%> </td>
                    <td><%=rs.getString("nom_pro")%> </td>
                    <td><%=rs.getString("pre_pro")%> </td>
                    <td><%=rs.getString("des_pro")%> </td>
                    <td><%=rs.getString("promo_pro")%></td>
                 
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
                
        </div>
            </div>
        </header>
        <div>
            <br>
            <br>
            <br>
   
            <form name="agregar" action="registroh.jsp">
                <table>
                    <thead>
                    <th>
                        <h1>TABLA PARA AGREGAR HELADOS</h1>
                    </th>
                    </thead>
                <tr>
                    <td><label>NOMBRE</label></td>
                    <td><input class="text" onkeypress="return tamaño(event)" type="text" name="nombreh"></td>
                                      
                </tr>
                <tr>
                    <td><label>PRECIO</label></td>
                    <td><input class="text" onkeypress="return tamaño(event)" type="text" name="precioh"></td>
                                      
                </tr>
                <tr>
                    <td><label> DESCRIPCION</label></td>
                    <td><input class="text" onkeypress="return tamaño(event)" type="text" name="descripcionh"></td>
                                      
                </tr>
                <tr>
                    <td><label> PROMOCION</label></td>
                    <td><input class="text" onkeypress="return tamaño(event)" type="text" name="promocionh"></td>
                                      
                </tr>
                 <tr>
                    <td><input class="boton" type="reset" value="borrar"></td>
                    
                    <td><input class="boton " onkeypress="return tamaño(event)" type="submit" value="agregar"></td>
                </tr>
            </table>
            </form>
            
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div>
            <form name="formulario borrar" action="borrarh.jsp">
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
        <br>
        <br>
        <form name="editar" action="editarh.jsp">
            <table>
                <thead>
                <th>
                    EDITAR 
                </th>
                </thead>
                <tr>
                    <td>ID</td>
                    <td> <input type="text" name="id"> </td>
                </tr>  
                <tr>
                    <td><input class="boton" type="reset" value="Borrar"></td>
                    <td><input class="boton" type="submit" value="EDITAR"></td>
                </tr>
            </table>
        </form>
        <br>
        <br>
        <br>
        <br>
        <center>    
            <table>
                <tr>
                    <td>
                        <a href="conusuario.jsp">ADMINISTRAR USUARIOS</a>
                    </td>
                </tr>
            </table>
        </center>
    </body>
</html>