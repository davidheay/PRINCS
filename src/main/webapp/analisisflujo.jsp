<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="bootstrap admin template">
        <meta name="author" content="">

        <title>An�lisis | Flujo</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/metisMenu/metisMenu.min.css" rel="stylesheet">
        <link href="css/scss/style.min.css" rel="stylesheet">
        <link href="lib/expandingSearchBar/component.css" rel="stylesheet">
        <link href="lib/customScrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
        <link href="lib/hover/hover.css" rel="stylesheet">
        <link href="lib/waves/waves.css" rel="stylesheet">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    </head>

    <body>
        <div class="preloader">
            <div class="la-ball-pulse la-2x">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
        <header>
            <div id="headerMain">
                <div id="header">
                    <div class="nawbarMain  headerWrapper clearfix">
                        <div class="nawbarMainLeft ">
                            <div class="mercancia">
                                <img src="img/championpeque.png" alt="" width=30%>
                            </div>
                        </div>
                        <div id="sb-search" class="sb-search" style="visibility: hidden">
                            <form>
                                <input class="sb-search-input" placeholder="Enter search" type="search" value="" name="search" id="search">
                                <input class="sb-search-submit" type="submit" value="">
                                <span class="sb-icon-search"></span>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="mainWrapper">
            <div id="sideBarWrapper">
                <div id="sideBarContent">
                    <div id="bar" class="sideBar sideBarDark">
                        <!-- start sitebar-->
                        <div class="sideBarUser">
                            <div class="sideBarUserConteiner">
                                <div class="sideBarUserConteinerImg">
                                    <img src="img/user.png" alt="UserInfo" class="userimg">
                                </div>
                                <div class="sideBarUserConteinerText">
                                    <span class="userInfo"><a href="/PRINCS/LoginController">Administrador</a><br><i class="fa fa-map-marker"></i> Bogot�, COL </span>
                                </div>
                            </div>
                        </div>
                        <div id="menuContent">
                            <div id="menuSize">
                                <aside class="sidebar">
                                    <nav class="sidebar-nav">
                                        <ul class="metismenu" id="menu">
                                            <li>
                                                <a href="#" aria-expanded="true">
                                                    <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
                                                    <span class="sidebar-nav-item">Men� Principal</span>
                                                    <span class="fa arrow"></span>
                                                </a>
                                                <ul aria-expanded="true" class="collapse">
                                                    <li>
                                                        <a href="consultamercancia.html">Consultar Mercanc�a</a>
                                                    </li>
                                                    <li>
                                                        <a href="menuinventario.html">Consultar Inventario</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="#" aria-expanded="true">
                                                    <span class="glyphicon glyphicon-signal" aria-hidden="true"></span>
                                                    <span class="sidebar-nav-item">An�lisis</span>
                                                    <span class="fa arrow"></span>
                                                </a>
                                                <ul aria-expanded="false" class="collapse">
                                                    <li>
                                                        <a href="analisisbodega.jsp">
                                                            De Bodega
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="analisistipo.jsp">
                                                            Tipo de carga
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="/PRINCS/LogoutController"><span class="glyphicon glyphicon-check"></span>
                                                    Cerrar Sesi�n
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </aside>
                            </div>
                        </div>
                        <div class="timeWrapper colorTheme">
                            <div class="menuTime2">
                                <span class="current-time2"></span>
                            </div>
                            <div class="menuTime">
                                <span class="current-time"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="mainWrapper" class="mainConteiner column">
            <div class="mainConteinerConten">
                <div class="container-fluid footerfix">
                    <div class="row">
                        <div class="col-lg-12 ">
                            <div class="panel panel-default">
                                <div class="panel-heading clearfix">
                                    <div class="titulo">
                                        <h3 style="text-align:-webkit-center">Flujo de entrada y salida</h3>
                                        <br>
                                        <br>
                                    </div>
                                </div>
                                <div class="descripcion" style="padding-left:30px">
                                    <h8 align="center">A continuaci�n podr� ver la gr�fica de flujos, donde las unidades del eje "Y" se dan en unidades de mercancia.</h8>
                                </div>
                                <div class="panel-body">
                                    <iframe width="933" height="700" src="https://app.powerbi.com/view?r=eyJrIjoiMzgzMjhiZmEtZTgzOC00OWQ5LThhOGUtYzEyZWU2YzkyZTA1IiwidCI6ImFjYTUxNjMxLTAwZmUtNDkwZC05MWFiLTE2M2VmODcyNjBlZSIsImMiOjR9" frameborder="0" allowFullScreen="true"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="fotterWrapper">
                � 2019 Copyright.
            </div>
        </div>
        <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="lib/sparklineChart/sparkline.min.js"></script>
        <script type="text/javascript" src="lib/sparklineChart/sparklineant.js"></script>
        <script type="text/javascript" src="lib/expandingSearchBar/uisearch.js"></script>
        <script type="text/javascript" src="lib/expandingSearchBar/classie.js"></script>
        <script type="text/javascript" src="lib/slimscroll/jquery.slimscroll.min.js"></script>
        <script type="text/javascript" src="lib/customScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <script type="text/javascript" src="lib/metisMenu/metisMenu.min.js"></script>
        <script type="text/javascript" src="lib/momentjs/moment.min.js"></script>
        <script type="text/javascript" src="lib/waves/waves.min.js"></script>
        <script type="text/javascript" src="js/functions.js"></script>
    </body>

</html>