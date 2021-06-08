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
public class CPresentacion {
    
    private int id_presentacion;
    private String tipo_presentacion;
    
    public CPresentacion(){

    }

    public int getId_presentacion() {
        return id_presentacion;
    }

    public void setId_presentacion(int id_presentacion) {
        this.id_presentacion = id_presentacion;
    }

    public String getTipo_presentacion() {
        return tipo_presentacion;
    }

    public void setTipo_presentacion(String tipo_presentacion) {
        this.tipo_presentacion = tipo_presentacion;
    }
    
    public Vector<CPresentacion> listaCPresentacion(){
        Vector<CPresentacion> lista = new Vector<CPresentacion>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            con = Conexion.getConexion();
            String q = "select * from CPresentacion";
            
            ps = con.prepareStatement(q);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
                CPresentacion cantidad = new CPresentacion();
                cantidad.setId_presentacion(rs.getInt("id_presentacion"));
                cantidad.setTipo_presentacion(rs.getString("tipo_presentacion"));
                //join
                //csabores.setNombre_sabor(rs.getString("nombre_sabor"));
                
                lista.add(cantidad);
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
