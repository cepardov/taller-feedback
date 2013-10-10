package models.beans;
import java.util.List;
import models.dao.ClienteDao;
import models.entity.Cliente;

public class ClienteBean extends Cliente {
    
     private ClienteDao clienteDao = new ClienteDao();
    
    public String findrutNombre() {
        clienteDao.findPorNombre(rut);
        return rut;
    }
    
    public List<Cliente> findAll() {
        return clienteDao.findAll();
    }

    public Cliente findByRut() {
        Cliente cliente = null;
        if (rut != null) {
            cliente = clienteDao.findByRut(rut);
        } else {
            cliente = new Cliente();
        }
        return cliente;
    }

    public void save() {
        clienteDao.save(this);
    }
    
    public void update() {
        clienteDao.update(this);
    }

    public void delete() {
        clienteDao.delete(this);
    }
}