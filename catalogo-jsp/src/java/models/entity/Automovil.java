/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models.entity;

/**
 *
 * @author Luis
 */
public class Automovil {
  protected String ppu;
  protected String rut;
  protected String color;
  protected int idmarca;
  protected int idmodelo;
  protected int año;
  protected int cilindrada;

    public String getPpu() {
        return ppu;
    }

    public void setPpu(String ppu) {
        this.ppu = ppu;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getIdmarca() {
        return idmarca;
    }

    public void setIdmarca(int idmarca) {
        this.idmarca = idmarca;
    }

    public int getIdmodelo() {
        return idmodelo;
    }

    public void setIdmodelo(int idmodelo) {
        this.idmodelo = idmodelo;
    }

    public int getAño() {
        return año;
    }

    public void setAño(int año) {
        this.año = año;
    }

    public int getCilindrada() {
        return cilindrada;
    }

    public void setCilindrada(int cilindrada) {
        this.cilindrada = cilindrada;
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
