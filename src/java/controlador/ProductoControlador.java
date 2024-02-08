/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.Carrito;
import modelo.Categoria;
import modelo.CategoriaDAO;
import modelo.Producto;
import modelo.ProductoDAO;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author minay
 */
public class ProductoControlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Producto p = new Producto();
        ProductoDAO pdao = new ProductoDAO();
        CategoriaDAO catdao = new CategoriaDAO();
        List<Producto> productos = pdao.listar();
        List<Categoria> cbocategorias = catdao.listar();
        List<Producto> ventas_x_producto = pdao.listar_producto();
        String accion = request.getParameter("accion");
        switch (accion) {
            case "Listado-de-Ventas-x-Producto":
                request.setAttribute("ventas_x_producto", ventas_x_producto);
                request.getRequestDispatcher("vistas/ventas-x-producto.jsp").forward(request, response);
                break;
            case "Listado-de-Productos": //Se verá en el panel administrador todos los productos
                request.setAttribute("productos", productos);
                request.setAttribute("cbocategorias", cbocategorias);
                request.getRequestDispatcher("vistas/mantenimiento-producto.jsp").forward(request, response);
                break;
            case "addProducto":
                request.setAttribute("cbocategorias", cbocategorias);
                request.getRequestDispatcher("addProducto.jsp").forward(request, response);
                break;
            case "GuardarProducto":
                ArrayList<String> pro = new ArrayList<>();
                try {
                    FileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload fileUpload = new ServletFileUpload(factory);
                    List items = fileUpload.parseRequest(request);
                    for (int i = 0; i < items.size(); i++) {
                        FileItem fileItem = (FileItem) items.get(i);
                        if (!fileItem.isFormField()) {
                            File file = new File("C:\\xampp\\htdocs\\carrito\\" + fileItem.getName());
                            fileItem.write(file);
                            p.setFoto("http://localhost/carrito/" + fileItem.getName());
                        } else {
                            pro.add(fileItem.getString());
                        }
                    }
                    p.setNombres(pro.get(0));
                    p.setDescripcion(pro.get(1));
                    p.setPrecio(Double.parseDouble(pro.get(2)));
                    p.setStock(Integer.parseInt(pro.get(3)));
                    p.setCategoria(pro.get(4));
                    int resp_agregar = pdao.AgregarNuevoProducto(p);
                    if (resp_agregar != 1) {
                        request.setAttribute("config", "alert alert-success");
                        request.setAttribute("mensaje", "Se agregó correctamente");
                        request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                    } else {
                        request.setAttribute("config", "alert alert-danger");
                        request.setAttribute("mensaje", "No se agregó correctamente");
                        request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                    }
                } catch (Exception e) {
                    System.err.println("" + e);
                }
                break;
            case "editProducto":
                request.getRequestDispatcher("editProducto.jsp").forward(request, response);
                break;
            case "EditarProducto": //mantenimiento
                String idprod = request.getParameter("id");
                List<Producto> productoss = pdao.listarxid(Integer.parseInt(idprod));
                request.setAttribute("productoss", productoss);
                request.setAttribute("cbocategorias", cbocategorias);
                request.getRequestDispatcher("ProductoControlador?accion=editProducto").forward(request, response);
                break;
            case "ActualizarProducto": //mantenimiento
                String nomb = request.getParameter("txtNombre");
                String desc = request.getParameter("txtDescripcion");
                String prec = request.getParameter("txtPrecio");
                String stoc = request.getParameter("txtStock");
                String cat = request.getParameter("txtCategoria");
                String idp = request.getParameter("txtId");
                p.setNombres(nomb);
                p.setDescripcion(desc);
                p.setPrecio(Double.parseDouble(prec));
                p.setStock(Integer.parseInt(stoc));
                p.setCategoria(cat);
                p.setId(Integer.parseInt(idp));
                int resp_actualizar = pdao.ActualizarProducto(p);
                if (resp_actualizar != 1) {
                    request.setAttribute("config", "alert alert-success");
                    request.setAttribute("mensaje", "Se actualizó correctamente");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "No se actualizó correctamente");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }
                break;

            case "EliminarProducto": //mantenimiento
                int idProducto = 0;
                idProducto = Integer.parseInt(request.getParameter("id"));
                p.setId(idProducto);
                int resp_eliminar = pdao.EliminarProducto(idProducto);
                if (resp_eliminar != 1) {
                    request.setAttribute("config", "alert alert-success");
                    request.setAttribute("mensaje", "Se eliminó correctamente");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "No se eliminó correctamente");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }
                break;
            default:
                request.getRequestDispatcher("vistas/mantenimiento-producto.jsp").forward(request, response);
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
