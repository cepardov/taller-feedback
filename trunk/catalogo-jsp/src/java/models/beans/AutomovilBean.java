package models.beans;

import java.util.List;
import models.dao.AutomovilDao;
import models.entity.Automovil;

public class AutomovilBean extends Automovil {
    
    private AutomovilDao automovilDao = new AutomovilDao();
    
    public List<Automovil> findAll() {
        return automovilDao.findAll();
    }

    public Automovil findByPpu() {
        Automovil automovil = null;
        if (ppu != null) {
            automovil = automovilDao.findByPpu(ppu);
        } else {
            automovil = new Automovil();
        }
        return automovil;
    }

    public void save() {
        automovilDao.save(this);
    }
    
    public void update() {
        automovilDao.save(this);
    }

    public void delete() {
        automovilDao.delete(this);
    }
}
