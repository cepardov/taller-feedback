package models.beans;

import java.util.List;
import models.dao.ClienteDao;
import models.dao.ModeloDao;
import models.entity.Cliente;
import models.entity.Modelo;

public class ModeloBean extends Cliente {
    
     private ModeloDao modeloDao = new ModeloDao();
    
    public List<Modelo> findPorNombre() {
        return modeloDao.findPorNombre(nombre);
    }
    
//    public List<Modelo> findAll() {
//        return modeloDao.findAll();
//    }
    
//Desde aqui esta la parte que los errores
    
//  public Modelo findById() {
//        Modelo modelo = null;
//        if (id > 0) {
//            modelo = modeloDao.findById(id);
//        } else {
//            modelo = new Modelo();
//        }
//        return Modelo;
//    }
//
//    public void save() {
//        modeloDao.save(this);
//    }
//
//    public void delete() {
//        modeloDao.delete(this);
//    }
}
