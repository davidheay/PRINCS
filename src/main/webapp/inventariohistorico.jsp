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

        <title>Inventario | Histórico</title>

        <link href="lib/dataTable/css/jquery.dataTables.css" rel="stylesheet">

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
        <link href="lib/sweetalert/sweetalert.css" rel="stylesheet">

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
                            <div class="champion">
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

                        <!--nawbarMain-->
                    </div>
                    <!--header-->
                </div>
            </div>
            <!--headerMain -->
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
                                <!--sideBarUserConteinerImg-->
                                <div class="sideBarUserConteinerText">
                                    <span class="userInfo"><a href="user.html">Administrador </a><br><i class="fa fa-map-marker"></i> Bogotá, COL </span>
                                </div>
                                <!--sideBarUserConteinerText-->
                            </div>
                            <!--sideBarUserConteiner-->
                        </div>
                        <div id="menuContent">
                            <div id="menuSize">
                                <aside class="sidebar">
                                    <nav class="sidebar-nav">
                                        <ul class="metismenu" id="menu">
                                            <li>
                                                <a href="#" aria-expanded="true">
                                                    <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
                                                    <span class="sidebar-nav-item">Menú Principal</span>
                                                    <span class="fa arrow"></span>
                                                </a>
                                                <ul aria-expanded="true" class="collapse">
                                                    <li>
                                                        <a href="/PRINCS/consultaMercanciaController">Consulta de Mercancía</a>
                                                    </li>
                                                    <li>
                                                        <a href="manalisis.jsp">Análisis de Inventario</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="#" aria-expanded="true">
                                                    <span class="glyphicon glyphicon-signal" aria-hidden="true"></span>
                                                    <span class="sidebar-nav-item">Consulta de Inventario</span>
                                                    <span class="fa arrow"></span>
                                                </a>
                                                <ul aria-expanded="false" class="collapse">
                                                    <li>
                                                        <a href="inventarioactual.html">
                                                            Inventario actual
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="/PRINCS/LogoutController"><span class="glyphicon glyphicon-check"></span>
                                                    Cerrar Sesión
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </aside>
                            </div>
                            <!--menuSize-->
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
                    <!--menuSize-->
                </div>
                <!--sideBar-->
            </div>
            <!--sideBarContent-->
        </div>
        <!--sideBarWrapper-->
        <div id="mainWrapper" class="mainConteiner column">
            <!--start nainconteiner-->
            <div class="mainConteinerConten">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading clearfix">
                                <div class="titulo">
                                    <h3 style="text-align:-webkit-center">Inventario Histórico</h3>
                                </div>

                            </div>
                            <div class="panel-body topSellingHeader">
                                <br>

                                <br>
                                <div class="dataTableWrapper">
                                    <table id="example1" class="display tableWrapper">
                                        <thead>
                                            <tr>
                                                <th>ID Mercancía</th>
                                                <th>Cliente</th>
                                                <th>Placa</th>
                                                <th>Acta</th>
                                                <th>Fecha</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <c:forEach var="item" items="${lstReservas}">
                                                <tr>
                                                    <td><c:out value="${item.getIdMercancia()}"></c:out></td>
                                                    <td><c:out value="${item.getIdCliente()}"></c:out></td>
                                                    <td><c:out value="${item.getPlaca()}"></c:out></td>
                                                        <td class="text-center">
                                                            <form action="/PRINCS/actaController" method="POST">
                                                                <input type="hidden" id="idActa" name="idActa" value="${item.getIdReserva()}" >
                                                            <button type="submit" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                        </form>

                                                    </td>
                                                    <td><c:out value="${item.getFecha()}"></c:out></td>
                                                    </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--row-->
            <!--MEIN CONTENT -->
        </div>
        <!--container-fluid-->
        <!--mainConteinerConten-->
        <div class="fotterWrapper">
            © 2019 Copyright.
        </div>
        <!--fotterWrapper-->
        <!--mainConteinerConten-->
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
        <script type="text/javascript" src="lib/sweetalert/sweetalert.min.js"></script>
        <script type="text/javascript" src="js/alertsFunctions.js"></script>
        <script type="text/javascript" src="js/functions.js"></script>
        <script type="text/javascript" src="lib/dataTable/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/dataTableFunctions.js"></script>
        <script type="text/javascript" src="js/ordersFunctions.js"></script>
        <script type="text/javascript" src="lib/icheck/icheck.js"></script>
        <script type="text/javascript" src="lib/icheck/custom.js"></script>
    </body>

</html>