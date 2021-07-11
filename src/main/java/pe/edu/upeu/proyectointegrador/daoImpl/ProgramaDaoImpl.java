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
import pe.edu.upeu.proyectointegrador.dao.ProgramaDao;
import pe.edu.upeu.proyectointegrador.model.Programa;

/**
 *
 * @author Alvaro Alva
 */
public class ProgramaDaoImpl implements ProgramaDao {
private PreparedStatement ps = null;
	private ResultSet rs = null;
	private Connection cx = null;
    @Override
    public int create(Programa u) {
        int x = 0;
		String SQL = "insert into programa_capacitacion (id_programa,url,fecha_inicio, fecha_fin, id_categoria,id_capacitacion, id_usuario, nombre_programa ) values(?,?,?,?,?,?,?,?)";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
                        ps.setInt(1, u.getIdprograma());
			ps.setString(2, u.getUrl());
			ps.setString(3, u.getInicio());
                        ps.setString(4, u.getFin());
                       ps.setInt(5, u.getIdcategoria());
                       ps.setInt(6, u.getIdcapacitacion());
                       ps.setInt(7, u.getIdcapacitador());
                         ps.setString(8, u.getNombre());
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
    }

    @Override
    public int update(Programa u) {
       int x = 0;
		String SQL = "update programa_capacitacion set URL=?, fecha_inicio=?, fecha_fin=? , id_categoria=?, id_capacitacion=?,  id_usuario=?,nombre_programa=?  where id_programa = ? ";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps = cx.prepareStatement(SQL);
                        
			ps.setString(1, u.getUrl());
			ps.setString(2, u.getInicio());
                        ps.setString(3, u.getFin());
                       ps.setInt(4, u.getIdcategoria());
                       ps.setInt(5, u.getIdcapacitacion());
                       ps.setInt(6, u.getIdcapacitador());
                       ps.setString(7, u.getNombre());
                         ps.setInt(8, u.getIdprograma());
			
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
    }

    @Override
    public Programa read(int id) {
      Programa a = new Programa();
		String SQL = "select *from programa_capacitacion where id_programa=?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {				
				a.setIdprograma(rs.getInt("id_programa"));
                                a.setUrl(rs.getString("url"));  
                                a.setInicio(rs.getString("fecha_inicio"));  
                                a.setFin(rs.getString("fecha_fin"));  
                                a.setIdcategoria(rs.getInt("id_categoria"));
                                a.setIdcapacitacion(rs.getInt("id_capacitacion"));
                                a.setIdcapacitador(rs.getInt("id_usuario"));
                                 a.setNombre(rs.getString("nombre_programa"));  
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return a;
    }

    @Override
    public List<Programa> readAll() {
         List<Programa> lista = new ArrayList<>();
		String SQL = "select p.id_programa,p.url,p.fecha_inicio,p.fecha_fin,c.estado,r.nombre_capacitacion,u.nombre,p.nombre_programa from programa_capacitacion p join categoria c on p.id_categoria=c.id_categoria join capacitacion r on p.id_capacitacion=r.id_capacitacion join capacitador q on p.id_usuario=q.id_usuario join usuario u on q.id_usuario=u.id_usuario";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			rs = ps.executeQuery();
			while (rs.next()) {
				Programa a = new Programa();
				a.setIdprograma(rs.getInt("id_programa"));
                                a.setUrl(rs.getString("url"));  
                                 a.setInicio(rs.getString("fecha_inicio"));  
                                a.setFin(rs.getString("fecha_fin"));  
                                a.setNomcategoria(rs.getString("estado"));
                                a.setNomcapaci(rs.getString("nombre_capacitacion"));
                                a.setNomcapa(rs.getString("nombre"));
                                a.setNombre(rs.getString("nombre_programa"));  
				
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
		String SQL = "delete from programa_capacitacion where id_programa=?";
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
