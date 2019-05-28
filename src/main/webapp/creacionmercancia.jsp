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

        <title>Crear | Mercancía</title>

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
        <link href="lib/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">
        <link href="lib/ion.rangeSlider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css">
        <link href="lib/ion.rangeSlider/css/ion.rangeSlider.skinModern.css" rel="stylesheet" type="text/css">
        <link href="lib/icheck/skins/all.css" rel="stylesheet">
        <link href="lib/niseSelect/nice-select.css" rel="stylesheet">
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
                                                        <a href="menuinventario.html">Consulta de Inventario</a>
                                                    </li>
                                                    <li>
                                                        <a href="manalisis.html">Análisis de Inventario</a>
                                                    </li>
                                                    <li>
                                                        <a href="consultamercancia.html">Consulta de Mercancía</a>
                                                    </li>

                                                </ul>
                                            </li>
                                            <li>
                                                <a href="login.html"><span class="glyphicon glyphicon-check"></span>
                                                    Cerrar Sesión
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
                    <div class="row firstRow">
                        <!--row firstRow-->
                        <div class="col-lg-9  col-md-8  col-sm-7">
                            <form action="/PRINCS/creacionmercanciaController" method="POST">

                                <!--	MEIN CONTENT  -->
                                <div class="row">
                                    <div class="col-lg-12 ">
                                        <div class="panel panel-default">
                                            <div class="panel-heading clearfix">
                                            </div>
                                            <div class="panel-body">
                                                <div class="titulo" style="align-content: center">
                                                    <h3 style="text-align:-webkit-center">Crear Mercancía</h3>
                                                    <LABEL>ID MERCANCÍA</LABEL>
                                                    <div class="input-group input-default">
                                                        <span class="input-group-addon border-left" id="basic-addon3"></span>
                                                        <input type="text"  name="idmercancia" readonly=»readonly» class="form-control" placeholder="ID Mercancía" value="<%= request.getAttribute("idMercancia")%>" aria-describedby="basic-addon1">
                                                    </div>
                                                    <br>
                                                    <LABEL>ESTADO</LABEL>
                                                    <br>
                                                    <div class="input-group input-success">
                                                        <span class="input-group-addon border-left" id="basic-addon3"></span>
                                                        <input type="text"  readonly=»readonly» class="form-control" placeholder="Por lllegar"  value="" aria-describedby="basic-addon3">
                                                    </div>
                                                    <br>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 ">
                                        <div class="panel panel-default">
                                            <div class="panel-body" style="padding-top: 5px; padding-right: 10px">

                                                <div class="buttonWrapper" style="padding: inherit" >
                                                    <div class="TIPO pull-left" style="padding-top: 10px;padding-left: 1px">
                                                        <label>TIPO DE MERCANCÍA</label>
                                                    </div>
                                                    <div class="seleccion pull-right">
                                                        <span class="select-default">
                                                            <select required id="tipoMer" name="tipoMer">
                                                                <option selected disabled hidden data-display="Seleccionar">Seleccione una opcion</option>
                                                                <option value="T1">CARGA_SECA</option>
                                                                <option value="T2">PERECEDEROS</option>
                                                                <option value="T3">CARGA FRAGIL </option>
                                                                <option value="T4">CARGA AGRANEL</option>
                                                                <option value="T5">NO PERECEDEROS</option>
                                                            </select>
                                                        </span>
                                                    </div>
                                                    <br>
                                                </div>
                                                <div class="buttonWrapper" style="padding: inherit" >
                                                    <div class="Estado pull-left" style="padding-top: 10px;padding-left: 1px">
                                                        <label>CLIENTE</label>
                                                    </div>
                                                    <div class="seleccion pull-right">
                                                        <span class="select-primary">
                                                            <select required name="cliente">
                                                                <option selected disabled hidden data-display="Seleccionar">Seleccione una opcion</option>
                                                                <option value="C1">OMA</option>
                                                                <option value="C2">JUAN VALDEZ</option>
                                                                <option value="C3">RESCAFE</option>
                                                                <option value="C4">FLOWERS & FLOWERS</option>
                                                                <option value="C5">IMAPAR</option>
                                                                <option value="C6">FLORES COLON</option>
                                                                <option value="C7">AGRIFRESH</option>
                                                                <option value="C8">THE FARM FRESH</option>
                                                                <option value="C9">Caribbean Exotics</option>
                                                                <option value="C10">VIVE CAFE</option>
                                                                <option value="C11">SETAS COLOMBIA NAS</option>
                                                            </select>
                                                        </span>
                                                    </div>
                                                    <br>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 ">
                                        <div class="panel panel-default">
                                            <div class="panel-body">
                                                <LABEL>NÚMERO DE PIEZAS</LABEL>
                                                <br>
                                                <div class="input-group input-primary-light">
                                                    <input name="nPiezas"  type="text" class="form-control" placeholder="Número de piezas" aria-describedby="basic-addon8">
                                                    <span  class="input-group-addon" id="basic-addon8"><i class="fa fa-pencil"></i></span>
                                                </div>
                                                <br>
                                                <LABEL>VALOR</LABEL>
                                                <br>
                                                <div class="input-group input-primary-light">
                                                    <input name="valor" type="text" class="form-control" placeholder="Valor de la mercancía" aria-describedby="basic-addon8">
                                                    <span   class="input-group-addon" id="basic-addon8"><i class="fa fa-pencil"></i></span>
                                                </div>
                                                <LABEL>MONEDA</LABEL>
                                                <br>
                                                <div class="input-group input-info-light">
                                                    <input name="moneda" type="text" class="form-control" placeholder="Moneda" aria-describedby="basic-addon10">
                                                    <span class="input-group-addon" id="basic-addon10"><i class="fa fa-pencil"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <!--panel-body-->
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="panel panel-default">
                                            <!--panel-->
                                            <div class="panel-body">
                                                <div class="form-group input-primary">
                                                    <label for="comment">OBSERVACIONES:</label>
                                                    <textarea name="observaciones" class="form-control" rows="2" id="comment1"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <!--panel-body-->
                                    </div>
                                    <div class="col-lg-3 alertWrapper" style="align-items: right">
                                        <input type="hidden" id="insertar" name="insertar">
                                        <button type="submit" class="btn btn-primary btn-df float-button-light md-trigger waves-effect waves-button waves-float waves-light" >Crear</button>

                                    </div>
                                </div>
                            </form>
                        </div>
                        <!--row-->

                    </div>
                    <!--container-fluid-->
                </div>
                <!--mainConteinerConten-->
                <div class="fotterWrapper">
                    © 2019 Copyright.
                </div>
                <!--fotterWrapper-->
            </div>
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
        <script type="text/javascript" src="lib/niseSelect/jquery.nice-select.min.js"></script>
        <script type="text/javascript" src="lib/waves/waves.min.js"></script>
        <script type="text/javascript" src="lib/sweetalert/sweetalert.min.js"></script>
        <script type="text/javascript" src="js/alertsSuccessFunctions.js"></script>
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