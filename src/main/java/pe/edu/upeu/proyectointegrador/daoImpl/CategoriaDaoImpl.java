/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.proyectointegrador.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import pe.edu.upeu.proyectointegrador.config.Conexion;
import pe.edu.upeu.proyectointegrador.dao.CategoriaDao;
import pe.edu.upeu.proyectointegrador.model.Categoria;

/**
 *
 * @author Alvaro Alva
 */
public class CategoriaDaoImpl implements CategoriaDao {
private PreparedStatement ps = null;
	private ResultSet rs = null;
	private Connection cx = null;
    @Override
    public List<Categoria> readAll() {
         List<Categoria> lista = new ArrayList<>();
		String SQL = "SELECT * from categoria ";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			rs = ps.executeQuery();
			while (rs.next()) {
				Categoria a = new Categoria();
				a.setIdcategoria(rs.getInt("id_categoria"));
                                a.setEstado(rs.getString("estado"));
				lista.add(a);
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return lista;
    }
    
}
