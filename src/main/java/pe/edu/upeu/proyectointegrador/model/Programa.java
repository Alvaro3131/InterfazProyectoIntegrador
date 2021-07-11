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
public class Programa {
    private int idprograma;
    private String nombre;
    private String url;
    private String inicio;
    private String fin;
    private int idcategoria;
     private int idcapacitacion;
      private int idcapacitador;
String nomcategoria;
String nomcapaci;
String nomcapa;

    public String getNomcategoria() {
        return nomcategoria;
    }

    public void setNomcategoria(String nomcategoria) {
        this.nomcategoria = nomcategoria;
    }

    public String getNomcapaci() {
        return nomcapaci;
    }

    public void setNomcapaci(String nomcapaci) {
        this.nomcapaci = nomcapaci;
    }

    public String getNomcapa() {
        return nomcapa;
    }

    public void setNomcapa(String nomcapa) {
        this.nomcapa = nomcapa;
    }
    public Programa() {
    }

    public Programa(int idprograma, String nombre, String url, String inicio, String fin, int idcategoria, int idcapacitacion, int idcapacitador) {
        this.idprograma = idprograma;
        this.nombre = nombre;
        this.url = url;
        this.inicio = inicio;
        this.fin = fin;
        this.idcategoria = idcategoria;
        this.idcapacitacion = idcapacitacion;
        this.idcapacitador = idcapacitador;
    }

    public int getIdcapacitador() {
        return idcapacitador;
    }

    public void setIdcapacitador(int idcapacitador) {
        this.idcapacitador = idcapacitador;
    }

    public int getIdprograma() {
        return idprograma;
    }

    public void setIdprograma(int idprograma) {
        this.idprograma = idprograma;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getInicio() {
        return inicio;
    }

    public void setInicio(String inicio) {
        this.inicio = inicio;
    }

    public String getFin() {
        return fin;
    }

    public void setFin(String fin) {
        this.fin = fin;
    }

    public int getIdcategoria() {
        return idcategoria;
    }

    public void setIdcategoria(int idcategoria) {
        this.idcategoria = idcategoria;
    }

    public int getIdcapacitacion() {
        return idcapacitacion;
    }

    public void setIdcapacitacion(int idcapacitacion) {
        this.idcapacitacion = idcapacitacion;
    }
}
