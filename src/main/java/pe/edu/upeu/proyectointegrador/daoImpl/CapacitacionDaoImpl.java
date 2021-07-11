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
import pe.edu.upeu.proyectointegrador.dao.CapacitacionDao;
import pe.edu.upeu.proyectointegrador.model.Capacitacion;

/**
 *
 * @author Alvaro Alva
 */
public class CapacitacionDaoImpl implements CapacitacionDao {
private PreparedStatement ps = null;
	private ResultSet rs = null;
	private Connection cx = null;
    @Override
    public List<Capacitacion> readAll() {
        List<Capacitacion> lista = new ArrayList<>();
		String SQL = "SELECT * from capacitacion ";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			rs = ps.executeQuery();
			while (rs.next()) {
				Capacitacion a = new Capacitacion();
				a.setIdcapacitacion(rs.getInt("id_capacitacion"));
                                a.setNombre(rs.getString("nombre_capacitacion"));
				lista.add(a);
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return lista;
    }
    
}
