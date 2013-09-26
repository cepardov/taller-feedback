/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models.entity;

/**
 *
 * @author Luis
 */
public class Modelo {
    protected int idmodelo;
    protected String nombre;
    protected String marca;

    public int getIdmodelo() {
        return idmodelo;
    }

    public void setIdmodelo(int idmodelo) {
        this.idmodelo = idmodelo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
     
        
    /* public String toString() {
     * StringBuffer buf = new StringBuffer();
     * buf.append("rut: ");
     * buf.append(getRut());
     * buf.append(" Nombre: ");
     * buf.append(getNombre());
     * buf.append(" Paterno: ");
     * buf.append(getPaterno());
     * buf.append(" Materno: ");
     * buf.append(getMaterno());
     * buf.append(" Telefono: ");
     * buf.append(Integer.toString(getTelefono()));
     * buf.append(" Email");
     * buf.append(getEmail());
     * return buf.toString();
     * }*/
}
