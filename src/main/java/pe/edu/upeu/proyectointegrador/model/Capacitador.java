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
public class Capacitador {
    private String especialidad;
    private int idcapacitador;
    private String nombre;
    public Capacitador() {
    }

    public Capacitador(String especialidad, int idcapacitador) {
        this.especialidad = especialidad;
        this.idcapacitador = idcapacitador;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public int getIdcapacitador() {
        return idcapacitador;
    }

    public void setIdcapacitador(int idcapacitador) {
        this.idcapacitador = idcapacitador;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
