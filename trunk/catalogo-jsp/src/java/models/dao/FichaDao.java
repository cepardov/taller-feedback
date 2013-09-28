/**
 * @Author cepardov
 * @Versión 0
 * @Detalle 
 */
package models.dao;

import utilidades.DataBaseInstance;
import static utilidades.DataBaseInstance.closeConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import models.entity.Ficha;

public class FichaDao {
     protected Connection getConnection() {
        return DataBaseInstance.getInstanceConnection();
    }
    
//public List<Ficha>findPorNombre(String nombre){
//        List<Ficha> listaFichas = new ArrayList<Ficha>();
//        ResultSet result = null;
//        try {
//            String query = "SELECT * FROM APP.ficha WHERE nombre LIKE ?";
//            PreparedStatement stmt = getConnection().prepareStatement(query);
//            stmt.setString(1,"%"+nombre+"%");
//            result = stmt.executeQuery();
//            while (result.next()) {
//                Ficha ficha = new Ficha();
//                ficha.setRut(result.getString("rut"));
//                ficha.setNombre(result.getString("nombre"));
//                ficha.setPaterno(result.getString("paterno"));
//                ficha.setMaterno(result.getString("materno"));
//                ficha.setTelefono(result.getInt("telefono"));
//                ficha.setEmail(result.getString("email"));
//                listaFichas.add(ficha);
//            }
//            result.close();
//            stmt.close();
//            closeConnection();
//        } catch (SQLException se) {
//            System.out.println(se.toString());
//            System.err.println("Se ha producido un error de BD.");
//            System.err.println(se.getMessage());
//        }
//        return listaFichas;
//}    
    

//    public List<Ficha> findAll() {
//        List<Ficha> listaFichas = new LinkedList<Ficha>();
//        ResultSet result = null;
//        try {
//            String query = "SELECT * FROM APP.ficha";
//            Statement stmt = getConnection().createStatement();
//            result = stmt.executeQuery(query);
//            while (result.next()) {
//                Ficha ficha = new Ficha();
//                ficha.setRut(result.getString("rut"));
//                ficha.setNombre(result.getString("nombre"));
//                ficha.setPaterno(result.getString("paterno"));
//                ficha.setMaterno(result.getString("materno"));
//                ficha.setTelefono(result.getInt("telefono"));
//                ficha.setEmail(result.getString("email"));
//                listaFichas.add(ficha);
//            }
//            result.close();
//            stmt.close();
//            closeConnection();
//        } catch (SQLException se) {
//            System.out.println(se.toString());
//            System.err.println("Se ha producido un error de BD.");
//            System.err.println(se.getMessage());
//        }
//        return listaFichas;
//    }

//    public Ficha findByRut(String fichaRut) {
//        ResultSet result = null;
//        Ficha ficha = null;
//        try {
//            String query = "SELECT * FROM APP.ficha WHERE  rut = ?";
//            PreparedStatement stmt = getConnection().prepareStatement(query);
//            stmt.setString(1, fichaRut);
//            result = stmt.executeQuery();
//            if (!result.next()) {
//                throw new SQLException();
//            }
//            ficha = new Ficha();
//            ficha.setRut(result.getString("rut"));
//            ficha.setNombre(result.getString("nombre"));
//            ficha.setPaterno(result.getString("paterno"));
//            ficha.setMaterno(result.getString("materno"));
//            ficha.setTelefono(result.getInt("telefono"));
//            ficha.setEmail(result.getString("email"));
//
//            result.close();
//            stmt.close();
//            closeConnection();
//        } catch (SQLException se) {
//            System.err.println("Se ha producido un error de BD.");
//            System.err.println(se.getMessage());
//        }
//        return ficha;
//    }

    public void save(Ficha ficha) {
        PreparedStatement saveFicha;
        try {
            saveFicha = getConnection().prepareStatement(
                    "INSERT INTO APP.ficha VALUES (?, ?, ?, ?, ?, ?)");
            saveFicha.setString(1, ficha.getPatente());
            saveFicha.setString(2, ficha.getTipo());
            saveFicha.setString(3, ficha.getFecharecep());
            saveFicha.setString(4, ficha.getFechaentrega());
            saveFicha.setString(5, ficha.getObservaciones());
            saveFicha.setString(6, ficha.getEstado());
            saveFicha.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
    }
    
    public void update(Ficha ficha) {
        PreparedStatement saveFicha;
        try {
            saveFicha = getConnection().prepareStatement(
                 "UPDATE APP.ficha SET patente = ?, tipo = ?, fecharecep = ?, "
                    + "fechaentrega = ?, observaciones = ?, estado = ? WHERE  idficha = ?");
            saveFicha.setString(1, ficha.getPatente());
            saveFicha.setString(2, ficha.getTipo());
            saveFicha.setString(3, ficha.getFecharecep());
            saveFicha.setString(4, ficha.getFechaentrega());
            saveFicha.setString(5, ficha.getObservaciones());
            saveFicha.setString(6, ficha.getEstado());
            saveFicha.setInt(7, ficha.getIdficha());
            saveFicha.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
    }

    public void delete(Ficha ficha) {
        PreparedStatement delFicha;
        try {
            delFicha = getConnection().prepareStatement(
                    "DELETE FROM APP.ficha WHERE idficha = ?");
            delFicha.setInt(1, ficha.getIdficha());
            delFicha.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
    }

    protected void closeConnection() {
        DataBaseInstance.closeConnection();
    }
}
//END FILE