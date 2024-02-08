<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Mis Compras - Tienda DALIO</title>
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
                                    <li><a href="Controlador?accion=Nuevo"><i class="fa fa-shopping-cart"></i> ¡Quiero Comprar!</a></li>
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
        <!-------------------------------->
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
                        <li class="active">Mis Compras</li>
                    </ol>
                </div>
                <h2>Mis Compras</h2>                   
                <div class="table-responsive cart_info" id="cart-container">
                    <table class="table table-condensed" id="shop-table">
                        <thead>
                            <tr class="cart_menu text-center">
                                <td>CODIGO DE COMPRA</td>
                                <td class="image">Fecha de Compra</td>
                                <td class="price">Monto</td>
                                <td class="quantity">Estado</td>
                                <td>Acción</td>
                            </tr>
                        </thead>
                        <tbody> 
                            <c:forEach var="p" items="${myCompras}">  
                                <tr>
                                    <td class="cart_description text-center">
                                        <p>C00${p.getId()}</p>
                                    </td>   
                                    <td class="cart_description text-center">
                                        <p>${p.getFecha()}</p>
                                    </td>
                                    <td class="cart_description text-center">
                                        <p>US $${p.getMonto()}</p>
                                    </td>
                                    <td class="cart_description text-center">
                                        <p>${p.getEstado()}</p>
                                    </td>
                                    <td class="cart_description text-center">
                            <center>
                                <a class="btn" href="CompraControlador?accion=verDetalle&idcompra=${p.getId()}">Ver Detalle</a>
                            </center>
                            </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div> 
            </div>
        </section> <!--/#cart_items-->

        <!-------------------------------->                                  
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
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>