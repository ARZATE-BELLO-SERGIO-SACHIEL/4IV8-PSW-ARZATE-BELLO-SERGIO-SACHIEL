/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

/**
 *
 * @author User
 */
import java.sql.*;

public class Conexion {
    
    public static Connection getConexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url, userName, password;
            
            url = "jdbc:mysql://localhost/ben_and_jerrys";
            userName = "root";
            password= "cerealconleche1";
            
            return DriverManager.getConnection(url, userName, password);
        
        }catch(SQLException sq){
            System.out.println("Error al conectar con la BD");
            System.out.println(sq.getMessage());
        
        }catch(Exception e){
            System.out.println("No encuentra la clase");
            System.out.println(e.getMessage());
        }
        return null;
    }
    
    
}