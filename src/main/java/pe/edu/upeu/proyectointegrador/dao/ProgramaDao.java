/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.proyectointegrador.dao;

import java.util.List;
import pe.edu.upeu.proyectointegrador.model.Programa;
/**
 *
 * @author Alvaro Alva
 */
public interface ProgramaDao {
    public int create(Programa u);
	public int update(Programa u);
	public Programa read(int id);
	public List<Programa> readAll();
	public int delete(int id);
}
