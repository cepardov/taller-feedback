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
    
     public List<Ficha> findRut(String rut) {
        List<Ficha> listaFichas = new LinkedList<Ficha>();
        ResultSet result = null;
        try {
            String query = "select f.TIPO,f.OBSERVACIONES,f.ESTADO, f.DESCRIPCION from app.FICHAAUTO f where idficha=(select a.IDFICHA from app.ASIGNACIONTRABAJO a where rut=?)";
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setString(1, rut);
            result = stmt.executeQuery();
            if (!result.next()) {
                throw new SQLException();
            }
            Ficha trabajo = new Ficha();
            trabajo = new Ficha();
            trabajo.setTipo(result.getString("tipo"));
            trabajo.setObservaciones(result.getString("observaciones"));
            trabajo.setEstado(result.getString("estado"));
            trabajo.setDescripcion(result.getString("descripcion"));
            result.close();
            stmt.close();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        return listaFichas;
    }
     
public List<Ficha>findporfecha(String fecha){
        List<Ficha> listaFichas = new ArrayList<Ficha>();
        ResultSet result = null;
        try {
            String query = "SELECT * FROM APP.fichaauto WHERE fecharecep=?";
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setString(1,fecha);
            result = stmt.executeQuery();
            while (result.next()) {
                Ficha ficha = new Ficha();
                ficha.setIdficha(result.getInt("idficha"));
                ficha.setPatente(result.getString("patente"));
                ficha.setTipo(result.getString("tipo"));
                ficha.setFecharecep(result.getString("fecharecep"));
                ficha.setFechaentrega(result.getString("fechaentrega"));
                ficha.setObservaciones(result.getString("observaciones"));
                ficha.setEstado(result.getString("estado"));
                ficha.setDescripcion(result.getString("descripcion"));
                listaFichas.add(ficha);
            }
            result.close();
            stmt.close();
            closeConnection();
        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        return listaFichas;
}    
    

    public List<Ficha> findAll() {
        List<Ficha> listaFichas = new LinkedList<Ficha>();
        ResultSet result = null;
        try {
            String query = "SELECT * FROM APP.ficha";
            Statement stmt = getConnection().createStatement();
            result = stmt.executeQuery(query);
            while (result.next()) {
                Ficha ficha = new Ficha();
                ficha.setIdficha(result.getInt("idficha"));
                ficha.setPatente(result.getString("patente"));
                ficha.setTipo(result.getString("tipo"));
                ficha.setFecharecep(result.getString("fecharecep"));
                ficha.setFechaentrega(result.getString("fechaentrega"));
                ficha.setObservaciones(result.getString("observaciones"));
                ficha.setEstado(result.getString("estado"));
                ficha.setDescripcion("descripcion");
                listaFichas.add(ficha);
            }
            result.close();
            stmt.close();
            closeConnection();
        } catch (SQLException se) {
            System.out.println(se.toString());
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        return listaFichas;
    }

    public Ficha findById(String id) {
        ResultSet result = null;
        Ficha ficha = null;
        try {
            String query = "SELECT * FROM APP.fichaauto WHERE  patente = ?";
            PreparedStatement stmt = getConnection().prepareStatement(query);
            stmt.setString(1, id);
            result = stmt.executeQuery();
            if (!result.next()) {
                throw new SQLException();
            }
            ficha = new Ficha();
            ficha.setIdficha(result.getInt("idficha"));
            ficha.setPatente(result.getString("patente"));
            ficha.setTipo(result.getString("tipo"));
            ficha.setFecharecep(result.getString("fecharecep"));
            ficha.setFechaentrega(result.getString("fechaentrega"));
            ficha.setObservaciones(result.getString("observaciones"));
            ficha.setEstado(result.getString("estado"));
            ficha.setDescripcion(result.getString("descripcion"));

            result.close();
            stmt.close();
            closeConnection();
        } catch (SQLException se) {
            System.err.println("Se ha producido un error de BD.");
            System.err.println(se.getMessage());
        }
        return ficha;
    }

    public void save(Ficha ficha) {
        PreparedStatement saveFicha;
        try {
            saveFicha = getConnection().prepareStatement(
                    "INSERT INTO APP.fichaauto VALUES (?, ?, ?, ?, ?, ?, ?)");
            saveFicha.setString(1, ficha.getPatente());
            saveFicha.setString(2, ficha.getTipo());
            saveFicha.setString(3, ficha.getFecharecep());
            saveFicha.setString(4, ficha.getFechaentrega());
            saveFicha.setString(5, ficha.getObservaciones());
            saveFicha.setString(6, ficha.getEstado());
            saveFicha.setString(7, ficha.getDescripcion());
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
                 "UPDATE APP.fichaauto SET patente = ?, tipo = ?, fecharecep = ?, "
                    + "fechaentrega = ?, observaciones = ?, estado = ?, descripcion = ? WHERE  idficha = ?");
            saveFicha.setString(1, ficha.getPatente());
            saveFicha.setString(2, ficha.getTipo());
            saveFicha.setString(3, ficha.getFecharecep());
            saveFicha.setString(4, ficha.getFechaentrega());
            saveFicha.setString(5, ficha.getObservaciones());
            saveFicha.setString(6, ficha.getEstado());
            saveFicha.setString(7, ficha.getDescripcion());
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
                    "DELETE FROM APP.fichaauto WHERE idficha = ?");
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