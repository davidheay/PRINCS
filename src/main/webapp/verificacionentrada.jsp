<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="bootstrap admin template">
        <meta name="author" content="">

        <title>Verificaci�n Entrada</title>

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
        <link href="lib/icheck/skins/all.css" rel="stylesheet">
        <link href="lib/dataTable/css/jquery.dataTables.css" rel="stylesheet">

        <!-- Bootstrap -->
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via  -->
        <!--[if lt IE 9]>
                <script src="lib/html5shiv/html5shiv.min.js"></script>
                <script src="lib/respondjs/respond.min.js"></script>
        <![endif]-->
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
                                    <span class="userInfo"><a href="/PRINCS/LoginController"> Operario</a><br><i class="fa fa-map-marker"></i> Bogot�, COL </span>
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
                                                    <span class="sidebar-nav-item">Verificaci�n de Mercanc�a</span>
                                                    <span class="fa arrow"></span>
                                                </a>
                                                <ul aria-expanded="true" class="collapse">
                                                    <li>
                                                        <a href="verificacionsalida.jsp">Verificaci�n Salida</a>
                                                    </li>
                                                </ul>

                                            </li>
                                            <li>
                                                <a href="/PRINCS/inventarioBodegaOpeController"><span class="glyphicon glyphicon-th-large"></span>
                                                    Consultar Inventario en Bodega
                                                </a>
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
            <div class="mainConteinerConten">
                <div class="container-fluid footerfix">

                    <!--	MEIN CONTENT  -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-body topSellingHeader">
                                    <br>
                                    <nav class="navbar navbar-default">
                                        <div class="container-fluid">
                                            <!-- Brand and toggle get grouped for better mobile display -->
                                            <div class="navbar-header">
                                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                                    <span class="sr-only">Toggle navigation</span>
                                                    <span class="icon-bar"></span>
                                                    <span class="icon-bar"></span>
                                                    <span class="icon-bar"></span>
                                                </button>
                                            </div>
                                            <div class="titulo">
                                                <h3 style="text-align:-webkit-center">Verificaci�n Entrada</h3>
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
                                                <tr class="selectedTableHeader">
                                                    <td class="selectedTableOrders" style="width: 50px">ID MERCANCIA</td>
                                                    <td class="selectedTablePurcahsed">TIPO DE MERCANC�A</td>
                                                    <td class="selectedTableCustomer">CLIENTE</td>
                                                    <td class="selectedTableStatus">OBSERVACIONES</td>
                                                    <td class="selectedTableActions">ACTA</td>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <c:forEach var="item" items="${lstMercancias}">
                                                    <c:set var="actain" value="${item.getReservaIn()}"></c:set>
                                                    <c:set var="actaout" value="${item.getReservaOut()}"></c:set>

                                                    <c:if test="${actain eq 'NULL' && actaout eq 'NULL' }">
                                                        <tr>
                                                            <td><c:out value="${item.getIdMercancia()}"></c:out></td>
                                                            <td><c:out value="${item.getIdTipo()}"></c:out></td>
                                                            <td><c:out value="${item.getIdCliente()}"></c:out></td>
                                                            <td><c:out value="${item.getObservaciones()}"></c:out></td>
                                                                <td class="text-center">
                                                                    <form action="/PRINCS/creacionActaController" method="POST">
                                                                        <input type="hidden" id="idMercancia" name="idMercancia" value=<c:out value="${item.getIdMercancia()}"></c:out>>
                                                                        <input type="hidden" id="tActa" name="tActa" value="IN">
                                                                        <button type="submit" class="btn btn-info btn-sm  float-button-light">Crear Acta IN</button>
                                                                    </form>
                                                                </td>


                                                            </tr>
                                                    </c:if>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                        <br>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--row-->
                    <!--MEIN CONTENT-->


                </div>
                <!--container-fluid-->
            </div>
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

        <script type="text/javascript" src="lib/icheck/icheck.js"></script>
        <script type="text/javascript" src="lib/icheck/custom.js"></script>
        <script type="text/javascript" src="lib/dataTable/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/dataTableFunctions.js"></script>
        <script type="text/javascript" src="js/ordersFunctions.js"></script>

        <script type="text/javascript" src="js/functions.js"></script>
    </body>

</html>