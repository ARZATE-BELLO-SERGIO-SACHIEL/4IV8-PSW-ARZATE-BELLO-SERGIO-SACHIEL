/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROL;

/**
 *
 * @author Elitebook
 */

import java.sql.*;
public class Coneccion {
    
    public static Connection getConexion(){
    
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url, userName, password;
            
            url = "jdbc:mysql://localhost/CarritoHelados4iv8";
            userName = "root";
            password = "sergio2004";
            
            return DriverManager.getConnection(url, userName, password);
            
        }catch(SQLException sq){
        
        }
        
        
    }
    
}
