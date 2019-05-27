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

        <title>Especificaci�n Mercanc�a </title>

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
        <link href="lib/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">
        <link href="lib/ion.rangeSlider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css">
        <link href="lib/ion.rangeSlider/css/ion.rangeSlider.skinModern.css" rel="stylesheet" type="text/css">
        <link href="lib/icheck/skins/all.css" rel="stylesheet">
        <link href="lib/niseSelect/nice-select.css" rel="stylesheet">
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
                                <!--sideBarUserConteinerImg-->
                                <div class="sideBarUserConteinerText">
                                    <span class="userInfo"><a href="/PRINCS/LoginController">Administrador </a><br><i class="fa fa-map-marker"></i> Bogot�, COL </span>
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
                                                        <a href="/PRINCS/consultaMercanciaController">Consulta de Mercanc�a</a>
                                                    </li>
                                                    <li>
                                                        <a href="menuinventario.jsp">Consulta de Inventario</a>
                                                    </li>
                                                    <li>
                                                        <a href="manalisis.jsp">An�lisis Inventario</a>
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
            <!--start nainconteiner-->
            <div class="mainConteinerConten">
                <div class="container-fluid footerfix">
                    <div class="row firstRow">

                        <div class="col-lg-9  col-md-8  col-sm-7">

                            <div class="row">
                                <div class="col-lg-12 ">
                                    <div class="panel panel-default">
                                        <!--panel-->
                                        <div class="panel-body">
                                            <div class="titulo" style="align-content: center">
                                                <h3 style="text-align:-webkit-center">Ver Mercanc�a</h3>
                                                <LABEL>ID MERCANC�A</LABEL>
                                                <div class="input-group input-default">
                                                    <span class="input-group-addon border-left" id="basic-addon3"></span>
                                                    <input type="text" value="<%= request.getAttribute("idMercancia")%>" readonly=�readonly� class="form-control" placeholder="ID Mercanc�a" aria-describedby="basic-addon1">
                                                </div>
                                                <br>
                                                <LABEL>ESTADO</LABEL>
                                                <br>
                                                <div class="input-group input-success">
                                                    <span class="input-group-addon border-left" id="basic-addon3"></span>
                                                    <input type="text" value="<%= request.getAttribute("estado")%>" readonly=�readonly� class="form-control" placeholder="Estado" aria-describedby="basic-addon3">
                                                </div>
                                                <br>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <form action="/PRINCS/editorMercanciaController" method="POST">
                                                <input type="hidden" id="idMercancia" name="idMercancia" value="<%= request.getAttribute("idMercancia")%> " >


                                                <button type="submit" class="btn btn-primary  float-button-light">Editar</button>

                                            </form>
                                            <br>
                                            <br>
                                            <!--<button id="warningAttached" class="btn btn-primary btn-df float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Eliminar</button>-->
                                        </div>
                                    </div>
                                    <!--panel-body-->
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6 ">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <LABEL>TIPO DE MERCANCIA</LABEL>
                                            <div class="input-group input-default">
                                                <span class="input-group-addon border-left" id="basic-addon3"></span>
                                                <input type="text" value="<%= request.getAttribute("tipo")%>" readonly=�readonly� class="form-control" placeholder="Tipo de Mercanc�a " aria-describedby="basic-addon1">
                                            </div>
                                            <br>
                                            <LABEL>CLIENTE</LABEL>
                                            <br>
                                            <div class="input-group input-danger">
                                                <span class="input-group-addon border-right" id="basic-addon6"></span>
                                                <input type="text" value="<%= request.getAttribute("cliente")%>" readonly=�readonly� class="form-control" placeholder="Nombre del Cliente" aria-describedby="basic-addon6">
                                            </div>
                                            <br>

                                        </div>
                                    </div>
                                    <!--panel-body-->
                                </div>
                                <div class="col-lg-6 ">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <label>ACTAS</label>
                                            <br>
                                            <div class="buttonWrapper" style="padding: inherit" >
                                                <div class="Estado pull-left" style="padding-top: 10px;padding-left: 1px">
                                                    <label>Acta Ingreso &nbsp; &nbsp; </label>
                                                </div>

                                                <form action="/PRINCS/actaController" method="POST">
                                                    <input type="hidden" id="idActa" name="idActa" value="<%= request.getAttribute("reservaIn")%> " >

                                                    <button type="submit" class="btn btn-info btn-df  float-button-light"> Ver</button>

                                                </form>
                                                <br>
                                            </div>
                                            <div class="buttonWrapper" style="padding: inherit" >
                                                <div class="Estado pull-left" style="padding-top: 10px;padding-left: 1px">
                                                    <label>Acta Salida &nbsp; &nbsp; </label>
                                                </div>
                                                <a href="acta.html">
                                                    <button type="button" class="btn btn-info btn-df  float-button-light"> Ver</button>
                                                </a>
                                                <br>
                                            </div>

                                        </div>
                                    </div>
                                    <!--panel-body-->
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="panel panel-default">

                                        <!--panel-->
                                        <div class="panel-body">
                                            <LABEL>N�MERO DE PIEZAS</LABEL>
                                            <br>
                                            <div class="input-group input-primary-light">
                                                <input type="text" value="<%= request.getAttribute("nPiezas")%>" readonly=�readonly� class="form-control" placeholder="N�mero de piezas" aria-describedby="basic-addon8">
                                                <span class="input-group-addon" id="basic-addon8"></span>
                                            </div>
                                            <br>
                                            <LABEL>VALOR</LABEL>
                                            <br>
                                            <div class="input-group input-primary-light">
                                                <input type="text" value="<%= request.getAttribute("valor")%>" readonly=�readonly� class="form-control" placeholder="Valor de la mercanc�a" aria-describedby="basic-addon8">
                                                <span class="input-group-addon" id="basic-addon8"></span>
                                            </div>
                                            <LABEL>MONEDA</LABEL>
                                            <br>
                                            <div class="input-group input-info-light">
                                                <input type="text" value="<%= request.getAttribute("moneda")%>" readonly=�readonly� class="form-control" placeholder="Moneda" aria-describedby="basic-addon10">
                                                <span class="input-group-addon" id="basic-addon10"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading clearfix">
                                        </div>
                                        <div class="panel-body">
                                            <div class="form-group input-primary">
                                                <label for="comment">OBSERVACIONES:</label>
                                                <textarea  readonly=�readonly�  class="form-control" rows="2" id="comment1"><%= request.getAttribute("observaciones")%></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <!--panel-body-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--mainConteinerConten-->
                <div class="fotterWrapper">
                    � 2019 Copyright.
                </div>
                <!--fotterWrapper-->
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
        <script type="text/javascript" src="lib/niseSelect/jquery.nice-select.min.js"></script>
        <script type="text/javascript" src="lib/waves/waves.min.js"></script>
        <script type="text/javascript" src="lib/sweetalert/sweetalert.min.js"></script>
        <script type="text/javascript" src="js/alertsFunctions.js"></script>
        <script src="lib/ion.rangeSlider/js/ion.rangeSlider.js"></script>
        <script src="lib/datetimepicker/moment-with-locales.js"></script>
        <script src="lib/datetimepicker/bootstrap-datetimepicker.min.js"></script>
        <script type="text/javascript" src="lib/icheck/icheck.js"></script>
        <script type="text/javascript" src="lib/icheck/custom.js"></script>
        <script type="text/javascript" src="js/formelementsFunctions.js"></script>
        <script type="text/javascript" src="js/selectFunctions.js"></script>
        <script type="text/javascript" src="js/functions.js"></script>
    </body>

</html>