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
 * @author user
 */
public class CSabores {
    
    private int id_sabor;
    private String nom_sabor;
    
    
    public CSabores(){
    
    }

    public int getId_sabor() {
        return id_sabor;
    }

    public void setId_sabor(int id_sabor) {
        this.id_sabor = id_sabor;
    }

    public String getNom_sabor() {
        return nom_sabor;
    }

    public void setNom_sabor(String nom_sabor) {
        this.nom_sabor = nom_sabor;
    }
    
    public Vector<CSabores> listaSabores(){
        Vector<CSabores> lista = new Vector<CSabores>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            con = Conexion.getConexion();
            String q = "select * from CSabores";
            
            ps = con.prepareStatement(q);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
                CSabores producto = new CSabores();
                producto.setId_sabor(rs.getInt("id_sabor"));
                producto.setNom_sabor(rs.getString("nom_sabor"));
                //join
                //csabores.setNombre_sabor(rs.getString("nombre_sabor"));
                
                lista.add(producto);
                
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
