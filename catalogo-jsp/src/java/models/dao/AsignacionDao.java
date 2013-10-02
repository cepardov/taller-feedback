/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models.dao;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

import models.entity.Asignacion;
import utilidades.DataBaseInstance;

/**
 *
 * @author adolf
 */
public class AsignacionDao {
    
     protected Connection getConnection() {
        return DataBaseInstance.getInstanceConnection();
    }
     
     public List<Asignacion> findAll(){
         
         List<Asignacion> vistasignacion = new LinkedList<Asignacion>();
          ResultSet result = null;

        try {

            String query = "SELECT * FROM APP.asignaciontrabajo";
            Statement stmt = getConnection().createStatement();
            result = stmt.executeQuery(query);

            while (result.next()) {
                Asignacion asignacion = new Asignacion();
                asignacion.setIdasignacion(result.getInt("idasignacion"));
                asignacion.setIdficha(result.getInt("idficha"));
                asignacion.setRutTrab(result.getString("rut_trabajador"));
                asignacion.setFecha(result.getString("fecha"));
                asignacion.setHora(result.getString("hora"));
                vistasignacion.add(asignacion);
            }

            result.close();
            stmt.close();
            closeConnection();

        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }

         
         return vistasignacion;
     }
     
     @SuppressWarnings("empty-statement")
     public Asignacion findById(int idasignacion)
     {
     ResultSet result = null;
     Asignacion asignacion = null;
     
     try{
      String query ="SELECT * FROM APP.asignaciontrabajo WHERE idasignacion = ?";
      PreparedStatement stmt = getConnection().prepareStatement(query);
      stmt.setInt(1, idasignacion);
      result = stmt.executeQuery();
     
      if (!result.next()) {
                throw new SQLException();
            }
      asignacion = new Asignacion();
      asignacion.setIdasignacion(result.getInt("idasignacion"));
      
      result.close();
      stmt.close();
      closeConnection();
      
     }
     catch(SQLException se){
         System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
     };
     
     
     return asignacion;
     }
     
     
     public void save(Asignacion asignacion)
     {
     
     PreparedStatement saveAsignacion;
     
     try{
      if (asignacion.getIdasignacion()== 0) {
                saveAsignacion = getConnection().prepareStatement(
                        "INSERT INTO APP.asignaciontrabajo (idasignacion ,idficha,rut_trabajador,fecha,hora) "
                        + "VALUES (?, ?, ?, ?, ?)");
                saveAsignacion.setInt(1, asignacion.getIdasignacion());
                saveAsignacion.setInt(2, asignacion.getIdficha());
                saveAsignacion.setString(3, asignacion.getRutTrab());
                saveAsignacion.setString(4, asignacion.getFecha());
                saveAsignacion.setString(5, asignacion.getHora());
               
                System.out.println("INSERT INTO ....");
            } else {
                saveAsignacion = getConnection().prepareStatement(
                        "UPDATE APP.asignaciontrabajo SET idficha = ?,  rut_trabajador = ?  fecha = ? hora = ? WHERE  idasignacion = ?");
                
                saveAsignacion.setInt(1, asignacion.getIdficha());
                saveAsignacion.setString(2, asignacion.getRutTrab());
                saveAsignacion.setString(3, asignacion.getFecha());
                saveAsignacion.setString(4, asignacion.getHora());
                saveAsignacion.setInt(5, asignacion.getIdasignacion());
                
            }

            saveAsignacion.executeUpdate();
            closeConnection();
     
     }
     
     catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
     }
     
     
      public void delete(Asignacion asignacion) {
        PreparedStatement deAsignacion;
        try {
            deAsignacion = getConnection().prepareStatement(
                    "DELETE FROM APP.asignaciontrabajo WHERE idasignacion = ?");
            deAsignacion.setInt(1, asignacion.getIdasignacion());
            deAsignacion.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        
        
    }
     
     
     
     public void update(Asignacion asignacion)
        {
        PreparedStatement upAsignacion;
        
        try {
             upAsignacion = getConnection().prepareStatement(
                        "UPDATE APP.asignaciontrabajo SET idficha = ?,  rut_trabajador = ?  fecha = ? hora = ? WHERE  idasignacion = ?");
                
                upAsignacion.setInt(1, asignacion.getIdficha());
                upAsignacion.setString(2, asignacion.getRutTrab());
                upAsignacion.setString(3, asignacion.getFecha());
                upAsignacion.setString(4, asignacion.getHora());
                upAsignacion.setInt(5, asignacion.getIdasignacion());
                
        } catch (SQLException se){
        System.err.println("ERROR DE BASE DE DATOS - QUE WEA HACES");
        System.err.println(se);
        }
        }
     
     
     
      protected void closeConnection() {
        DataBaseInstance.closeConnection();
    }
}
