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
        <link rel="stylesheet" href="css/chat.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                                    <li><a href="Controlador?accion=carrito"><i class="fa fa-shopping-cart"></i> Carrito (<label style="color: darkorange">${cont}</label>)</a></li>
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
        <section id="advertisement">
            <div class="container">
                <img src="images/shop/advertisement.jpg" alt="" />
            </div>
        </section>
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
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Problema</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">
                                                En la actualidad, existen vehículos de transporte donde presentan los siguientes problemas:</br></br>
                                                * Motores de los vehículos de transporte que contaminan al medio ambiente </br></br>
                                                * Combustible caro </br></br>
                                                * Generan contaminación auditiva </br></br>
                                                Además los transportes que causan todos estos problemas son:</br></br> 
                                                * Camionetas</br></br>
                                                * Motocicletas</br></br>
                                                * Mototaxis
                                            </a></h4>
                                    </div>
                                </div>
                            </div><!--/category-productsr-->

                            <div class="shipping text-center"><!--shipping-->
                                <img src="images/home/flyer-moto-electrica.png" alt=""/>
                                </br></br></br>
                            </div><!--/shipping-->	

                            <div class="brands_products"><!--brands_products-->
                                <h2>Solución</h2>
                                <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a href="#">
                                                    Por ello, hemos tomado la medida de vender motos eléctricas en el cual tiene las siguientes características: </br></br>
                                                    * Motor que no contamina el medio ambiente</br></br>
                                                    * Recargado con electricidad</br></br>
                                                    * No generan contaminación auditiva</br></br>
                                                    Además, vendemos accesorios para que los clientes disfruten.
                                                </a></h4>
                                        </div>
                                    </div>
                                </div><!--/category-productsr-->
                            </div><!--/brands_products-->

                            <div class="shipping text-center"><!--shipping-->
                                <img src="images/home/flyer-accesorios.png" alt=""/>
                            </div><!--/shipping-->	
                        </div>
                    </div>
                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">PRODUCTOS</h2>
                            <c:forEach var="p" items="${productos}">
                                <!--Cargar productos-->
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="${p.getFoto()}" />
                                                <h2>US $${p.getPrecio()}</h2>
                                                <p>${p.getNombres()}</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Ver detalles</a>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <h2>US $${p.getPrecio()}</h2>
                                                    <p>${p.getNombres()}</p>
                                                    <a href="Controlador?accion=Producto&id=${p.getId()}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Ver detalles</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div><!--features_items-->
                        <center>
                            <ul class="pagination">
                                <li class="active"><a href="">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">&raquo;</a></li>
                            </ul>
                        </center>
                    </div>
                </div>
            </div>
        </section>
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
            <div class="chat-bar-collapsible">
                <button id="chat-button" type="button" class="collapsible">Pregunta por ayuda!
                    <i id="chat-icon" style="color: #fff;" class="fa fa-fw fa-comments-o"></i>
                </button>

                <div class="content">
                    <div class="full-chat-block">

                        <div class="outer-container">
                            <div class="chat-container">

                                <div id="chatbox">
                                    <h5 id="chat-timestamp"></h5>
                                    <p id="botStarterMessage" class="botText"><span>Hola soy tu ayudante virtual</span></p>

                                </div>


                                <div class="chat-bar-input-block">
                                    <div id="userInput">
                                        <input id="textInput" class="input-box" type="text" name="msg"
                                               placeholder="Presione ENTER para enviar un mensaje">
                                        <p></p>
                                    </div>

                                    <div class="chat-bar-icons">
                                        <i id="chat-icon" style="color: crimson;" class="fa fa-fw fa-heart"
                                           onclick="heartButton()"></i>
                                        <i id="chat-icon" style="color: #333;" class="fa fa-fw fa-send"
                                           onclick="sendButton()"></i>
                                    </div>
                                </div>

                                <div id="chat-bar-bottom">
                                    <p></p>
                                </div>

                            </div>
                        </div>

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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="js/responses.js"></script>
        <script src="js/chat.js"></script>


    </body>
</html>
