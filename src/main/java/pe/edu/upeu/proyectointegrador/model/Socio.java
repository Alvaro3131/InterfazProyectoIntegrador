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
public class Socio {
    private int idsocio;
    private int idbanco;
    private String estado;
 private String nbanco;
  private String nusuario;

    public String getNbanco() {
        return nbanco;
    }

    public void setNbanco(String nbanco) {
        this.nbanco = nbanco;
    }

    public String getNusuario() {
        return nusuario;
    }

    public void setNusuario(String nusuario) {
        this.nusuario = nusuario;
    }
    public Socio(int idsocio, int idbanco, String estado) {
        this.idsocio = idsocio;
        this.idbanco = idbanco;
        this.estado = estado;
    }

    public Socio() {
    }

    public int getIdsocio() {
        return idsocio;
    }

    public void setIdsocio(int idsocio) {
        this.idsocio = idsocio;
    }

    public int getIdbanco() {
        return idbanco;
    }

    public void setIdbanco(int idbanco) {
        this.idbanco = idbanco;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
}
