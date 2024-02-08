
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="config.Fecha"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Tienda DALIO</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/moto_naranja.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head>
    <body>    
        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 ">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <li><a href=""><i class="fa fa-phone"></i> +51 955 237 638</a></li>
                                    <li><a href=""><i class="fa fa-envelope"></i> info@dalio.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                    <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                    <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="./Controlador?accion=Nuevo"><img src="images/home/logo.png" alt="" /></a>
                            </div>
                            <div class="btn-group pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                        USA
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="">Canada</a></li>
                                        <li><a href="">UK</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                        DOLLAR
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="">Canadian Dollar</a></li>
                                        <li><a href="">Pound</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                                            <i class="fa fa-user"></i> ${logueo}
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="padding: 5px;">
                                            <a class="dropdown-item" href="#"><center><img src="images/user.png" alt="60" height="60"/></center></a> 
                                            <div class="dropdown-divider"><center> --------------------------- </center></div>
                                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#staticBackdrop"><center><i class="fa fa-user" style="padding: 2px;"></i> ${correo}</center></a>
                                            <a class="dropdown-item" href="Controlador?accion=Salir"><center><i class="fa fa-arrow-right" style="padding: 2px;"></i> Cerrar Sesion</center></a>
                                        </div>
                                    </li>
                                    <li><a href="Controlador?accion=MisCompras"><i class="fa fa-crosshairs"></i> Mis Compras</a></li>
                                    <li><a href="Controlador?accion=home"><i class="fa fa-shopping-cart"></i> Seguir Comprando</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->

            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li><a href="Controlador?accion=Nuevo" class="active">Inicio</a></li>
                                    <li><a href="Controlador?accion=Nosotros">¿Quiénes somos?</a></li>
                                    <li><a href="Controlador?accion=Motos-Electricas">Motos Eléctricas</a></li>
                                    <li><a href="Controlador?accion=Accesorios">Accesorios</a></li>
                                    <li><a href="Controlador?accion=Caracteristicas">Características</a></li>
                                    <li><a href="#Contacto">Contáctanos</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="search_box pull-right">
                                <input type="text" placeholder="Search"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!------------------------------->
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Iniciar Sesion</h5>
                    </div>
                    <div class="modal-body">
                        <div class="text-center">  
                            <img src="images/user.png" width="100" height="100">  
                        </div>
                        <!-- Iniciar Session -->
                        <form action="Controlador" method="POST">
                            </br>
                            <div class="form-group">
                                <label>Email address</label>
                                <input type="email" name="txtemail" class="form-control" placeholder="email@example.com" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="txtpass" class="form-control" placeholder="Password" required>
                            </div>                                   
                            <button type="submit" name="accion" value="Validar" 
                                    class="btn btn-success">Iniciar</button>
                            <!-- Boton para que hacer desplegar el contenido--> 
                            <button class="btn btn-info" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                ¿No tienes cuenta? ¡Registrate!
                            </button>
                        </form>
                        <!-- Llamo al contenido cuando el usuario clickea el boton-->
                        <div class="collapse" id="collapseExample">
                            <div class="card card-body">
                                <!-- Registrarse -->
                                <form action="Controlador" method="POST"> 
                                    </br>
                                    <div class="form-group">
                                        <label>Nombres</label>
                                        <input type="text" name="txtnom" pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+" maxlength="255"
                                               title="Solo se ingresan letras hasta 255 caracteres" class="form-control" placeholder="Leo Perez" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Dni</label>
                                        <input type="text" pattern="[0-9]*" title="Solo se ingresan números hasta 8 caracteres" maxlength="8" name="txtdni" class="form-control" placeholder="01245678" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Direccion</label>
                                        <input type="text" name="txtdire" class="form-control" placeholder="Chiclayo - La Victoria" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Email address</label>
                                        <input type="email" name="txtemail" class="form-control" placeholder="email@example.com" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" name="txtpass" class="form-control" placeholder="Password" required>
                                    </div>   
                                    <div class="form-group" hidden>
                                        <label>Rol</label>
                                        <input type="text" name="txtrol" class="form-control" placeholder="Rol" value="Usuario">
                                    </div>  
                                    <button type="submit" name="accion" value="Registrar" class="btn btn-outline-danger btn-block">Crear Cuenta</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-------------------------------->

        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="#">Inicio</a></li>
                        <li class="active">Carrito de Compra</li>
                    </ol>
                </div>
                <h2>Carrito</h2>     
                <%
                    Fecha fechaSistema = new Fecha();
                %>                     
                <p class="ml-auto">Fecha: <%= fechaSistema.Fecha()%></p>  
                <div class="table-responsive cart_info" id="cart-container">
                    <table class="table table-condensed" id="shop-table">
                        <thead>
                            <tr class="cart_menu text-center">
                                <td width="8%">N°</td>
                                <td class="image" colspan="2" width="35%">Item</td>
                                <td class="price">Precio</td>
                                <td class="quantity">Cantidad</td>
                                <td class="total">Total</td>
                                <td>Acción</td>
                            </tr>
                        </thead>
                        <tbody> 
                            <c:forEach var="c" items="${Carrito}"> 
                                <tr>
                                    <td class="text-center">${c.getItem()}</td>    
                                    <td class="cart_product">
                                        <img src="${c.getFoto()}" alt="" width="150" height="130">
                                    </td>
                                    <td class="cart_description text-right">
                                        <h4> ${c.getNombres()}</h4>
                                        <p> Web ID: ${c.getIdProducto()}</p>
                                    </td>
                                    <td class="cart_price text-center">
                                        <p>US $${c.getPrecioCompra()}</p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <input type="hidden" id="item1" value="${c.getIdProducto()}">
                                            <input style="margin-left: 25%;" class="cart_quantity_input" 
                                                   type="number" min="1" max="100" id="Cant" value="${c.getCantidad()}" autocomplete="on" size="2">
                                        </div> 
                                    </td>
                                    <td class="cart_total text-center">
                                        <p class="cart_total_price">US $${c.getSubTotal()}</p>
                                    </td>
                                    <td class="cart_delete">
                            <center>
                                <input type="hidden" id="item2" value="${c.getIdProducto()}"> 
                                <a id="deleteItem" href="#" class="btn" ><i class="fa fa-times"></i></a>
                            </center>
                            </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div> 
                <a href="./Controlador?accion=home">Seguir Comprando</a>
            </div>
        </section> <!--/#cart_items-->
        <section id="do_action">
            <div class="container">
                <div class="heading">
                    <h3>¿De qué forma quiere pagar la compra?</h3>
                    <p>Choose if you have a discount code or reward points you want
                        to use or would like to estimate your delivery cost.</p>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="total_area">
                            <center><img src="images/undraw_delivery_address_re_cjca.svg" style="width: 50%"></center>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="total_area">
                            <ul>
                                <li>Cart Sub Total <span id="txt-subtotal">US $${totalPagar}</span></li>
                                <li>Precio envio <span>US $0.0</span></li>
                                <li>Descuento <span>US $0.0</span></li>
                                <li>Total <span id="txt-total">US $${totalPagar}</span></li>
                            </ul>
                            <a class="btn btn-default update" data-toggle="collapse" data-target="#collapseExample1" aria-expanded="false" 
                               aria-controls="collapseExample">¿Quieres Comprar?</a>
                            <a class="btn btn-danger check_out" href="./Controlador?accion=Nuevo">Cancelar</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6" >
                        <!-- Llamo al contenido cuando el usuario clickea el boton-->
                        <div class="collapse" id="collapseExample1" style="border: 1px red solid; padding: 15px;">
                            <div class="card card-body">
                                <form action="Controlador?accion=GenerarCompra" method="POST">
                                    <div class="form-group">
                                        <h3>Datos del Cliente</h3>
                                        <p>Rellenar los campos que faltan para el envio</p>
                                        <label style="color: red;">* </label><label> ¿Crédito o Débito?</label>
                                        <select class="form-control" required>
                                            <option selected disabled>Escoga una opción</option>  
                                            <option value="Credito">Crédito</option>  
                                            <option value="Debito">Débito</option>  
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label style="color: red;">* </label><label> Número de Tarjeta</label>
                                        <input type="text" pattern="[0-9]*" title="Solo se ingresan números hasta 12 caracteres" maxlength="12" class="form-control" placeholder="**** **** **** ****" required>
                                    </div>
                                    <div class="form-group">
                                        <label style="color: red;">* </label><label> Clave</label>
                                        <input type="text" pattern="[0-9]*" title="Solo se ingresan números hasta 4 caracteres" maxlength="4" class="form-control" placeholder="****" required>
                                    </div>
                                    <div class="form-group">
                                        <label>DNI</label>
                                        <input type="text" pattern="[0-9]*" title="Solo se ingresan números hasta 8 caracteres" maxlength="8" class="form-control" value="${dnii}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Nombres</label>
                                        <input type="text" class="form-control" value="${nombres}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Dirección</label>
                                        <input type="text" class="form-control" value="${direccion}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>Celular</label>
                                        <input type="text" pattern="[0-9]*" title="Solo se ingresan números hasta 9 caracteres" maxlength="9" placeholder="123456789" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label style="color: red;">* </label><label> Referencia de la Dirección</label>
                                        <textarea cols="5" rows="5" class="form-control" placeholder="Mi casa es de 3 pisos de fachada color verde y la puerta es marrón" required></textarea>
                                    </div>
                                    <div class="form-group">
                                        <!--<a class="btn btn-primary" href="CompraControlador?accion=GenerarCompra">Generar Compra</a>-->
                                        <button type="submit" name="accion" value="GenerarCompra" class="btn btn-outline-danger btn-block">Guardar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <center>
                            <br><br>
                            <img src="images/undraw_mobile_pay_re_sjb8.svg" style="width: 50%;">
                            <br><br><br><br><br><br>
                            <img src="images/undraw_online_transactions_-02-ka.svg" style="width: 50%;">
                            <br><br><br><br><br><br>
                            <img src="images/undraw_make_it_rain_iwk4.svg" style="width: 50%;">
                            <br><br><br>
                        </center>
                    </div>

                </div>
            </div>
        </section><!--/#do_action-->
        <!------------------------> 
        <footer id="footer"><!--Footer-->
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Servicios</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="">Ayuda en Línea</a></li>
                                    <li><a href="">Contáctanos</a></li>
                                    <li><a href="">Soporte</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Marcas</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="">Askoll</a></li>
                                    <li><a href="">BMW</a></li>
                                    <li><a href="">BSG</a></li>
                                    <li><a href="">AIMA</a></li>
                                    <li><a href="">GreenLine</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Políticas</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="">Términos de Uso</a></li>
                                    <li><a href="">Política de Privacidad</a></li>
                                    <li><a href="">Política de Reembolso</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Acerca de Compras</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="">Mis Compras</a></li>
                                    <li><a href="">Ubicación de la Tienda</a></li>
                                    <li><a href="">Carrito</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3 col-sm-offset-1" id="Contacto">
                            <div class="single-widget">
                                <h2>Enviar Mensaje</h2>
                                 <form action="MensajeControlador" method="GET" class="searchform">
                                    <textarea rows="4" cols="50" name="txtmensaje" required></textarea>
                                    <style>
                                        textarea {
                                            border: 1px solid #DDDDDD;
                                            background-color: #FFF;
                                            color: #000000;
                                            font-family: 'Roboto', sans-serif;
                                            font-size: 14px;
                                            margin-top: 0;
                                            outline: medium none;
                                            padding: 7px;
                                            width: 212px;
                                        }
                                    </style>
                                    <input value="${clie}" name="txtIdClie" hidden>
                                    </br></br><button type="submit" name="accion" value="Mensaje" class="btn btn-danger" style="margin-left: 1px;"> Enviar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <p class="pull-left">Copyright &copy; Dalio 2022</p>
                        <p class="pull-right">Diseñado por <span>Grupo 7</span></p>
                    </div>
                </div>
            </div>

        </footer><!--/Footer-->
        <script src="js/jquery.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funciones.js" type="text/javascript"></script>
    </body>
</html>