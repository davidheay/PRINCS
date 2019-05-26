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

        <title>Consulta Mercancia | Men�</title>

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
                            <div class="mercancia">
                                <img src="img/championpeque.png" alt="" width=30%>
                            </div>
                            <!--mainLogo-->
                            <!--headerLogo-->
                        </div>
                        <!--nawbarMainLeft-->
                        <!--nawbarMainRight-->
                        <div id="sb-search" class="sb-search" style="visibility: hidden">
                            <form>
                                <input class="sb-search-input" placeholder="Enter search" type="search" value="" name="search" id="search">
                                <input class="sb-search-submit" type="submit" value="">
                                <span class="sb-icon-search"></span>
                            </form>
                        </div>


                    </div>
                    <!--nawbarMain-->
                </div>
                <!--header-->
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
                                    <span class="userInfo"><a href="user.html">Administrador </a><br><i class="fa fa-map-marker"></i> Bogot�, COL </span>
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
                                                    <span class="sidebar-nav-item">Men� Principal</span>
                                                    <span class="fa arrow"></span>
                                                </a>
                                                <ul aria-expanded="true" class="collapse">
                                                    <li>
                                                        <a href="menuinventario.html">Consulta de Inventario</a>
                                                    </li>
                                                    <li>
                                                        <a href="manalisis.html">An�lisis de Inventario</a>
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
                            <!--menuSize-->
                        </div>
                        <!--	menuContent-->


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

            <!--	MEIN CONTENT  -->
            <div class="row">

                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading clearfix">
                            <div class="titulo">
                                <h3 style="text-align:-webkit-center">Consulta de Mercanc�a</h3>
                            </div>
                        </div>
                        <div class="panel-body topSellingHeader">
                            <br>
                            <nav class="navbar navbar-default">
                                <div class="container-fluid">
                                    <!-- Brand and toggle get grouped for better mobile display -->
                                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                        <ul class="nav navbar-nav navbar-left">
                                            <li class="active"><a href="#">WEEK <span class="sr-only">(current)</span></a></li>
                                            <li><a href="#">MONTH</a></li>
                                            <li><a href="#">YEAR</a></li>
                                        </ul>
                                    </div>
                                    <!-- /.navbar-collapse -->
                                </div>
                                <!-- /.container-fluid -->
                            </nav>
                            <br>
                            <br>
                            <div class="table-responsive">
                                <table id="example" class="display tableWrapper">
                                    <thead>
                                        <tr>
                                            <td class="selectedTableOrders">ID Mercanc�a</td>
                                            <td class="selectedTablePurcahsed">Cliente</td>
                                            <td class="selectedTableCustomer">Tipo</td>
                                            <td class="selectedTableShipTo">Estado</td>
                                            <td class="selectedTableStatus">Observaciones</td>
                                            <td class="selectedTableActions">M�s Acciones</td>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <c:forEach var="item" items="${lstMercancias}">
                                            <c:set var="estado" scope="session" value="${item.getEstado()}"/>

                                            <tr>
                                                <td><c:out value="${item.getIdMercancia()}"></c:out></td>
                                                <td><c:out value="${item.getIdCliente()}"></c:out></td>
                                                <td><c:out value="${item.getIdTipo()}"></c:out></td>
                                                <td> <span <c:choose>
                                                            <c:when test="${estado == 'IN STOCK'}"> class="label label-default colorYellow"</c:when>
                                                            <c:when test="${estado == 'ON HOLD'}"> class="label label-default colorPink"</c:when>
                                                            <c:when test="${estado == 'CLOSED'}">   class="label label-default colorBlue"  </c:when>
                                                            <c:otherwise>  </c:otherwise>
                                                        </c:choose>>
                                                        <c:out value="${item.getEstado()}"></c:out>
                                                        </span>
                                                    </td>

                                                    <td><c:out value="${item.getObservaciones()}"></c:out></td>


                                                    <td class="text-center">
                                                        <a href="especificacionmercancia.html">
                                                            <button type="button" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                        </a>
                                                        <a href="editormercancia.html">
                                                            <button type="button" class="btn btn-success btn-sm  float-button-light">Editar</button>
                                                        </a>
                                                        <button id="warningAttached" class="btn btn-primary btn-sm float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>
                                                    </td>
                                                </tr>
                                        </c:forEach>

                                        <!--
                                        <tr>
                                            <td>2</td>
                                            <td>12.09.2015</td>
                                            <td>Test Customer</td>
                                            <td>Test Customer</td>
                                            <td class="text-center">
                                                <span class="label label-default colorPink">Por Llegar</span>
                                            </td>
                                            <td class="text-center">
                                                <a href="especificacionmercancia.html">
                                                    <button type="button" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                </a>
                                                <a href="editormercancia.html">
                                                    <button type="button" class="btn btn-success btn-sm  float-button-light">Editar</button>
                                                </a>
                                                <button id="warningAttached" class="btn btn-primary btn-sm float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>12.09.2015</td>
                                            <td>Test Customer</td>
                                            <td>Test Customer</td>
                                            <td class="text-center">
                                                <span class="label label-default colorBlue">Enviado</span>
                                            </td>
                                            <td class="text-center">
                                                <a href="especificacionmercancia.html">
                                                    <button type="button" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                </a>
                                                <a href="editormercancia.html">
                                                    <button type="button" class="btn btn-success btn-sm  float-button-light">Editar</button>
                                                </a>
                                                <button id="warningAttached" class="btn btn-primary btn-sm float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>12.09.2015</td>
                                            <td>Test Customer</td>
                                            <td>Test Customer</td>
                                            <td class="text-center">
                                                <span class="label label-default colorYellow">En Bodega</span>
                                            </td>
                                            <td class="text-center">
                                                <a href="especificacionmercancia.html">
                                                    <button type="button" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                </a>
                                                <a href="editormercancia.html">
                                                    <button type="button" class="btn btn-success btn-sm  float-button-light">Editar</button>
                                                </a>
                                                <button id="warningAttached" class="btn btn-primary btn-sm float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>12.09.2015</td>
                                            <td>Test Customer</td>
                                            <td>Test Customer</td>
                                            <td class="text-center">
                                                <span class="label label-default colorPink">Por Llegar</span>
                                            </td>
                                            <td class="text-center">
                                                <a href="especificacionmercancia.html">
                                                    <button type="button" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                </a>
                                                <a href="editormercancia.html">
                                                    <button type="button" class="btn btn-success btn-sm  float-button-light">Editar</button>
                                                </a>
                                                <button id="warningAttached" class="btn btn-primary btn-sm float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td>6</td>
                                            <td>12.09.2015</td>
                                            <td>Test Customer</td>
                                            <td>Test Customer</td>
                                            <td class="text-center">
                                                <span class="label label-default colorPink">Por Llegar</span>
                                            </td>
                                            <td class="text-center">
                                                <a href="especificacionmercancia.html">
                                                    <button type="button" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                </a>
                                                <a href="editormercancia.html">
                                                    <button type="button" class="btn btn-success btn-sm  float-button-light">Editar</button>
                                                </a>
                                                <button id="warningAttached" class="btn btn-primary btn-sm float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>12.09.2015</td>
                                            <td>Test Customer</td>
                                            <td>Test Customer</td>
                                            <td class="text-center">
                                                <span class="label label-default colorYellow">En Bodega</span>
                                            </td>
                                            <td class="text-center">
                                                <a href="especificacionmercancia.html">
                                                    <button type="button" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                </a>
                                                <a href="editormercancia.html">
                                                    <button type="button" class="btn btn-success btn-sm  float-button-light">Editar</button>
                                                </a>
                                                <button id="warningAttached" class="btn btn-primary btn-sm float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>12.09.2015</td>
                                            <td>Test Customer</td>
                                            <td>Test Customer</td>
                                            <td class="text-center">
                                                <span class="label label-default colorBlue">Enviado</span>
                                            </td>
                                            <td class="text-center">
                                                <a href="especificacionmercancia.html">
                                                    <button type="button" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                </a>
                                                <a href="editormercancia.html">
                                                    <button type="button" class="btn btn-success btn-sm  float-button-light">Editar</button>
                                                </a>
                                                <button id="warningAttached" class="btn btn-primary btn-sm float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>12.09.2015</td>
                                            <td>Test Customer</td>
                                            <td>Test Customer</td>
                                            <td class="text-center">
                                                <span class="label label-default colorYellow">En Bodega</span>
                                            </td>
                                            <td class="text-center">
                                                <a href="especificacionmercancia.html">
                                                    <button type="button" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                </a>
                                                <a href="editormercancia.html">
                                                    <button type="button" class="btn btn-success btn-sm  float-button-light">Editar</button>
                                                </a>
                                                <button id="warningAttached" class="btn btn-primary btn-sm float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>12.09.2015</td>
                                            <td>Test Customer</td>
                                            <td>Test Customer</td>
                                            <td class="text-center">
                                                <span class="label label-default colorYellow">En Bodega</span>
                                            </td>
                                            <td class="text-center">
                                                <a href="especificacionmercancia.html">
                                                    <button type="button" class="btn btn-info btn-sm  float-button-light">Ver</button>
                                                </a>
                                                <a href="editormercancia.html">
                                                    <button type="button" class="btn btn-success btn-sm  float-button-light">Editar</button>
                                                </a>
                                                <button id="warningAttached" class="btn btn-primary btn-sm float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>
                                            </td>
                                        </tr>-->
                                    </tbody>
                                </table>
                                <br>
                                <br>

                                <div class="buttonWrapper">
                                    <a href="creacionmercancia.html">
                                        <button type="button" class="btn btn-danger btn-df float-button-light">A�adir</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--row-->
            <!--MEIN CONTENT-->



            <!--container-fluid-->

            <!--mainConteinerConten-->
            <div class="fotterWrapper">
                � 2019 Copyright.
            </div>
            <!--fotterWrapper-->
        </div>
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