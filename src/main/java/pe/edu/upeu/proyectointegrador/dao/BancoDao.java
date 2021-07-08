/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.proyectointegrador.dao;

import java.util.List;
import pe.edu.upeu.proyectointegrador.model.Banco;
/**
 *
 * @author Alvaro Alva
 */
public interface BancoDao {
      public int create(Banco s);
	public int update(Banco s);
	public Banco read(int id);
	public List<Banco> readAll();
	public int delete(int id);
}
