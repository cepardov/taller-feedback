package models.beans;
import java.util.List;
import models.dao.RepuestoDao;
import models.entity.Repuesto;

public class RepuestoBean extends Repuesto {
    
     private RepuestoDao repuestoDao = new RepuestoDao();
    
   
    
    public List<Repuesto> findAll() {
        return repuestoDao.findAll();
    }

    public Repuesto findById() {
        Repuesto repuesto = null;
        if (idrepuesto != 0) {
            repuesto = repuestoDao.findById(idrepuesto);
        } else {
            repuesto = new Repuesto();
        }
        return repuesto;
    }

    public void save() {
       repuestoDao.save(this);
    }
public void update(){
repuestoDao.update(this);
}
    
    public void delete() {
        repuestoDao.delete(this);
    }
}