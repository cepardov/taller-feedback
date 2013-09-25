/**
 * @Author cepardov
 * @Versión 0
 */
package models.entity;

public class Trabajador {
    protected String rut;
    protected String nombre;
    protected String paterno;
    protected String materno;
    protected String cargo;
    protected int telefono;
    protected String clave;

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPaterno() {
        return paterno;
    }

    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    public String getMaterno() {
        return materno;
    }

    public void setMaterno(String materno) {
        this.materno = materno;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }
    
    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }
    
    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
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
     * buf.append(" Cargo: ");
     * buf.append(Integer.toString(getCargo()));
     * buf.append(" Clave");
     * buf.append(getClave());
     * return buf.toString();
     * }*/

    
}
//END FILE