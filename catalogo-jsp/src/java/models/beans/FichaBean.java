package models.beans;

import java.util.List;
import models.dao.FichaDao;
import models.entity.Ficha;

public class FichaBean extends Ficha {
    
     private FichaDao fichaDao = new FichaDao();
    
    public String findId() {
        fichaDao.findById(patente);
        return patente;
    }
    
    public List<Ficha> findAll() {
        return fichaDao.findAll();
    }

//    public Ficha findbypatente() {
//        Ficha ficha = null;
//        if (patente != null) {
//            ficha = fichaDao.findPorId();
//        } else {
//            ficha = new Ficha();
//        }
//        return ficha;
//    }

    public void save() {
        fichaDao.save(this);
    }
    
    public void update() {
        fichaDao.update(this);
    }

    public void delete() {
        fichaDao.delete(this);
    }
}
//END FILE