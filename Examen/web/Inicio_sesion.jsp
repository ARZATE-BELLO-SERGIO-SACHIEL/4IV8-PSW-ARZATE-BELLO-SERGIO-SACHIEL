<%-- 
    Document   : Inicio_sesion
    Created on : 2/05/2021, 09:12:44 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="main-layout product_pagr">
        <div id="plant" class="section  product">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ">
                        <div class="titlepage">
                          <h2><strong class="black">INICAR </strong>SESION</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clothes_main section ">
             <form action="VerificarUsusario.java">
                <div class="caja">
                    <center>
                        <table>
                            <tr>
                                <td align="right">
                                    <label><h2 class="formulario"><strong >USUARIO</h2></label>
                                </td>
                                <td>
                                    <input class="datos" type="text" name="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label><h2 class="formulario"><strong >CONTRASEÑA</h2></label>
                                </td>
                                <td>
                                    <input class="datos" type="email" name="" id="">
                                </td>
                             </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <input class="boton" type="submit" value="INICIAR">
                                    <a href="Registro.jsp">
                                    <input class="boton" type="button" value="REGISTRARSE">
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </center>
                </div>
            </form>
        </div>
    </body>
</html>
