/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import modelo.Cliente;
import modelo.Mensaje;
import modelo.MensajeDAO;

/**
 *
 * @author minay
 */
public class MensajeControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        MensajeDAO mdao = new MensajeDAO();
        List<Mensaje> mensajes = mdao.listar();
        String accion = request.getParameter("accion");
        switch (accion) {
            case "Listado-de-Mensajes":
                request.setAttribute("mensajes", mensajes);
                request.getRequestDispatcher("vistas/mensajes.jsp").forward(request, response);
                break;
            case "Mensaje":
                Mensaje m = new Mensaje();
                String men = request.getParameter("txtmensaje");
                String idclie = request.getParameter("txtIdClie");
                //int clie = cl.getId();
                m.setMensaje(men);
                m.setId_cliente(idclie);
                mdao.AgregarMensaje(m);
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;
            default:
                request.getRequestDispatcher("index.jsp").forward(request, response);
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
