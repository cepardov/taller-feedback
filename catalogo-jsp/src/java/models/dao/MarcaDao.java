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
import models.entity.Marca;

public class MarcaDao {
     protected Connection getConnection() {
        return DataBaseInstance.getInstanceConnection();
    }
    public List<Marca>findPorNombre(String nombre){
            List<Marca> listaMarcas = new ArrayList<Marca>();
            ResultSet result = null;

            try {

                String query = "SELECT * FROM APP.marca WHERE nombre LIKE ?";
                PreparedStatement stmt = getConnection().prepareStatement(query);
                stmt.setString(1,"%"+nombre+"%");
                result = stmt.executeQuery();

                while (result.next()) {
                    Marca marca = new Marca();
                    marca.setId(result.getInt("idmarca"));
                    marca.setNombre(result.getString("nombre"));
                    
                    listaMarcas.add(marca);
                }

                result.close();
                stmt.close();
                closeConnection();

            } catch (SQLException se) {
                System.out.println(se.toString());
                System.err.println("Se ha producido un error de BD.");
                System.err.println(se.getMessage());
            }

            return listaMarcas;

    }    
    
    public List<Marca> findAll() {
        List<Marca> listaMarca = new LinkedList<Marca>();
        ResultSet result = null;

        try {

            String query = "SELECT * FROM APP.marca";
            Statement stmt = getConnection().createStatement();
            result = stmt.executeQuery(query);

            while (result.next()) {
                Marca marca = new Marca();
                marca.setId(result.getInt("idmarca"));
                marca.setNombre(result.getString("nombre"));
                
                listaMarca.add(marca);
            }

            result.close();
            stmt.close();
            closeConnection();

        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }

        return listaMarca;
    }

    public Marca findById(int marcaId) {
        ResultSet result = null;
        Marca marca = null;

        try {
            // Componemos la sentencia SQL para obtener los productos.
            String query = "SELECT * FROM APP.marca WHERE  idmarca = ?";

            // Ejecutamos la query y obtenemos el resultado.
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setInt(1, marcaId);
            result = stmt.executeQuery();

            // Vemos si no ha devuelto ningun resultado.
            if (!result.next()) {
                throw new SQLException();
            }

            // Construimos una VO para el producto.
            marca = new Marca();
            marca.setId(result.getInt("idmarca"));
            marca.setNombre(result.getString("nombre"));
            

            result.close();
            stmt.close();
            closeConnection();

        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }

        return marca;
    }

    public void save(Marca marca) {

        PreparedStatement saveProduct;
        try {

            if (marca.getId() == 0) {
                saveProduct = getConnection().prepareStatement(
                        "INSERT INTO APP.marca (nombre) "
                        + "VALUES (?)");
                saveProduct.setString(1, marca.getNombre());
                System.out.println("INSERT INTO ....");
            } else {
                saveProduct = getConnection().prepareStatement(
                        "UPDATE APP.marca SET nombre = ? WHERE  idmarca = ?");
                saveProduct.setString(1, marca.getNombre());
                saveProduct.setInt(2, marca.getId());
                System.out.println("UPDATE...");
            }

            saveProduct.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
    }
    
//    public void update(Marca marca) {
//        PreparedStatement saveMarca;
//        try {
//            saveMarca = getConnection().prepareStatement(
//                 "UPDATE APP.marca SET nombre = ? WHERE  idmarca = ?");
//            saveMarca.setString(1, marca.getNombre());
//            saveMarca.setInt(2, marca.getId());
//            saveMarca.executeUpdate();
//            closeConnection();
//        } catch (SQLException se) {
//            System.err.println("Se ha producido un error de BD.");
//            System.err.println(se.getMessage());
//        }
//    }

    public void delete(Marca marca) {
        PreparedStatement saveProduct;
        try {

            if (marca.getId() > 0) {
                saveProduct = getConnection().prepareStatement(
                        "DELETE FROM APP.marca WHERE idmarca = ?");

                saveProduct.setInt(1, marca.getId());
                saveProduct.executeUpdate();
            }


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
