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

public class MUsuario {
    
    private int id_usu, id_dir, id_formpago, privilegio_usuario;
    private String nombre_usuario, appat_usuario, apmat_usuario;
    private String fechnac_usuario, tel_usuario, cel_usuario;
    private String user_usuario, pass_usuario;
    
    public MUsuario(){
    

    }
    
    public MUsuario verificarUsuario(String user, String pass){
        MUsuario u = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try{
            con = Conexion.getConexion();
            String q = "select * from MUsuario"
                    
                    
                   
        }
        
    
    }
   
    
}
