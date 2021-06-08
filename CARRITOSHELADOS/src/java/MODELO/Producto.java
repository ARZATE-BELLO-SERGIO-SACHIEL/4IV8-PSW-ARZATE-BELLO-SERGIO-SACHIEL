/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODELO;

/**
 *
 * @author Elitebook
 */

import java.sql.*;
public class Producto {
    
    private int id_producto, id_sabor, id_cantidad, id_tamano;
    private int id_presentacion, stock_producto;
    private double precio_producto;

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
    
    public Producto(){
    
    
    }
    
    public Vector<Producto> listaProductos(){
        Vector<Producto> lista = new Vector<Producto>():
        Conection con = null;
        PreparedStatemnet ps = null;
        ResultSet rs = null;
        
        try{
            con = Conexion.getConexion();
            String q = "select * from Mproducto";
            
            ps = con.prepareStatement(q);              
        }
        
    }
}
