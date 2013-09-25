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
import models.entity.Trabajador;

public class TrabajadorDao {
     protected Connection getConnection() {
        return DataBaseInstance.getInstanceConnection();
    }
    
public List<Trabajador>findPorNombre(String nombre){
        List<Trabajador> listaTrabajadors = new ArrayList<Trabajador>();
        ResultSet result = null;
        try {
            String query = "SELECT * FROM APP.trabajador WHERE nombre LIKE ?";
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setString(1,"%"+nombre+"%");
            result = stmt.executeQuery();
            while (result.next()) {
                Trabajador trabajador = new Trabajador();
                trabajador.setRut(result.getString("rut"));
                trabajador.setNombre(result.getString("nombre"));
                trabajador.setCargo(result.getString("cargo"));
                trabajador.setPaterno(result.getString("paterno"));
                trabajador.setMaterno(result.getString("materno"));
                trabajador.setTelefono(result.getInt("telefono"));
                trabajador.setClave(result.getString("clave"));
                listaTrabajadors.add(trabajador);
            }
            result.close();
            stmt.close();
            closeConnection();
        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        return listaTrabajadors;
}    
    

    public List<Trabajador> findAll() {
        List<Trabajador> listaTrabajadors = new LinkedList<Trabajador>();
        ResultSet result = null;
        try {
            String query = "SELECT * FROM APP.trabajador";
            Statement stmt = getConnection().createStatement();
            result = stmt.executeQuery(query);
            while (result.next()) {
                Trabajador trabajador = new Trabajador();
                trabajador.setRut(result.getString("rut"));
                trabajador.setNombre(result.getString("nombre"));
                trabajador.setCargo(result.getString("cargo"));
                trabajador.setPaterno(result.getString("paterno"));
                trabajador.setMaterno(result.getString("materno"));
                trabajador.setTelefono(result.getInt("telefono"));
                trabajador.setClave(result.getString("clave"));
                listaTrabajadors.add(trabajador);
            }
            result.close();
            stmt.close();
            closeConnection();
        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        return listaTrabajadors;
    }

    public Trabajador findByRut(String trabajadorRut) {
        ResultSet result = null;
        Trabajador trabajador = null;
        try {
            String query = "SELECT * FROM APP.trabajador WHERE  rut = ?";
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setString(1, trabajadorRut);
            result = stmt.executeQuery();
            if (!result.next()) {
                throw new SQLException();
            }
            trabajador = new Trabajador();
            trabajador.setRut(result.getString("rut"));
            trabajador.setNombre(result.getString("nombre"));
            trabajador.setCargo(result.getString("cargo"));
            trabajador.setPaterno(result.getString("paterno"));
            trabajador.setMaterno(result.getString("materno"));
            trabajador.setTelefono(result.getInt("telefono"));
            trabajador.setClave(result.getString("clave"));

            result.close();
            stmt.close();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        return trabajador;
    }

    public void save(Trabajador trabajador) {
        PreparedStatement saveTrabajador;
        try {
            saveTrabajador = getConnection().prepareStatement(
                    "INSERT INTO APP.trabajador VALUES (?, ?, ?, ?, ?, ?, ?)");
            saveTrabajador.setString(1, trabajador.getRut());
            saveTrabajador.setString(2, trabajador.getNombre());
            saveTrabajador.setString(3, trabajador.getCargo());
            saveTrabajador.setString(4, trabajador.getPaterno());
            saveTrabajador.setString(5, trabajador.getMaterno());
            saveTrabajador.setInt(6, trabajador.getTelefono());
            saveTrabajador.setString(7, trabajador.getClave());
            saveTrabajador.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
    }
    
    public void update(Trabajador trabajador) {
        PreparedStatement saveTrabajador;
        try {
            saveTrabajador = getConnection().prepareStatement(
                 "UPDATE APP.trabajador SET nombre = ?, cargo = ?, paterno = ?, materno = ?, "
                    + "telefono = ?, clave = ? WHERE  rut = ?");
            saveTrabajador.setString(1, trabajador.getNombre());
            saveTrabajador.setString(2, trabajador.getCargo());
            saveTrabajador.setString(3, trabajador.getPaterno());
            saveTrabajador.setString(4, trabajador.getMaterno());
            saveTrabajador.setInt(5, trabajador.getTelefono());
            saveTrabajador.setString(6, trabajador.getClave());
            saveTrabajador.setString(7, trabajador.getRut());
            saveTrabajador.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
    }

    public void delete(Trabajador trabajador) {
        PreparedStatement delTrabajador;
        try {
            delTrabajador = getConnection().prepareStatement(
                    "DELETE FROM APP.trabajador WHERE rut = ?");
            delTrabajador.setString(1, trabajador.getRut());
            delTrabajador.executeUpdate();
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