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
import pe.edu.upeu.proyectointegrador.dao.BancoDao;
import pe.edu.upeu.proyectointegrador.model.Banco;

/**
 *
 * @author Alvaro Alva
 */
public class BancoDaoImpl implements BancoDao{
private PreparedStatement ps = null;
	private ResultSet rs = null;
	private Connection cx = null;
    @Override
    public int create(Banco s) {
       int x = 0;
		String SQL = "insert into banco_comunal (id_banco_comunal,nombre_banco ) value(?,?)";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
                        ps.setInt(1, s.getIdbanco());
			ps.setString(2, s.getNombre());
		
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
    }

    @Override
    public int update(Banco s) {
        int x = 0;
		String SQL = "update banco_comunal set nombre_banco=? where id_banco_comunal = ?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps.setString(1, s.getNombre());
                        ps.setInt(2, s.getIdbanco());
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
    }

    @Override
    public Banco read(int id) {
         Banco a = new Banco();
		String SQL = "select *from banco_comunal where id_banco_comunal=?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {				
				a.setIdbanco(rs.getInt("id_banco_comunal"));
                                a.setNombre(rs.getString("nombre_banco"));
                               
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return a;
    }

    @Override
    public List<Banco> readAll() {
        List<Banco> lista = new ArrayList<>();
		String SQL = "SELECT * from banco_comunal ";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			rs = ps.executeQuery();
			while (rs.next()) {
				Banco a = new Banco();
				a.setIdbanco(rs.getInt("id_banco_comunal"));
                                a.setNombre(rs.getString("nombre_banco"));
                             
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
		String SQL = "delete from banco_comunal where id_banco_comunal=?";
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
