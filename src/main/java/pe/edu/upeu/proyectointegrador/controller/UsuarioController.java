/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.proyectointegrador.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.upeu.proyectointegrador.dao.UsuarioDao;
import pe.edu.upeu.proyectointegrador.daoImpl.UsuarioDaoImpl;
import pe.edu.upeu.proyectointegrador.model.Usuario;

/**
 *
 * @author Alvaro Alva
 */
@WebServlet(name = "UsuarioController", urlPatterns = {"/uc"})
public class UsuarioController extends HttpServlet {
private Gson gson = new Gson();
	private UsuarioDao udao = new UsuarioDaoImpl();
	
	private static final long serialVersionUID = 1L;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
		int op = Integer.parseInt(request.getParameter("opc"));
	
		switch (op) {
                case 1://todos los productos
                          System.out.println("Caso1");
		          out.println(gson.toJson(udao.readAll()));
                           
			break;
		case 2:
			String user = request.getParameter("user");
			String pass = request.getParameter("pass");
			out.println(gson.toJson(udao.validar(user, pass)));
                        break;
                case 3://guardar
                    System.out.println("Caso2");
                        int q=Integer.parseInt(request.getParameter("idusuario"));
			String x=request.getParameter("nombre");
			String w=request.getParameter("apellido");
                        String e=request.getParameter("apellido2");
                        String r=request.getParameter("correo");
                        int t=Integer.parseInt(request.getParameter("telefono"));
			int y=Integer.parseInt(request.getParameter("dni"));
                        String u=request.getParameter("u");
                        String i=request.getParameter("pass");
			System.out.println(x);
                        System.out.println(r);
                        System.out.println(u);
			out.println(gson.toJson(udao.create(new Usuario(q,x,w,e,r,y,t,u,i))));
			break;
                case 4://read
			out.println(gson.toJson(udao.read(Integer.parseInt(request.getParameter("id")))));
			break;
               case 5://modificar
			Usuario a = new Usuario();
                        a.setIdusuario(Integer.parseInt(request.getParameter("i")));
                        a.setNombre(request.getParameter("nombre"));
			a.setApellido1(request.getParameter("apellido"));
                        a.setApellido2(request.getParameter("apellido2"));
                        a.setCorreo(request.getParameter("correo"));
                        a.setTelefono(Integer.parseInt(request.getParameter("telefono")));
                        a.setDni(Integer.parseInt(request.getParameter("dni")));
                        a.setUsername(request.getParameter("u"));
                        a.setPassword(request.getParameter("pass"));
			out.println(gson.toJson(udao.update(a)));
			break;
		case 6://eliminar
			int id=Integer.parseInt(request.getParameter("i"));
                        System.out.println(id);
                        System.out.println("Posasasa");
			out.println(gson.toJson(udao.delete(id)));
			break;
		default:
			break;
		}
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
