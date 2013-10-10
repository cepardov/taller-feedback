package models.beans;
import java.util.List;
import models.dao.TransaccionDao;
import models.entity.Transaccion;

public class TransaccionBean extends Transaccion {
    
    private TransaccionDao transaccionDao = new TransaccionDao();
    
    public List<Transaccion> findAll() {
        return transaccionDao.findAll();
    }
    
       public void delete() {
        transaccionDao.delete(this);
    }
    
}
