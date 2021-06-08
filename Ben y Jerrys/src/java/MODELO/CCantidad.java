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
public class CCantidad {
    
    private int id_cantidad, valor_cantidad;
    private String unidad_cantidad;
    
    public CCantidad(){

    }
    
    public int getId_cantidad() {
        return id_cantidad;
    }

    public void setId_cantidad(int id_cantidad) {
        this.id_cantidad = id_cantidad;
    }

    public int getValor_cantidad() {
        return valor_cantidad;
    }

    public void setValor_cantidad(int valor_cantidad) {
        this.valor_cantidad = valor_cantidad;
    }

    public String getUnidad_cantidad() {
        return unidad_cantidad;
    }

    public void setUnidad_cantidad(String unidad_cantidad) {
        this.unidad_cantidad = unidad_cantidad;
    }
    
    public Vector<CCantidad> listaCantidad(){
        Vector<CCantidad> lista = new Vector<CCantidad>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            con = Conexion.getConexion();
            String q = "select * from CCantidad";
            
            ps = con.prepareStatement(q);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
                CCantidad cantidad = new CCantidad();
                cantidad.setId_cantidad(rs.getInt("id_cantidad"));
                cantidad.setUnidad_cantidad(rs.getString("nom_sabor"));
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





