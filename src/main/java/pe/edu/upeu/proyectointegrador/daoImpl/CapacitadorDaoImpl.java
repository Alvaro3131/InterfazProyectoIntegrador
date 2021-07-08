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
import pe.edu.upeu.proyectointegrador.dao.CapacitadorDao;
import pe.edu.upeu.proyectointegrador.model.Capacitador;

/**
 *
 * @author Alvaro Alva
 */
public class CapacitadorDaoImpl implements CapacitadorDao {
private PreparedStatement ps = null;
	private ResultSet rs = null;
	private Connection cx = null;
    @Override
    public int create(Capacitador s) {
       int x = 0;
		String SQL = "insert into capacitador (especialidad,id_usuario ) value(?,?)";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
                        ps.setString(1, s.getEspecialidad());
			ps.setInt(2, s.getIdcapacitador());
                       
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
    }

    @Override
    public int update(Capacitador s) {
        int x = 0;
		String SQL = "update capacitador set especialidad=?  where id_usuario = ?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			
			ps.setString(1, s.getEspecialidad());
                        ps.setInt(2, s.getIdcapacitador());
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
    }

    @Override
    public Capacitador read(int id) {
        Capacitador a = new Capacitador();
		String SQL = "select *from capacitador where id_usuario=?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {				
				
                                a.setIdcapacitador(rs.getInt("id_usuario"));
                                a.setEspecialidad(rs.getString("especialidad"));  
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return a;
    }

    @Override
    public List<Capacitador> readAll() {
       List<Capacitador> lista = new ArrayList<>();
		String SQL = "SELECT c.especialidad, c.id_usuario, u.nombre FROM capacitador c join usuario u on c.id_usuario=u.id_usuario";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			rs = ps.executeQuery();
			while (rs.next()) {
				Capacitador a = new Capacitador();
				a.setIdcapacitador(rs.getInt("c.id_usuario"));
                                a.setEspecialidad(rs.getString("c.especialidad"));  
                                a.setNombre(rs.getString("u.nombre"));
                             
				lista.add(a);
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return lista;
    }

    @Override
    public int delete(int id) {
       int x = 0;
		String SQL = "delete from capacitador where id_usuario=?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps.setInt(1, id);
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
    }
    
}
