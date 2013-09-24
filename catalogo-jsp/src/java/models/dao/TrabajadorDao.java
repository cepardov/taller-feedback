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
                trabajador.setPaterno(result.getString("paterno"));
                trabajador.setMaterno(result.getString("materno"));
                trabajador.setTelefono(result.getInt("telefono"));
                trabajador.setEmail(result.getString("email"));
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
                trabajador.setPaterno(result.getString("paterno"));
                trabajador.setMaterno(result.getString("materno"));
                trabajador.setTelefono(result.getInt("telefono"));
                trabajador.setEmail(result.getString("email"));
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
            // Componemos la sentencia SQL para obtener los trabajador.
            String query = "SELECT * FROM APP.trabajador WHERE  rut = ?";

            // Ejecutamos la query y obtenemos el resultado.
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setString(1, trabajadorRut);
            result = stmt.executeQuery();

            // Vemos si no ha devuelto ningun resultado.
            if (!result.next()) {
                throw new SQLException();
            }

            // Construimos una VO para el producto.
            trabajador = new Trabajador();
            trabajador.setRut(result.getString("rut"));
            trabajador.setNombre(result.getString("nombre"));
            trabajador.setPaterno(result.getString("paterno"));
            trabajador.setMaterno(result.getString("materno"));
            trabajador.setTelefono(result.getInt("telefono"));
            trabajador.setEmail(result.getString("email"));

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
                        "INSERT INTO APP.trabajador VALUES (?, ?, ?, ?, ?, ?)");
                saveTrabajador.setString(1, trabajador.getRut());
                saveTrabajador.setString(2, trabajador.getNombre());
                saveTrabajador.setString(3, trabajador.getPaterno());
                saveTrabajador.setString(4, trabajador.getMaterno());
                saveTrabajador.setInt(5, trabajador.getTelefono());
                saveTrabajador.setString(6, trabajador.getEmail());
                System.out.println("INSERT INTO ....");
            

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
