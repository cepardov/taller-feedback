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
import models.entity.Automovil;

public class AutomovilDao {
     protected Connection getConnection() {
        return DataBaseInstance.getInstanceConnection();
    }
    
    public List<Automovil> findAll() {
        List<Automovil> listaAutomoviles = new ArrayList<Automovil>();
        ResultSet result = null;

        try {

            String query = "SELECT * FROM APP.automovil";
            Statement stmt = getConnection().createStatement();
            result = stmt.executeQuery(query);

            while (result.next()) {
                Automovil automovil = new Automovil();
                automovil.setPatente(result.getString("patente"));
                automovil.setRut(result.getString("rut"));
                automovil.setColor(result.getString("color"));
                automovil.setIdmarca(result.getInt("idmarca"));
                automovil.setIdmodelo(result.getInt("idmodelo"));
                automovil.setAño(result.getString("año"));
                automovil.setCilindrada(result.getString("cilindrada"));
                listaAutomoviles.add(automovil);
            }

            result.close();
            stmt.close();
            closeConnection();

        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }

        return listaAutomoviles;
    }

    public Automovil findByPatente(String patente) {
        ResultSet result = null;
        Automovil automovil = null;

        try {
            // Componemos la sentencia SQL para obtener los cliente.
            String query = "SELECT * FROM APP.automovil WHERE  patente = ?";

            // Ejecutamos la query y obtenemos el resultado.
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setString(1, patente);
            result = stmt.executeQuery();

            // Vemos si no ha devuelto ningun resultado.
            if (!result.next()) {
                throw new SQLException();
            }

            // Construimos una VO para el producto.
            automovil = new Automovil();
            automovil.setPatente(result.getString("patente"));
            automovil.setRut(result.getString("rut"));
            automovil.setColor(result.getString("color"));
            automovil.setIdmarca(result.getInt("idmarca"));
            automovil.setIdmodelo(result.getInt("idmodelo"));
            automovil.setAño(result.getString("año"));
            automovil.setCilindrada(result.getString("cilindrada"));

            result.close();
            stmt.close();
            closeConnection();

        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }

        return automovil;
    }

    public void save(Automovil automovil) {

        PreparedStatement saveAutomovil;
        try {
            
                saveAutomovil = getConnection().prepareStatement(
                        "INSERT INTO APP.automovil VALUES (?, ?, ?, ?, ?, ?, ?)");
                saveAutomovil.setString(1, automovil.getPatente());
                saveAutomovil.setString(2, automovil.getRut());
                saveAutomovil.setString(3, automovil.getColor());
                saveAutomovil.setInt(4, automovil.getIdmarca());
                saveAutomovil.setInt(5, automovil.getIdmodelo());
                saveAutomovil.setString(6, automovil.getAño());
                saveAutomovil.setString(7, automovil.getCilindrada());
                System.out.println("INSERT INTO ....");
            

            saveAutomovil.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
    }

    public void delete(Automovil automovil) {
        PreparedStatement delAutomovil;
        try {

                delAutomovil = getConnection().prepareStatement(
                        "DELETE FROM APP.automovil WHERE patente = ?");

                delAutomovil.setString(1, automovil.getPatente());
                delAutomovil.executeUpdate();
            


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
