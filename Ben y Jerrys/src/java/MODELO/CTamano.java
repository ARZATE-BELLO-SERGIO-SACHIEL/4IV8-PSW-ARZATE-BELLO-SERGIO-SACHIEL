/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

import Control.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author Elitebook
 */
public class CTamano {
    
    private int id_tamano;
    private String nombre_tamano;
    
    public CTamano(){
    
    }

    public int getId_tamano() {
        return id_tamano;
    }

    public void setId_tamano(int id_tamano) {
        this.id_tamano = id_tamano;
    }

    public String getNombre_tamano() {
        return nombre_tamano;
    }

    public void setNombre_tamano(String nombre_tamano) {
        this.nombre_tamano = nombre_tamano;
    }
    
     public Vector<CTamano> listaTamano(){
        Vector<CTamano> lista = new Vector<CTamano>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            con = Conexion.getConexion();
            String q = "select * from CTamano";
            
            ps = con.prepareStatement(q);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
                CTamano tamano = new CTamano();
                tamano.setId_tamano(rs.getInt("id_tamano"));
                tamano.setNombre_tamano(rs.getString("nombre_tamano"));
                //join
                //csabores.setNombre_sabor(rs.getString("nombre_sabor"));
                
                lista.add(tamano);
            }
            
        }catch(SQLException sq){
            System.out.println("Error al consultar los productos");
            System.out.println(sq.getMessage());
            lista = null;
        }finally{
            try{
                rs.close();
                ps.close();
                con.close();
                
            
            }catch(Exception e){
                System.out.println("No encontro la clase");
                System.out.println(e.getMessage());
            
            }
        }
        return lista;
    }
  
}

