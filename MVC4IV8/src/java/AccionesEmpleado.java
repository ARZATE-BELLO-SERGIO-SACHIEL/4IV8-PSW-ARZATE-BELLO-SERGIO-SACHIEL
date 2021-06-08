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
import java.util.*;

public class AccionesEmpleado {
    
    public static int RegistrarEmpleado(Empleado e){
    
        int status = 0;
        
        try{
            Connection con = Conexion.getConnection();
            String q = "insert into empleado(nom_emp, pass_emp, email_emp, pais_emp)"
                    + "values(?,?,?,?)";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getEmail());
            ps.setString(4, e.getPais());
            
        }
    }
    
    public static int ActualizarEmpleado(Empleado e){
    
        int status = 0;
        
        try{
            Connection con = Conexion.getConnection();
            String q = "update empleados into empleado(nom_emp, pass_emp, email_emp, pais_emp)"
                    + "values(?,?,?,?)";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getEmail());
            ps.setString(4, e.getPais());
            
        }
    }
    
}
