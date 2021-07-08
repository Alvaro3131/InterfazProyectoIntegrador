/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.proyectointegrador.dao;

import java.util.List;
import pe.edu.upeu.proyectointegrador.model.Socio;
/**
 *
 * @author Alvaro Alva
 */
public interface SocioDao {
    public int create(Socio s);
	public int update(Socio s);
	public Socio read(int id);
	public List<Socio> readAll();
	public int delete(int id);
}
