/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author User
 */
import Control.Conexion;
import java.sql.*;
import java.util.Vector;


public class MProducto {
    
    /*
    id_producto, id_sabor, id_cantidad
    id_tamano, id_presentacion,precio_producto, stock_producto
    */
    
    private int id_producto, id_sabor, id_cantidad, id_tamano;
    private int id_presentacion, stock_producto;
    private double precio_producto;
    
    public MProducto(){
    
    }
    
    //metodo para ver todos los productos 
    
    public Vector<MProducto> listaProductos(){
        Vector<MProducto> lista = new Vector<MProducto>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            con = Conexion.getConexion();
            String q = "select * from vista_producto";
            
            ps = con.prepareStatement(q);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
                MProducto producto = new MProducto();
                producto.setId_producto(rs.getInt("id_producto"));
                producto.setId_sabor(rs.getInt("id_sabor"));
                //join
                //csabores.setNombre_sabor(rs.getString("nombre_sabor"));
                producto.setId_cantidad(rs.getInt("id_cantidad"));
                producto.setId_tamano(rs.getInt("id_tamano"));
                producto.setId_presentacion(rs.getInt("id_presentacion"));   
                producto.setPrecio_producto(rs.getDouble("precio_producto"));
                producto.setStock_producto(rs.getInt("stock_producto")); 
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
    
    //metodo para buscar producto por codigo
    
    public MProducto buscarProducto(int codigoProducto){
        MProducto producto = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try{
            con = Conexion.getConexion();
            String q = "select * from MProducto where id_producto = ?";
            
            ps = con.prepareStatement(q);
            
            ps.setInt(1, codigoProducto);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
                producto = new MProducto();
                producto.setId_producto(rs.getInt("id_producto"));
                producto.setId_sabor(rs.getInt("id_sabor"));
                producto.setId_cantidad(rs.getInt("id_cantidad"));
                producto.setId_tamano(rs.getInt("id_tamano"));
                producto.setId_presentacion(rs.getInt("id_presentacion"));
                producto.setPrecio_producto(rs.getDouble("precio_producto"));
                producto.setStock_producto(rs.getInt("stock_producto"));
            }
        
        }catch(SQLException sq){
            System.out.println("Error al buscar el producto");
            System.out.println(sq.getMessage());
            producto = null;
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
        return producto;
    }
    
    public boolean actualizarStock(Vector<MProducto> vp){
        boolean actualizo = false;
        Connection con = null;
        PreparedStatement ps = null;
        try{
            con = Conexion.getConexion();
            for(MProducto producto : vp){
                String q = "update MProducto set stock_producto = ? "
                        + "where id_producto = ?";
                ps = con.prepareStatement(q);
                
                ps.setInt(1, producto.getStock_producto());
                ps.setInt(2, producto.getId_producto());
                
                if(ps.executeUpdate() == 1){
                    actualizo = true;
                }else{
                    actualizo = false;
                    break;
                }
            }
        
        }catch(SQLException sq){
            System.out.println("Error al actualizar el stock producto");
            System.out.println(sq.getMessage());
            actualizo = false;
        }finally{
            try{
                
                ps.close();
                con.close();
                
            
            }catch(Exception e){
                System.out.println("No encontro la clase");
                System.out.println(e.getMessage());
            
            }
        }
        return actualizo;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getId_sabor() {
        return id_sabor;
    }

    public void setId_sabor(int id_sabor) {
        this.id_sabor = id_sabor;
    }

    public int getId_cantidad() {
        return id_cantidad;
    }

    public void setId_cantidad(int id_cantidad) {
        this.id_cantidad = id_cantidad;
    }

    public int getId_tamano() {
        return id_tamano;
    }

    public void setId_tamano(int id_tamano) {
        this.id_tamano = id_tamano;
    }

    public int getId_presentacion() {
        return id_presentacion;
    }

    public void setId_presentacion(int id_presentacion) {
        this.id_presentacion = id_presentacion;
    }

    public int getStock_producto() {
        return stock_producto;
    }

    public void setStock_producto(int stock_producto) {
        this.stock_producto = stock_producto;
    }

    public double getPrecio_producto() {
        return precio_producto;
    }

    public void setPrecio_producto(double precio_producto) {
        this.precio_producto = precio_producto;
    }
    
    
    
}