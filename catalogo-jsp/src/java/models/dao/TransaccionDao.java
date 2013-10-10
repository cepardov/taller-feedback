package models.dao;
import utilidades.DataBaseInstance;
import static utilidades.DataBaseInstance.closeConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import models.entity.Transaccion;

public class TransaccionDao {
    protected Connection getConnection() {
        return DataBaseInstance.getInstanceConnection();
    }

    public Transaccion findById(int idtransaccion) {
        ResultSet result = null;
        Transaccion transaccion = null;
        try {
            String query = "SELECT * FROM APP.transaccionrepuesto WHERE  idtransaccion = ?";
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setInt(1, idtransaccion);
            result = stmt.executeQuery();
            if (!result.next()) {
                throw new SQLException();
            }
            transaccion = new Transaccion();
            transaccion.setIdtransaccion(result.getInt("idtransaccion"));
            transaccion.setIdficha(result.getInt("idficha"));
            transaccion.setIdrepuesto(result.getInt("idrepuesto"));
            result.close();
            stmt.close();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        return transaccion;
    }
     
    public List<Transaccion> findAll() {
        List<Transaccion> listaTransaccions = new LinkedList<Transaccion>();
        ResultSet result = null;
        try {
            String query = "SELECT * FROM APP.transaccionrepuesto";
            Statement stmt = getConnection().createStatement();
            result = stmt.executeQuery(query);
            while (result.next()) {
                Transaccion transaccion = new Transaccion();
                transaccion.setIdtransaccion(result.getInt("idtransaccion"));
                transaccion.setIdficha(result.getInt("idasignacion"));
                transaccion.setIdrepuesto(result.getInt("idrepuesto"));
                listaTransaccions.add(transaccion);
            }
            result.close();
            stmt.close();
            closeConnection();
        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        return listaTransaccions;
    }
    public void save(Transaccion transaccion) {
        PreparedStatement saveTransaccion;
        try {
            saveTransaccion = getConnection().prepareStatement(
                    "INSERT INTO APP.transaccionrepuesto VALUES (?, ?)");
            saveTransaccion.setInt(1, transaccion.getIdficha());
            saveTransaccion.setInt(2, transaccion.getIdrepuesto());
            saveTransaccion.executeUpdate();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
    }

      public void delete(Transaccion trabajador) {
        PreparedStatement delTransaccion;
        try {
            delTransaccion = getConnection().prepareStatement(
                    "DELETE FROM APP.transaccionrepuesto WHERE idtransaccion = ?");
            delTransaccion.setInt(1, trabajador.getIdtransaccion());
            delTransaccion.executeUpdate();
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
