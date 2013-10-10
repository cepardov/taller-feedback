package models.entity;

public class Marca {
    
    protected int idmarca;
    protected String nombre;

    public int getId() {
        return idmarca;
    }

    public void setId(int idmarca) {
        this.idmarca = idmarca;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}