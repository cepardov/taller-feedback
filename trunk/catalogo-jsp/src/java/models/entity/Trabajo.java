package models.entity;

public class Trabajo {
    
    protected int idtrabajo;
    protected int idasignacion;
    protected String observaciones;

    public int getIdtrabajo() {
        return idtrabajo;
    }

    public void setIdtrabajo(int idtrabajo) {
        this.idtrabajo = idtrabajo;
    }

    public int getIdasignacion() {
        return idasignacion;
    }

    public void setIdasignacion(int idasignacion) {
        this.idasignacion = idasignacion;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
}
