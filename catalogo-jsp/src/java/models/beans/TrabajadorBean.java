package models.beans;
import java.util.List;
import models.dao.TrabajadorDao;
import models.entity.Trabajador;

public class TrabajadorBean extends Trabajador {
    
     private TrabajadorDao trabajadorDao = new TrabajadorDao();
    
    public List<Trabajador> findMecanico() {
        return trabajadorDao.findMecanico();
    }
    
    public List<Trabajador> findAll() {
        return trabajadorDao.findAll();
    }

    public Trabajador findByRut() {
        Trabajador trabajador = null;
        if (rut != null) {
            trabajador = trabajadorDao.findByRut(rut);
        } else {
            trabajador = new Trabajador();
        }
        return trabajador;
    }

    public void save() {
        trabajadorDao.save(this);
    }
    
    public void update() {
        trabajadorDao.update(this);
    }

    public void delete() {
        trabajadorDao.delete(this);
    }
}