package org.apache.jsp.vistas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class compras_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Mis Compras - Tienda DALIO</title>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/prettyPhoto.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/price-range.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/animate.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"js/html5shiv.js\"></script>\n");
      out.write("        <script src=\"js/respond.min.js\"></script>\n");
      out.write("        <![endif]-->       \n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/ico/moto_naranja.ico\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("    </head>\n");
      out.write("    <body>   \n");
      out.write("        <header id=\"header\"><!--header-->\n");
      out.write("            <div class=\"header_top\"><!--header_top-->\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-6 \">\n");
      out.write("                            <div class=\"contactinfo\">\n");
      out.write("                                <ul class=\"nav nav-pills\">\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-phone\"></i> +51 955 237 638</a></li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-envelope\"></i> info@dalio.com</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            <div class=\"social-icons pull-right\">\n");
      out.write("                                <ul class=\"nav navbar-nav\">\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-linkedin\"></i></a></li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-dribbble\"></i></a></li>\n");
      out.write("                                    <li><a href=\"\"><i class=\"fa fa-google-plus\"></i></a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div><!--/header_top-->\n");
      out.write("\n");
      out.write("            <div class=\"header-middle\"><!--header-middle-->\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-4\">\n");
      out.write("                            <div class=\"logo pull-left\">\n");
      out.write("                                <a href=\"./Controlador?accion=Nuevo\"><img src=\"images/home/logo.png\" alt=\"\" /></a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"btn-group pull-right\">\n");
      out.write("                                <div class=\"btn-group\">\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-default dropdown-toggle usa\" data-toggle=\"dropdown\">\n");
      out.write("                                        USA\n");
      out.write("                                        <span class=\"caret\"></span>\n");
      out.write("                                    </button>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"\">Canada</a></li>\n");
      out.write("                                        <li><a href=\"\">UK</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"btn-group\">\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-default dropdown-toggle usa\" data-toggle=\"dropdown\">\n");
      out.write("                                        DOLLAR\n");
      out.write("                                        <span class=\"caret\"></span>\n");
      out.write("                                    </button>\n");
      out.write("                                    <ul class=\"dropdown-menu\">\n");
      out.write("                                        <li><a href=\"\">Canadian Dollar</a></li>\n");
      out.write("                                        <li><a href=\"\">Pound</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-8\">\n");
      out.write("                            <div class=\"shop-menu pull-right\">\n");
      out.write("                                <ul class=\"nav navbar-nav\">\n");
      out.write("                                    <li class=\"nav-item dropdown\">\n");
      out.write("                                        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                                            <i class=\"fa fa-user\"></i> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${logueo}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                                        </a>\n");
      out.write("                                        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\" style=\"padding: 5px;\">\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"#\"><center><img src=\"images/user.png\" alt=\"60\" height=\"60\"/></center></a> \n");
      out.write("                                            <div class=\"dropdown-divider\"><center> --------------------------- </center></div>\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"#\" data-toggle=\"modal\" data-target=\"#staticBackdrop\"><center><i class=\"fa fa-user\" style=\"padding: 2px;\"></i> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${correo}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</center></a>\n");
      out.write("                                            <a class=\"dropdown-item\" href=\"Controlador?accion=Salir\"><center><i class=\"fa fa-arrow-right\" style=\"padding: 2px;\"></i> Cerrar Sesion</center></a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li><a href=\"CompraControlador?accion=MisCompras\"><i class=\"fa fa-crosshairs\"></i> Mis Compras</a></li>\n");
      out.write("                                    <li><a href=\"Controlador?accion=Nuevo\"><i class=\"fa fa-shopping-cart\"></i> ¡Quiero Comprar!</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div><!--/header-middle-->\n");
      out.write("\n");
      out.write("            <div class=\"header-bottom\"><!--header-bottom-->\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-9\">\n");
      out.write("                            <div class=\"navbar-header\">\n");
      out.write("                                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                    <span class=\"icon-bar\"></span>\n");
      out.write("                                    <span class=\"icon-bar\"></span>\n");
      out.write("                                    <span class=\"icon-bar\"></span>\n");
      out.write("                                </button>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"mainmenu pull-left\">\n");
      out.write("                                <ul class=\"nav navbar-nav collapse navbar-collapse\">\n");
      out.write("                                    <li><a href=\"Controlador?accion=Nuevo\" class=\"active\">Inicio</a></li>\n");
      out.write("                                    <li><a href=\"Controlador?accion=Nosotros\">¿Quiénes somos?</a></li>\n");
      out.write("                                    <li><a href=\"Controlador?accion=Motos-Electricas\">Motos Eléctricas</a></li>\n");
      out.write("                                    <li><a href=\"Controlador?accion=Accesorios\">Accesorios</a></li>\n");
      out.write("                                    <li><a href=\"Controlador?accion=Caracteristicas\">Características</a></li>\n");
      out.write("                                    <li><a href=\"#Contacto\">Contáctanos</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-3\">\n");
      out.write("                            <div class=\"search_box pull-right\">\n");
      out.write("                                <input type=\"text\" placeholder=\"Search\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!-------------------------------->\n");
      out.write("        <!-- Modal -->\n");
      out.write("        <div class=\"modal fade\" id=\"staticBackdrop\" data-backdrop=\"static\" data-keyboard=\"false\" tabindex=\"-1\" aria-labelledby=\"staticBackdropLabel\" aria-hidden=\"true\">\n");
      out.write("            <div class=\"modal-dialog modal-sm\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                        <h5 class=\"modal-title\" id=\"staticBackdropLabel\">Iniciar Sesion</h5>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                        <div class=\"text-center\">  \n");
      out.write("                            <img src=\"images/user.png\" width=\"100\" height=\"100\">  \n");
      out.write("                        </div>\n");
      out.write("                        <!-- Iniciar Session -->\n");
      out.write("                        <form action=\"Controlador\" method=\"POST\">\n");
      out.write("                            </br>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Email address</label>\n");
      out.write("                                <input type=\"email\" name=\"txtemail\" class=\"form-control\" placeholder=\"email@example.com\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Password</label>\n");
      out.write("                                <input type=\"password\" name=\"txtpass\" class=\"form-control\" placeholder=\"Password\" required>\n");
      out.write("                            </div>                                   \n");
      out.write("                            <button type=\"submit\" name=\"accion\" value=\"Validar\" \n");
      out.write("                                    class=\"btn btn-success\">Iniciar</button>\n");
      out.write("                            <!-- Boton para que hacer desplegar el contenido--> \n");
      out.write("                            <button class=\"btn btn-info\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseExample\" aria-expanded=\"false\" aria-controls=\"collapseExample\">\n");
      out.write("                                ¿No tienes cuenta? ¡Registrate!\n");
      out.write("                            </button>\n");
      out.write("                        </form>\n");
      out.write("                        <!-- Llamo al contenido cuando el usuario clickea el boton-->\n");
      out.write("                        <div class=\"collapse\" id=\"collapseExample\">\n");
      out.write("                            <div class=\"card card-body\">\n");
      out.write("                                <!-- Registrarse -->\n");
      out.write("                                <form action=\"Controlador\" method=\"POST\"> \n");
      out.write("                                    </br>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label>Nombres</label>\n");
      out.write("                                        <input type=\"text\" name=\"txtnom\" pattern=\"[a-zA-ZñÑáéíóúÁÉÍÓÚ\\s]+\" maxlength=\"255\"\n");
      out.write("                                                        title=\"Solo se ingresan letras hasta 255 caracteres\" class=\"form-control\" placeholder=\"Leo Perez\" required>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label>Dni</label>\n");
      out.write("                                        <input type=\"text\" pattern=\"[0-9]*\" title=\"Solo se ingresan números hasta 8 caracteres\" maxlength=\"8\" name=\"txtdni\" class=\"form-control\" placeholder=\"01245678\" required>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label>Direccion</label>\n");
      out.write("                                        <input type=\"text\" name=\"txtdire\" class=\"form-control\" placeholder=\"Chiclayo - La Victoria\" required>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label>Email address</label>\n");
      out.write("                                        <input type=\"email\" name=\"txtemail\" class=\"form-control\" placeholder=\"email@example.com\" required>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label>Password</label>\n");
      out.write("                                        <input type=\"password\" name=\"txtpass\" class=\"form-control\" placeholder=\"Password\" required>\n");
      out.write("                                    </div>   \n");
      out.write("                                    <div class=\"form-group\" hidden>\n");
      out.write("                                        <label>Rol</label>\n");
      out.write("                                        <input type=\"text\" name=\"txtrol\" class=\"form-control\" placeholder=\"Rol\" value=\"Usuario\">\n");
      out.write("                                    </div>  \n");
      out.write("                                    <button type=\"submit\" name=\"accion\" value=\"Registrar\" class=\"btn btn-outline-danger btn-block\">Crear Cuenta</button>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-footer\">\n");
      out.write("                        <button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-------------------------------->\n");
      out.write("        <section id=\"cart_items\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"breadcrumbs\">\n");
      out.write("                    <ol class=\"breadcrumb\">\n");
      out.write("                        <li><a href=\"#\">Inicio</a></li>\n");
      out.write("                        <li class=\"active\">Mis Compras</li>\n");
      out.write("                    </ol>\n");
      out.write("                </div>\n");
      out.write("                <h2>Mis Compras</h2>                   \n");
      out.write("                <div class=\"table-responsive cart_info\" id=\"cart-container\">\n");
      out.write("                    <table class=\"table table-condensed\" id=\"shop-table\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr class=\"cart_menu text-center\">\n");
      out.write("                                <td>CODIGO DE COMPRA</td>\n");
      out.write("                                <td class=\"image\">Fecha de Compra</td>\n");
      out.write("                                <td class=\"price\">Monto</td>\n");
      out.write("                                <td class=\"quantity\">Estado</td>\n");
      out.write("                                <td>Acción</td>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody> \n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("        </section> <!--/#cart_items-->\n");
      out.write("\n");
      out.write("        <!-------------------------------->                                  \n");
      out.write("        <footer id=\"footer\"><!--Footer-->\n");
      out.write("            <div class=\"footer-top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-2\">\n");
      out.write("                            <div class=\"single-widget\">\n");
      out.write("                                <h2>Service</h2>\n");
      out.write("                                <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("                                    <li><a href=\"\">Online Help</a></li>\n");
      out.write("                                    <li><a href=\"\">Contact Us</a></li>\n");
      out.write("                                    <li><a href=\"\">Order Status</a></li>\n");
      out.write("                                    <li><a href=\"\">Change Location</a></li>\n");
      out.write("                                    <li><a href=\"\">FAQâs</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-2\">\n");
      out.write("                            <div class=\"single-widget\">\n");
      out.write("                                <h2>Quock Shop</h2>\n");
      out.write("                                <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("                                    <li><a href=\"\">Askoll</a></li>\n");
      out.write("                                    <li><a href=\"\">BMW</a></li>\n");
      out.write("                                    <li><a href=\"\">BSG</a></li>\n");
      out.write("                                    <li><a href=\"\">AIMA</a></li>\n");
      out.write("                                    <li><a href=\"\">GreenLine</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-2\">\n");
      out.write("                            <div class=\"single-widget\">\n");
      out.write("                                <h2>Policies</h2>\n");
      out.write("                                <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("                                    <li><a href=\"\">Terms of Use</a></li>\n");
      out.write("                                    <li><a href=\"\">Privecy Policy</a></li>\n");
      out.write("                                    <li><a href=\"\">Refund Policy</a></li>\n");
      out.write("                                    <li><a href=\"\">Billing System</a></li>\n");
      out.write("                                    <li><a href=\"\">Ticket System</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-2\">\n");
      out.write("                            <div class=\"single-widget\">\n");
      out.write("                                <h2>About Shopper</h2>\n");
      out.write("                                <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("                                    <li><a href=\"\">Company Information</a></li>\n");
      out.write("                                    <li><a href=\"\">Careers</a></li>\n");
      out.write("                                    <li><a href=\"\">Store Location</a></li>\n");
      out.write("                                    <li><a href=\"\">Affillate Program</a></li>\n");
      out.write("                                    <li><a href=\"\">Copyright</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                           <div class=\"col-sm-3 col-sm-offset-1\" id=\"Contacto\">\n");
      out.write("                            <div class=\"single-widget\">\n");
      out.write("                                <h2>Send Message</h2>\n");
      out.write("                                <form action=\"MnesajeControlador\" method=\"POST\" class=\"searchform\">\n");
      out.write("                                    <textarea rows=\"4\" cols=\"50\" name=\"txtmensaje\" required></textarea>\n");
      out.write("                                    <style>\n");
      out.write("                                        textarea {\n");
      out.write("                                            border: 1px solid #DDDDDD;\n");
      out.write("                                            background-color: #FFF;\n");
      out.write("                                            color: #000000;\n");
      out.write("                                            font-family: 'Roboto', sans-serif;\n");
      out.write("                                            font-size: 14px;\n");
      out.write("                                            margin-top: 0;\n");
      out.write("                                            outline: medium none;\n");
      out.write("                                            padding: 7px;\n");
      out.write("                                            width: 212px;\n");
      out.write("                                        }\n");
      out.write("                                    </style>\n");
      out.write("                                    </br></br><button type=\"submit\" name=\"accion\" value=\"Mensaje\" class=\"btn btn-danger\" style=\"margin-left: 1px;\"> Enviar</button>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer-bottom\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <p class=\"pull-left\">Copyright © 2022 Dalio. All rights reserved.</p>\n");
      out.write("                        <p class=\"pull-right\">Designed by <span>Grupo 7</span></p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </footer><!--/Footer-->\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("        <script src=\"js/price-range.js\"></script>\n");
      out.write("        <script src=\"js/jquery.scrollUp.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.prettyPhoto.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("p");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${myCompras}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("  \n");
          out.write("                                <tr>\n");
          out.write("                                    <td class=\"cart_description text-center\">\n");
          out.write("                                        <p>C00");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\n");
          out.write("                                    </td>   \n");
          out.write("                                    <td class=\"cart_description text-center\">\n");
          out.write("                                        <p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getFecha()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\n");
          out.write("                                    </td>\n");
          out.write("                                    <td class=\"cart_description text-center\">\n");
          out.write("                                        <p>US $");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getMonto()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\n");
          out.write("                                    </td>\n");
          out.write("                                    <td class=\"cart_description text-center\">\n");
          out.write("                                        <p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getEstado()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\n");
          out.write("                                    </td>\n");
          out.write("                                    <td class=\"cart_description text-center\">\n");
          out.write("                            <center>\n");
          out.write("                                <a class=\"btn\" href=\"CompraControlador?accion=verDetalle&idcompra=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">Ver Detalle</a>\n");
          out.write("                            </center>\n");
          out.write("                            </td>\n");
          out.write("                            </tr>\n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
