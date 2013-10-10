package models.dao;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import models.entity.Repuesto;
import utilidades.DataBaseInstance;

public class RepuestoDao {

    protected Connection getConnection() {
        return DataBaseInstance.getInstanceConnection();
    }

    public List<Repuesto> findAll() {
        List<Repuesto> listaRepuesto = new LinkedList<Repuesto>();
        ResultSet result = null;

        try {

            String query = "SELECT * FROM APP.repuesto";
            Statement stmt = getConnection().createStatement();
            result = stmt.executeQuery(query);

            while (result.next()) {
                Repuesto repuesto = new Repuesto();
                repuesto.setIdrepuesto(result.getInt("idrepuesto"));
                repuesto.setNombre(result.getString("nombre"));
                repuesto.setDescripcion(result.getString("descripcion"));
                listaRepuesto.add(repuesto);
            }

            result.close();
            stmt.close();
            closeConnection();

        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }

        return listaRepuesto;
    }

    public Repuesto findById(int idrepuesto) {
        ResultSet result = null;
        Repuesto repuesto = null;

        try {
           
            String query = "SELECT * FROM APP.repuesto WHERE  idrepuesto = ?";          
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setInt(1, idrepuesto);
            result = stmt.executeQuery();

      
            if (!result.next()) {
                throw new SQLException();
            }
            
                repuesto = new Repuesto();
                repuesto.setIdrepuesto(result.getInt("idrepuesto"));
                repuesto.setNombre(result.getString("nombre"));
                repuesto.setDescripcion(result.getString("descripcion"));

            result.close();
            stmt.close();
            closeConnection();

        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }

        return repuesto;
    }

    public void save(Repuesto repuesto) {

        PreparedStatement saveProduct;
        try {

            if (repuesto.getIdrepuesto()== 0) {
                saveProduct = getConnection().prepareStatement(
                        "INSERT INTO APP.repuesto (nombre ,descripcion) "
                        + "VALUES (?, ?)");
                saveProduct.setString(1, repuesto.getNombre());
                saveProduct.setString(2, repuesto.getDescripcion());
               
                System.out.println("INSERT INTO ....");
            } else {
                saveProduct = getConnection().prepareStatement(
                        "UPDATE APP.repuesto SET nombre = ?,  descripcion = ? WHERE  idrepuesto = ?");
                saveProduct.setString(1, repuesto.getNombre());
                saveProduct.setString(2, repuesto.getDescripcion());
                saveProduct.setInt(3, repuesto.getIdrepuesto());
                
            }

            saveProduct.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
    }

    public void update(Repuesto repuesto)
            
    {
    PreparedStatement updateRepuesto;
    
    try{
        updateRepuesto = getConnection().prepareStatement(
                "UPDATE APP.repuesto SET nombre = ?,  descripcion = ? WHERE  idrepuesto = ?");
        updateRepuesto.setString(1, repuesto.getNombre());
                updateRepuesto.setString(2, repuesto.getDescripcion());
                updateRepuesto.setInt(3, repuesto.getIdrepuesto());
    }
    catch(SQLException se){
    System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());}
    }
    
    public void delete(Repuesto repuesto) {
        PreparedStatement saveProduct;
        try {
                saveProduct = getConnection().prepareStatement(
                        "DELETE FROM APP.repuesto WHERE idrepuesto = ?");

                saveProduct.setInt(1, repuesto.getIdrepuesto());
                saveProduct.executeUpdate();
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