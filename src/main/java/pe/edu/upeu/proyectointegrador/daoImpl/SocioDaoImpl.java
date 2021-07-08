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
import pe.edu.upeu.proyectointegrador.dao.SocioDao;
import pe.edu.upeu.proyectointegrador.model.Socio;

/**
 *
 * @author Alvaro Alva
 */
public class SocioDaoImpl implements SocioDao {
private PreparedStatement ps = null;
	private ResultSet rs = null;
	private Connection cx = null;

    @Override
    public int create(Socio s) {
        int x = 0;
		String SQL = "insert into socio (id_banco_comunal,id_usuario,estado ) value(?,?,?)";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
                        ps.setInt(1, s.getIdbanco());
			ps.setInt(2, s.getIdsocio());
			ps.setString(3, s.getEstado());
                       
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
    }

    @Override
    public int update(Socio s) {
       int x = 0;
		String SQL = "update socio set id_banco_comunal=?,estado=? where id_usuario = ?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps.setInt(1, s.getIdbanco());
			ps.setString(2, s.getEstado());
                        ps.setInt(3, s.getIdsocio());
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
    }

    @Override
    public Socio read(int id) {
      Socio a = new Socio();
		String SQL = "select *from socio where id_usuario=?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {				
				a.setIdbanco(rs.getInt("id_banco_comunal"));
                                a.setIdsocio(rs.getInt("id_usuario"));
                                a.setEstado(rs.getString("estado"));  
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return a;
    }

    @Override
    public List<Socio> readAll() {
        List<Socio> lista = new ArrayList<>();
		String SQL = "SELECT b.nombre_banco, u.nombre, s.estado, s.id_usuario  FROM socio s join banco_comunal b on s.id_banco_comunal=b.id_banco_comunal join usuario u on s.id_usuario=u.id_usuario";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			rs = ps.executeQuery();
			while (rs.next()) {
				Socio a = new Socio();
				a.setNbanco(rs.getString("b.nombre_banco"));
                                a.setNusuario(rs.getString("u.nombre"));
                                a.setEstado(rs.getString("s.estado"));
                                
                                a.setIdsocio(rs.getInt("s.id_usuario"));
				
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
		String SQL = "delete from socio where id_usuario=?";
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
