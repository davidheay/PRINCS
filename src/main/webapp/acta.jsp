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

        <title>Acta</title>

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
                                <img src="img/championpeque.png" alt=""/ width=30%>
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
                                                        <a href="manalisis.jsp">An�lisis de Inventario</a>
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
        <div id="mainWrapper" class="mainConteiner column">
            <!--start nainconteiner-->
            <div class="mainConteinerConten">
                <div class="container-fluid footerfix">

                    <!--	MEIN CONTENT  -->
                    <div class="row">
                        <div class="col-lg-12 ">
                            <div class="panel panel-default">
                                <div class="panel-heading clearfix">
                                    <div class="titulo">
                                        <h3 style="text-align:-webkit-center">Acta</h3>

                                        <div class="buttonWrapper" style="padding: inherit" >
                                            <div class="TIPO pull-left" style="padding-top: 10px;padding-left: 1px">
                                                <LABEL>ID ACTA</LABEL>
                                                <div class="input-group input-default">
                                                    <span class="input-group-addon border-left" id="basic-addon3"></span>
                                                    <input type="text" value="<%= request.getAttribute("idReserva")%>" readonly=�readonly� class="form-control" placeholder="ID Acta" aria-describedby="basic-addon1">
                                                </div>
                                            </div>

                                            <div class="seleccion pull-right">
                                                <div class="btn-group" role="group" aria-label="...">
                                                    <button type="button" class="btn btn-primary btn-df"><%= request.getAttribute("tipoActa")%></button>
                                                    <form action="/PRINCS/actaController" method="POST">
                                                        <button type="submit"  onclick="Document.getElementById('pdf').value = 'pdf'" class="btn btn-default btn-df">Generar PDF</button>
                                                        <input type="hidden" id="idActa" name="idActa" value="<%= request.getAttribute("idReserva")%>" >
                                                        <input type="hidden" id="pdf" name="pdf" value="" >

                                                    </form>

                                                </div>
                                            </div>
                                            <br>
                                        </div>


                                    </div>
                                </div>
                                <!--panel-->

                            </div>
                            <!--panel-body-->
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-6 ">
                            <div class="panel panel-default">
                                <!--panel-->
                                <div class="panel-body">
                                    <LABEL>ID MERCANC�A</LABEL>
                                    <div class="input-group input-default">
                                        <span class="input-group-addon border-left" id="basic-addon3"></span>
                                        <input type="text" value="<%= request.getAttribute("idMercancia")%>" readonly=�readonly� class="form-control" placeholder="ID Mercanc�a" aria-describedby="basic-addon1">
                                    </div>
                                    <br>
                                    <LABEL>TIPO DE MARCANC�A</LABEL>
                                    <div class="input-group input-default">
                                        <span class="input-group-addon border-left" id="basic-addon3"></span>
                                        <input type="text" value="<%= request.getAttribute("tipoActa")%>" readonly=�readonly� class="form-control" placeholder="Tipo" aria-describedby="basic-addon1">
                                    </div>
                                    <br>
                                    <LABEL>CLIENTE</LABEL>
                                    <div class="input-group input-default">
                                        <span class="input-group-addon border-left" id="basic-addon3"></span>
                                        <input type="text" value="<%= request.getAttribute("idCliente")%>" readonly=�readonly� class="form-control" placeholder="Cliente" aria-describedby="basic-addon1">
                                    </div>
                                    <br>
                                </div>
                            </div>
                            <!--panel-body-->
                        </div>
                        <div class="col-lg-6 ">
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
                                    <LABEL>GU�A INTERNACIONAL</LABEL>
                                    <br>
                                    <div class="input-group input-info-light">
                                        <input type="text" value="<%= request.getAttribute("placa")%>" readonly=�readonly� class="form-control" placeholder="Guia Internacional" aria-describedby="basic-addon10">
                                        <span class="input-group-addon" id="basic-addon10"></span>
                                    </div>
                                    <br>
                                    <LABEL>VALOR</LABEL>
                                    <br>
                                    <div class="input-group input-primary-light">
                                        <input type="text" value="<%= request.getAttribute("valor")%>" readonly=�readonly� class="form-control" placeholder="valor" aria-describedby="basic-addon8">
                                        <span class="input-group-addon" id="basic-addon8"></span>
                                    </div>
                                    <LABEL>MONEDA</LABEL>
                                    <br>
                                    <div class="input-group input-info-light">
                                        <input type="text" value="<%= request.getAttribute("moneda")%>" readonly=�readonly� class="form-control" placeholder="Tipo de Moneda" aria-describedby="basic-addon10">
                                        <span class="input-group-addon" id="basic-addon10"></span>
                                    </div>
                                    <LABEL>PESO</LABEL>
                                    <br>
                                    <div class="input-group input-info-light">
                                        <input type="text" value="<%= request.getAttribute("peso")%>" readonly=�readonly� class="form-control" placeholder="Peso" aria-describedby="basic-addon10">
                                        <span class="input-group-addon" id="basic-addon10"></span>
                                    </div>

                                </div>
                            </div>
                            <!--panel-body-->
                        </div>
                    </div>
                    <!--row-->
                    <div class="row">
                        <div class="col-lg-12 ">
                            <div class="panel panel-default">
                                <div class="panel panel-widgets">

                                    <div class="panel-body">
                                        <label> Registro Fotogr�fico </label>
                                        <div class="downloadFoto" style="background-image: url(<%= request.getAttribute("foto")%>)">

                                        </div>
                                        <!--downloadFoto-->
                                    </div>

                                </div>
                            </div>
                            <!--panel-body-->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 ">
                            <div class="panel panel-default">
                                <div class="panel-heading clearfix">
                                    <div class="panel-heading-title pull-left">
                                        <label>Informaci�n sobre Transportadora</label>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="panel-body" style="padding-top: 5px; padding-right: 10px">

                                        <LABEL>TRANSPORTADORA </LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"></span>
                                            <input type="text" value="<%= request.getAttribute("idTransportadora")%>" readonly=�readonly� class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>TIPO DE EMPAQUE </LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"></span>
                                            <input type="text" value="<%= request.getAttribute("idEmbalaje")%>" readonly=�readonly� class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>NOMBRE DEL CONDUCTOR</LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"></span>
                                            <input type="text"  value="<%= request.getAttribute("nombreConductor")%>" readonly=�readonly� class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>C�DULA DEL CONDUCTOR </LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"></span>
                                            <input type="text" value="<%= request.getAttribute("ccConducotr")%>" readonly=�readonly� class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>DOCUMENTOS ADICIONALES</LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"></span>
                                            <input type="text" value="<%= request.getAttribute("documentos")%>" readonly=�readonly� class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>ETIQUETAS</LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"></span>
                                            <input type="text" value="<%= request.getAttribute("etiquetas")%>"  readonly=�readonly� class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <br>
                                    </div>
                                </div>
                                <!--panel-body-->
                            </div>
                        </div>
                        <!--row-->
                        <div class="row "  >
                            <div class="col-lg-12 ">
                                <div class="panel panel-default">

                                    <!--panel-->
                                    <div class="panel-body">

                                        <LABEL>FECHA </LABEL>
                                        <br>
                                        <div class="form-group input-info">
                                            <div class="input-group input-success">
                                                <span class="input-group-addon border-left" id="basic-addon14"></span>
                                                <input type="text" value="<%= request.getAttribute("fecha")%>" class="form-control" readonly=�readonly� placeholder="" aria-describedby="basic-addon14">
                                            </div>
                                        </div>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-default">

                                    <!--panel-->
                                    <div class="panel-body">
                                        <LABEL for="comment">Informaci�n sobre almacenamiento</LABEL>
                                        <br>
                                        <LABEL>ESTIBA</LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"></span>
                                            <input type="text" value="<%= request.getAttribute("estiba")%>" class="form-control" readonly=�readonly� placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>BODEGA </LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"></span>
                                            <input type="text" value="<%= request.getAttribute("valor")%>" class="form-control" readonly=�readonly� placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>

                                    </div>
                                </div>
                                <!--panel-body-->
                            </div>
                        </div>
                        <!--row-->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-default">

                                    <!--panel-->
                                    <div class="panel-body">


                                        <div class="form-group input-danger">
                                            <LABEL for="comment">OBSERVACIONES</LABEL>
                                            <textarea class="form-control" readonly=�readonly� rows="3" id="comment5"><%= request.getAttribute("observaciones")%></textarea>
                                        </div>
                                    </div>
                                </div>
                                <!--panel-body-->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <LABEL>NOMBRE OPERARIO</LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"></span>
                                            <input type="text"  value="<%= request.getAttribute("entregaNom")%>" readonly=�readonly� class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>CC OPERARIO</LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"></span>
                                            <input type="text"  value="<%= request.getAttribute("ccEntrega")%>" readonly=�readonly� class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>FIRMA OPERARIO</LABEL>
                                        <br>
                                        <div class="input-group input-primary-light">
                                            <input type="text" value="<%= request.getAttribute("frima")%>" readonly=�readonly� class="form-control" placeholder="" aria-describedby="basic-addon8">
                                            <span class="input-group-addon" id="basic-addon8"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <!--container-fluid-->
                </div>
                <!--mainConteinerConten-->
                <div class="fotterWrapper">
                    � 2019 Copyright.
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