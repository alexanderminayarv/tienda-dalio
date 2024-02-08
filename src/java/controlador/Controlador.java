package controlador;

import config.Fecha;
import modelo.Carrito;
import modelo.Cliente;
import modelo.ClienteDAO;
import modelo.Compra;
import modelo.ComprasDAO;
import modelo.DetalleCompra;
import modelo.Producto;
import modelo.ProductoDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import modelo.CategoriaDAO;
import modelo.Mensaje;
import modelo.MensajeDAO;

public class Controlador extends HttpServlet {

    ProductoDAO pdao = new ProductoDAO();
    Cliente cl = new Cliente();
    ClienteDAO cldao = new ClienteDAO();
    ComprasDAO cdao = new ComprasDAO();
    CategoriaDAO catdao = new CategoriaDAO();
    List<Carrito> listaProductos = new ArrayList<>();
    List productos = new ArrayList();
    List cbocategorias = new ArrayList();
    List listar_motos_electricas = new ArrayList();
    List listar_accesorios = new ArrayList();
    List productoss = new ArrayList();
    List usuarios = new ArrayList();
    double totalPagar = 0.0;
    int idcompra;
    int idProducto = 0;
    Carrito car = new Carrito();
    int item = 0;
    Fecha fechaSistem = new Fecha();
    int cantidad = 1;
    double subtotal = 0.0;
    Producto p = new Producto();
    String logueo = "Iniciar Sesion";
    String correo = "Iniciar Sesion";
    String dnii = "";
    String nombres = "";
    String direccion = "";
    int idpp = 0;
    int stockpp = 0;
    int clie = 0;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("logueo", logueo);
        session.setAttribute("correo", correo);
        productos = pdao.listar();
        cbocategorias = catdao.listar();
        usuarios=cldao.listar();
        String accion = request.getParameter("accion");
        switch (accion) {
            case "Listado-de-Usuarios":
                request.setAttribute("usuarios", usuarios);
                request.getRequestDispatcher("vistas/usuarios.jsp").forward(request, response);
                break;
            case "Nuevo":
                listaProductos = new ArrayList();
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;

            case "Nosotros":
                request.setAttribute("cont", listaProductos.size());
                request.getRequestDispatcher("nosotros.jsp").forward(request, response);
                break;

            case "Producto": //Se verá la información del producto que seleccionó el usuario
                String id = request.getParameter("id");
                productoss = pdao.listarxid(Integer.parseInt(id));
                stockpp = pdao.verStock(Integer.parseInt(id));
                String mensaje_stock = "";
                String color = "";
                String deshabilitado_o_habilitado = "";
                if (stockpp == 0) {
                    mensaje_stock = "No está disponible";
                    color = "red";
                    deshabilitado_o_habilitado = "disabled";
                } else {
                    mensaje_stock = "Está disponible";
                    color = "green";
                    deshabilitado_o_habilitado = "";
                }
                request.setAttribute("mensaje_stock", mensaje_stock);
                request.setAttribute("color", color);
                request.setAttribute("deshabilitado_o_habilitado", deshabilitado_o_habilitado);
                request.setAttribute("cont", listaProductos.size());
                request.setAttribute("productoss", productoss);
                request.getRequestDispatcher("product-details.jsp").forward(request, response);
                break;

            case "Motos-Electricas":
                listar_motos_electricas = pdao.listar_motos_electricas();
                request.setAttribute("cont", listaProductos.size());
                request.setAttribute("listar_motos_electricas", listar_motos_electricas);
                request.getRequestDispatcher("motos-electricas.jsp").forward(request, response);
                break;

            case "Accesorios":
                listar_accesorios = pdao.listar_accesorios();
                request.setAttribute("cont", listaProductos.size());
                request.setAttribute("listar_accesorios", listar_accesorios);
                request.getRequestDispatcher("accesorios.jsp").forward(request, response);
                break;

            case "Caracteristicas":
                request.setAttribute("cont", listaProductos.size());
                request.getRequestDispatcher("caracteristicas.jsp").forward(request, response);
                break;

            case "Validar":
                String email = request.getParameter("txtemail");
                String pass = request.getParameter("txtpass");
                String usuario_o_administrador = "";

                cl = cldao.Validar(email, pass);
                if (cl.getId() != 0) {
                    usuario_o_administrador = cl.getRol();
                    //validar si es usuario o administrador
                    if (usuario_o_administrador.equals("Usuario")) {
                        logueo = cl.getNombres();
                        correo = cl.getEmail();
                        /**
                         * *
                         */
                        dnii = cl.getDni();
                        nombres = cl.getNombres();
                        direccion = cl.getDireccion();
                        request.setAttribute("dnii", dnii);
                        request.setAttribute("nombres", nombres);
                        request.setAttribute("direccion", direccion);
                        /**
                         * *
                         */
                        clie = cl.getId();
                        request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                    } else if (usuario_o_administrador.equals("Administrador")) {
                        logueo = cl.getNombres();
                        correo = cl.getEmail();
                        request.getRequestDispatcher("Controlador?accion=Dashboard").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                }
                break;

            case "Registrar":
                String nom = request.getParameter("txtnom");
                String dni = request.getParameter("txtdni");
                String em = request.getParameter("txtemail");
                String pas = request.getParameter("txtpass");
                String dir = request.getParameter("txtdire");
                String rol = request.getParameter("txtrol");
                cl.setNombres(nom);
                cl.setDni(dni);
                cl.setEmail(em);
                cl.setPass(pas);
                cl.setDireccion(dir);
                cl.setRol(rol);
                cldao.AgregarCliente(cl);
                request.getRequestDispatcher("CompraControlador?accion=carrito").forward(request, response);
                break;

            case "AgregarCarrito":
                agregarCarrito(request);
                request.setAttribute("cont", listaProductos.size());
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;

            case "carrito":
                totalPagar = 0.0;
                item = 0;
                request.setAttribute("dnii", dnii);
                request.setAttribute("nombres", nombres);
                request.setAttribute("direccion", direccion);
                request.setAttribute("cont", listaProductos.size());
                request.setAttribute("Carrito", listaProductos);
                for (int i = 0; i < listaProductos.size(); i++) {
                    totalPagar = totalPagar + listaProductos.get(i).getSubTotal();
                    listaProductos.get(i).setItem(item + i + 1);
                }
                request.setAttribute("totalPagar", totalPagar);
                request.getRequestDispatcher("vistas/carrito.jsp").forward(request, response);
                break;

            case "deleteProducto": //carrito
                idProducto = Integer.parseInt(request.getParameter("id"));
                if (listaProductos != null) {
                    for (int j = 0; j < listaProductos.size(); j++) {
                        if (listaProductos.get(j).getIdProducto() == idProducto) {
                            listaProductos.remove(j);
                        }
                    }
                }
                break;

            case "updateCantidad": //carrito
                idProducto = Integer.parseInt(request.getParameter("id"));
                int cant = Integer.parseInt(request.getParameter("cantidad"));
                for (int j = 0; j < listaProductos.size(); j++) {
                    if (listaProductos.get(j).getIdProducto() == idProducto) {
                        listaProductos.get(j).setCantidad(cant);
                        listaProductos.get(j).setSubTotal(listaProductos.get(j).getPrecioCompra() * cant);
                    }
                }
                break;

            case "GenerarCompra":
                if (cl.getId() != 0 && listaProductos.size() != 0) {
                    if (totalPagar > 0.0) {
                        for (int i = 0; i < listaProductos.size(); i++) {
                            int cantidad = listaProductos.get(i).getCantidad();
                            int idproducto = listaProductos.get(i).getIdProducto();
                            p = pdao.buscar(idproducto);
                            int stock_actual = p.getStock() - cantidad;
                            pdao.actualizarstock(idproducto, stock_actual);
                        }
                        //Guardar Venta
                        Compra co = new Compra();
                        co.setIdCliente(cl.getId());
                        co.setFecha(fechaSistem.FechaBD());
                        co.setMonto(totalPagar);
                        co.setEstado("Cancelado - En Proceso de Envio");
                        cdao.guardarCompra(co);

                        idcompra = cdao.IdCompra();
                        for (int i = 0; i < listaProductos.size(); i++) {
                            DetalleCompra dc = new DetalleCompra();
                            dc.setIdcompra(idcompra);
                            dc.setIdproducto(listaProductos.get(i).getIdProducto());
                            dc.setCantidad(listaProductos.get(i).getCantidad());
                            dc.setPrecioCompra(listaProductos.get(i).getPrecioCompra());
                            cdao.guardarDetalleCompra(dc);
                        }
                        listaProductos = new ArrayList<>();
                        List compra = cdao.misCompras(cl.getId());
                        request.setAttribute("myCompras", compra);
                        request.getRequestDispatcher("vistas/compras.jsp").forward(request, response);
                    } else {
                        request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                    }
                } else {
                    request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                }
                break;

            case "MisCompras":
                if (cl.getId() != 0) {
                    List compra = cdao.misCompras(cl.getId());
                    request.setAttribute("myCompras", compra);
                    request.getRequestDispatcher("vistas/compras.jsp").forward(request, response);
                } else if (listaProductos.size() > 0) {
                    request.getRequestDispatcher("Controlador?accion=carrito").forward(request, response);
                } else {
                    request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                }
                break;

            case "Dashboard":
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
                break;

            case "Salir":
                listaProductos = new ArrayList();
                cl = new Cliente();
                session.invalidate();
                logueo = "Iniciar Sesion";
                correo = "Iniciar Sesion";
                request.getRequestDispatcher("Controlador?accion=Salirr").forward(request, response);
                break;

            default:
                request.setAttribute("clie", clie);
                request.setAttribute("cont", listaProductos.size());
                request.setAttribute("productos", productos);
                request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public void agregarCarrito(HttpServletRequest request) {
        cantidad = 1;
        int pos = 0;
        int idpp = Integer.parseInt(request.getParameter("id"));
        if (listaProductos.size() > 0) {
            for (int i = 0; i < listaProductos.size(); i++) {
                if (listaProductos.get(i).getIdProducto() == idpp) {
                    pos = i;
                }
            }
            if (idpp == listaProductos.get(pos).getIdProducto()) {
                cantidad = listaProductos.get(pos).getCantidad() + cantidad;
                subtotal = listaProductos.get(pos).getPrecioCompra() * cantidad;
                listaProductos.get(pos).setCantidad(cantidad);
                listaProductos.get(pos).setSubTotal(subtotal);
            } else {
                car = new Carrito();
                p = pdao.listarId(idpp);
                car.setIdProducto(p.getId());
                car.setNombres(p.getNombres());
                car.setFoto(p.getFoto());
                car.setDescripcion(p.getDescripcion());
                car.setPrecioCompra(p.getPrecio());
                car.setCantidad(cantidad);
                subtotal = cantidad * p.getPrecio();
                car.setSubTotal(subtotal);
                listaProductos.add(car);
            }
        } else {
            car = new Carrito();
            p = pdao.listarId(idpp);
            car.setIdProducto(p.getId());
            car.setNombres(p.getNombres());
            car.setFoto(p.getFoto());
            car.setDescripcion(p.getDescripcion());
            car.setPrecioCompra(p.getPrecio());
            car.setCantidad(cantidad);
            subtotal = cantidad * p.getPrecio();
            car.setSubTotal(subtotal);
            listaProductos.add(car);
        }
    }
}