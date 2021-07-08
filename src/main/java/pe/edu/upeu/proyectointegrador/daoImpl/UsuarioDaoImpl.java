package pe.edu.upeu.proyectointegrador.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import pe.edu.upeu.proyectointegrador.config.Conexion;
import pe.edu.upeu.proyectointegrador.dao.UsuarioDao;
import pe.edu.upeu.proyectointegrador.model.Usuario;





public class UsuarioDaoImpl implements UsuarioDao {
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	private Connection cx = null;

	@Override
	public Usuario validar(String user, String pass) {
		// TODO Auto-generated method stub
		
                Usuario a = new Usuario();
		String SQL = "select u.Nombre, u.Apellido1, q.nombre_rol   from usuario u join rol_usuario r ON u.id_usuario = r.id_usuario JOIN rol q ON r.id_rol = q.id_rol where username=? and password=?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while (rs.next()) {
		            a.setNombre(rs.getString("u.Nombre"));
                            a.setApellido1(rs.getString("u.Apellido1"));
                            a.setNombre_rol(rs.getString("q.nombre_rol"));
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Validar: " + e);
		} 
		return a;
	}

	@Override
	public int create(Usuario u) {
		int x = 0;
		String SQL = "insert into usuario (id_usuario,nombre ,apellido1,correo,telefono, dni,username, password, apellido2) value(?,?,?,?,?,? ,?,?,?)";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
                        ps.setInt(1, u.getIdusuario());
			ps.setString(2, u.getNombre());
			ps.setString(3, u.getApellido1());
                        ps.setString(4, u.getCorreo());
                        ps.setInt(5, u.getTelefono());
                        ps.setInt(6, u.getDni());
                        ps.setString(7, u.getUsername());
                        ps.setString(8, u.getPassword());
                        ps.setString(9, u.getApellido2());
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
	}

	@Override
	public int update(Usuario u) {
		int x = 0;
		String SQL = "update usuario set nombre=?,apellido1=?,correo=?,telefono=?,dni=?,username = ?, password = ?, apellido2=? where id_usuario = ?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps.setString(1, u.getNombre());
			ps.setString(2, u.getApellido1());
                        ps.setString(3, u.getCorreo());
                        ps.setInt(4, u.getTelefono());
                        ps.setInt(5, u.getDni());
                        ps.setString(6, u.getUsername());
                        ps.setString(7, u.getPassword());
                        ps.setString(8, u.getApellido2());
                        ps.setInt(9, u.getIdusuario());
			x = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return x;
	}

	@Override
	public Usuario read(int id) {
		Usuario a = new Usuario();
		String SQL = "select *from usuario where id_usuario=?";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {				
				a.setIdusuario(rs.getInt("id_usuario"));
                                a.setNombre(rs.getString("nombre"));
                                a.setApellido1(rs.getString("apellido1"));
                                a.setCorreo(rs.getString("correo"));
                                a.setTelefono(rs.getInt("telefono"));
                                a.setDni(rs.getInt("dni"));
                             
				a.setUsername(rs.getString("username"));
				a.setPassword(rs.getString("password"));
                                a.setApellido2(rs.getString("apellido2"));
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return a;
	}

	@Override
	public List<Usuario> readAll() {
		// TODO Auto-generated method stub
		List<Usuario> lista = new ArrayList<>();
		String SQL = "select *from usuario";
		try {
			cx = Conexion.getConexion();
			ps = cx.prepareStatement(SQL);
			rs = ps.executeQuery();
			while (rs.next()) {
				Usuario a = new Usuario();
				a.setIdusuario(rs.getInt("id_usuario"));
                                a.setNombre(rs.getString("nombre"));
                                a.setApellido1(rs.getString("apellido1"));
                                a.setCorreo(rs.getString("correo"));
                                a.setTelefono(rs.getInt("telefono"));
                                a.setDni(rs.getInt("dni"));
                             
				a.setUsername(rs.getString("username"));
				a.setPassword(rs.getString("password"));
                                a.setApellido2(rs.getString("apellido2"));
				
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
		String SQL = "delete from usuario where id_usuario=?";
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
