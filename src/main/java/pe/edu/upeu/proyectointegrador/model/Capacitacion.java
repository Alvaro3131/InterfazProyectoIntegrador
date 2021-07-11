/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.proyectointegrador.model;

/**
 *
 * @author Alvaro Alva
 */
public class Capacitacion {
    private int idcapacitacion;
    private String nombre;

    public Capacitacion(int idcapacitacion, String nombre) {
        this.idcapacitacion = idcapacitacion;
        this.nombre = nombre;
    }

    public Capacitacion() {
    }

    public int getIdcapacitacion() {
        return idcapacitacion;
    }

    public void setIdcapacitacion(int idcapacitacion) {
        this.idcapacitacion = idcapacitacion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
