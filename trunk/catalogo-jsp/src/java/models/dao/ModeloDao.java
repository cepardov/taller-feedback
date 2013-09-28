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
import models.entity.Modelo;

public class ModeloDao {
     protected Connection getConnection() {
        return DataBaseInstance.getInstanceConnection();
    }

 public Modelo findById(int modeloid) {
        ResultSet result = null;
        Modelo modelo = null;

        try {
            // Componemos la sentencia SQL para obtener los productos.
            String query = "SELECT * FROM APP.modelo WHERE  id = ?";

            // Ejecutamos la query y obtenemos el resultado.
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setInt(1, modeloid);
            result = stmt.executeQuery();

            // Vemos si no ha devuelto ningun resultado.
            if (!result.next()) {
                throw new SQLException();
            }

            // Construimos una VO para el producto.
            modelo = new Modelo();
            modelo.setIdmodelo(result.getInt("idmodelo"));

            result.close();
            stmt.close();
            closeConnection();

        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }

        return modelo;
    }
     
public List<Modelo>findPorNombre(String nombre){
        List<Modelo> listaModelos = new ArrayList<Modelo>();
        ResultSet result = null;

        try {

            String query = "SELECT * FROM APP.modelo WHERE nombre LIKE ?";
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setString(1,"%"+nombre+"%");
            result = stmt.executeQuery();

            while (result.next()) {
                Modelo modelo = new Modelo();
                modelo.setNombre(result.getString("nombre"));
                listaModelos.add(modelo);
            }

            result.close();
            stmt.close();
            closeConnection();

        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }

        return listaModelos;

}    
  public List<Modelo> findAll() {
        List<Modelo> listaModelo = new LinkedList<Modelo>();
        ResultSet result = null;

        try {

            String query = "SELECT * FROM APP.modelo";
            Statement stmt = getConnection().createStatement();
            result = stmt.executeQuery(query);

            while (result.next()) {
                Modelo modelo = new Modelo();
                modelo.setIdmodelo(result.getInt("idmodelo"));
                modelo.setNombre(result.getString("nombre"));
                modelo.setMarca(result.getInt("idmarca"));
                
                listaModelo.add(modelo);
            }

            result.close();
            stmt.close();
            closeConnection();

        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }

        return listaModelo;
    }

    public void save(Modelo modelo) {

        PreparedStatement saveModelo;
        try {
            
                saveModelo = getConnection().prepareStatement(
                        "INSERT INTO APP.modelo VALUES (?,?)");
                saveModelo.setString(1, modelo.getNombre());
                saveModelo.setInt(2, modelo.getMarca());
                System.out.println("INSERT INTO ....");
            

            saveModelo.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
    }

    public void delete(Modelo modelo) {
        PreparedStatement delModelo;
        try {

                delModelo = getConnection().prepareStatement(
                        "DELETE FROM APP.modelo WHERE idmodelo = ?");

                delModelo.setInt(1, modelo.getIdmodelo());
                delModelo.executeUpdate();
          
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
