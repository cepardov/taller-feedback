/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models.beans;

/**
 *
 * @author Lab
 */

import java.util.List;
import models.dao.AsignacionDao;
import models.entity.Asignacion;


public class AsignacionBean extends Asignacion{
    
    private AsignacionDao asignacionDao = new AsignacionDao();
    
    public List<Asignacion> findAll(){
        
        return asignacionDao.findAll();
    }
    
    public Asignacion findById()
    {
        Asignacion asignacion = null;
        if (idasignacion != 0)
        {
            asignacion = asignacionDao.findById(idasignacion);
        } else {
            asignacion = new Asignacion();
        }
    
        return asignacion;
    }
    
    public void save(){
        asignacionDao.save(this);
    }
    public void update()
    {
        asignacionDao.update(this);
    }
    
    public void delete(){
        asignacionDao.delete(this);
    }
}
