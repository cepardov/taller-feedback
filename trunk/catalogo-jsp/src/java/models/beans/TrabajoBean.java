package models.beans;

import java.util.List;
import models.dao.TrabajoDao;
import models.entity.Trabajo;

public class TrabajoBean extends Trabajo {
    
    private TrabajoDao trabajoDao = new TrabajoDao();
    
    public List<Trabajo> findAll() {
        return trabajoDao.findAll();
    }
    
    public Trabajo findById() {
        Trabajo trabajo = null;
        if (idtrabajo != 0) {
            trabajo = trabajoDao.findById(idtrabajo);
        } else {
            trabajo = new Trabajo();
        }
        return trabajo;
    }
    
    public void update() {
        trabajoDao.update(this);
    }

}
//END FILE