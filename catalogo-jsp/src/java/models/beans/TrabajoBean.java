package models.beans;

import java.util.List;
import models.dao.TrabajoDao;
import models.entity.Trabajo;

public class TrabajoBean extends Trabajo {
    
    private TrabajoDao trabajoDao = new TrabajoDao();
    
    public List<Trabajo> findAll() {
        return trabajoDao.findAll();
    }

}
//END FILE