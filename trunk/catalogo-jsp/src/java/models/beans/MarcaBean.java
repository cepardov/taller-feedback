package models.beans;

import java.util.List;
import models.dao.MarcaDao;
import models.entity.Marca;

public class MarcaBean extends Marca {
    
     private MarcaDao marcaDao = new MarcaDao();
    
    public List<Marca> findPorNombre() {
        return marcaDao.findPorNombre(nombre);
    }
    
    public List<Marca> findAll() {
        return marcaDao.findAll();
    }

    public Marca findById() {
        Marca marca = null;
        if (idmarca != 0) {
            marca = marcaDao.findById(idmarca);
        } else {
            marca = new Marca();
        }
        return marca;
    }

    public void save() {
       marcaDao.save(this);
    }

    public void delete() {
        marcaDao.delete(this);
    }
}
