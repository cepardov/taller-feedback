package models.beans;

import java.util.List;
import models.dao.ModeloDao;
import models.entity.Modelo;

public class ModeloBean extends Modelo {
    
     private ModeloDao modeloDao = new ModeloDao();
    
    public List<Modelo> findPorNombre() {
        return modeloDao.findPorNombre(nombre);
    }
    
 public List<Modelo> findAll() {
        return modeloDao.findAll();
    }

    public Modelo findById() {
        Modelo modelo = null;
        if (modelo != null) {
            modelo = modeloDao.findById(idmodelo);
        } else {
            modelo = new Modelo();
        }
        return modelo;
    }

    public void save() {
       modeloDao.save(this);
    }

    public void delete() {
        modeloDao.delete(this);
    }
}
