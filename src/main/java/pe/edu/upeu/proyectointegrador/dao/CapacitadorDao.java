/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.proyectointegrador.dao;

import java.util.List;
import pe.edu.upeu.proyectointegrador.model.Capacitador;
/**
 *
 * @author Alvaro Alva
 */
public interface CapacitadorDao {
      public int create(Capacitador s);
	public int update(Capacitador s);
	public Capacitador read(int id);
	public List<Capacitador> readAll();
	public int delete(int id);
}
