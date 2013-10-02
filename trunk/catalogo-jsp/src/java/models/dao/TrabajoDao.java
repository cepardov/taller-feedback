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
import models.entity.Trabajo;

public class TrabajoDao {
     protected Connection getConnection() {
        return DataBaseInstance.getInstanceConnection();
    }

    public List<Trabajo> findAll() {
        List<Trabajo> listaTrabajos = new LinkedList<Trabajo>();
        ResultSet result = null;
        try {
            String query = "SELECT * FROM APP.trabajo";
            Statement stmt = getConnection().createStatement();
            result = stmt.executeQuery(query);
            while (result.next()) {
                Trabajo trabajo = new Trabajo();
                trabajo.setIdtrabajo(result.getInt("idtrabajo"));
                trabajo.setIdrepuesto(result.getInt("idrepuesto"));
                trabajo.setIdasignacion(result.getInt("idasignacion"));
                trabajo.setObservaciones(result.getString("observaciones"));
                listaTrabajos.add(trabajo);
            }
            result.close();
            stmt.close();
            closeConnection();
        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        return listaTrabajos;
    }

    protected void closeConnection() {
        DataBaseInstance.closeConnection();
    }
}
//END FILE