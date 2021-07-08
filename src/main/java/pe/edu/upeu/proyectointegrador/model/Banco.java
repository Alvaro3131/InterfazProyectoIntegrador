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
public class Banco {
    private int idbanco;
    private String nombre;

    public Banco() {
    }

    public Banco(int idbanco, String nombre) {
        this.idbanco = idbanco;
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getIdbanco() {
        return idbanco;
    }

    public void setIdbanco(int idbanco) {
        this.idbanco = idbanco;
    }
}
