package models.entity;

public class Asignacion {
    
    protected int idasignacion;
    protected int idficha;
    protected String rutTrab;
    protected String fecha;
    protected String hora;

    public int getIdasignacion() {
        return idasignacion;
    }

    public void setIdasignacion(int idasignacion) {
        this.idasignacion = idasignacion;
    }

    public int getIdficha() {
        return idficha;
    }

    public void setIdficha(int idficha) {
        this.idficha = idficha;
    }

    public String getRutTrab() {
        return rutTrab;
    }

    public void setRutTrab(String rutTrab) {
        this.rutTrab = rutTrab;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }
}