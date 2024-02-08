/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ClienteDAO;
import modelo.ComprasDAO;
import modelo.ProductoDAO;

/**
 *
 * @author minay
 */
public class DashboardControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ClienteDAO cldao = new ClienteDAO();
        ProductoDAO pdao = new ProductoDAO();
        ComprasDAO cdao = new ComprasDAO();
        String accion = request.getParameter("accion");
        switch (accion) {
            case "CantidadCliente":
                int cantidadclie = cldao.getCantidadCliente();
                response.getWriter().println(cantidadclie);
                break;
            case "CantidadProducto":
                int cantidadprod = pdao.getCantidadProducto();
                response.getWriter().println(cantidadprod);
                break;
            case "CantidadCompra":
                int cantidadcomp = cdao.getCantidadCompra();
                response.getWriter().println(cantidadcomp);
                break;
            case "CantidadTotal":
                int cantidadtot = cdao.getCantidadTotal();
                response.getWriter().println("U$ " + cantidadtot);
                break;
            default:
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
