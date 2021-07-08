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
import pe.edu.upeu.proyectointegrador.dao.SocioDao;
import pe.edu.upeu.proyectointegrador.daoImpl.SocioDaoImpl;
import pe.edu.upeu.proyectointegrador.model.Socio;

/**
 *
 * @author Alvaro Alva
 */
@WebServlet(name = "SocioController", urlPatterns = {"/sc"})
public class SocioController extends HttpServlet {
private Gson gson = new Gson();
	private SocioDao udao = new SocioDaoImpl();
	
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
		
                case 2://guardar
                   System.out.println("Caso2");
                        int q=Integer.parseInt(request.getParameter("i"));
			int r=Integer.parseInt(request.getParameter("b"));
			String e=request.getParameter("e");
                        System.out.println(q+r+e);
                        System.out.println("Hola");
			out.println(gson.toJson(udao.create(new Socio(q,r,e))));
			break;
                case 3://read
			out.println(gson.toJson(udao.read(Integer.parseInt(request.getParameter("id")))));
			break;
               case 4://modificar
			Socio a = new Socio();
                        a.setIdsocio(Integer.parseInt(request.getParameter("i")));
                        a.setIdbanco(Integer.parseInt(request.getParameter("b")));
                        a.setEstado(request.getParameter("e"));
			
			out.println(gson.toJson(udao.update(a)));
			break;
		case 5://eliminar
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
