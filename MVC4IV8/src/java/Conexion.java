/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Elitebook
 */

import java.sql.*;

public class Conexion {
    
    public static Connection getConnection(){
    
        String url, userName, password;
        
        url = "jdbc:mysql:3306/localhost/Empleado";
        userName = "root";
        password = "sergio2004";
        
        Connection con = null;
        
        try{
            class.forName("com.mysql.jdbc.Driver")
            
        }
    }
}
