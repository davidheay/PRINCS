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

        <title>Crear Acta</title>

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
                                    <span class="userInfo"><a href="/PRINCS/LoginController">Operario</a><br><i class="fa fa-map-marker"></i> Bogotá, COL</span>
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
                                                        <a href="inventariobodegaope.jsp">Consulta de Inventario</a>
                                                    </li>
                                                    <li>
                                                        <a href="#" aria-expanded="true">
                                                            <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
                                                            <span class="sidebar-nav-item">Verificación de Inventario</span>
                                                            <span class="fa arrow"></span>
                                                        </a>
                                                        <ul aria-expanded="true" class="collapse">
                                                            <li>
                                                                <a href="verificacionentrada.jsp">Inventario Entrando</a>
                                                            </li>


                                                        </ul>
                                                        <ul aria-expanded="true" class="collapse">
                                                            <li>
                                                                <a href="verificacionsalida.jsp">Inventario Saliendo</a>
                                                            </li>
                                                        </ul>
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
        <div id="mainWrapper" class="mainConteiner column">
            <div class="mainConteinerConten">
                <form action="/PRINCS/creacionActaController" method="POST">
                    <input type="hidden" id="crear" name="crear" value="">
                    <div class="container-fluid footerfix">
                        <div class="row">
                            <div class="col-lg-12 ">
                                <div class="panel panel-default">
                                    <div class="panel-heading clearfix">
                                        <div class="titulo">
                                            <h3 style="text-align:-webkit-center">Crear Acta</h3>

                                            <div class="buttonWrapper" style="padding: inherit" >
                                                <div class="TIPO pull-left" style="padding-top: 10px;padding-left: 1px">
                                                    <LABEL>ID ACTA</LABEL>
                                                    <div class="input-group input-default">
                                                        <span class="input-group-addon border-left" id="basic-addon3"></span>
                                                        <input name="idActa" value="<%= request.getAttribute("idActa")%>" type="text" readonly=»readonly» class="form-control" placeholder="ID Acta" aria-describedby="basic-addon1">
                                                    </div>
                                                </div>

                                                <div class="seleccion pull-right">
                                                    <div class="btn-group" role="group" aria-label="...">
                                                        <input type="hidden" name="tActa" value="<%= request.getAttribute("tActa")%>">
                                                        <button type="button" class="btn btn-primary btn-df"><%= request.getAttribute("tActa")%></button>

                                                    </div>
                                                </div>
                                                <br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6 ">
                                <div class="panel panel-default">
                                    <!--panel-->
                                    <div class="panel-body">
                                        <LABEL>ID MERCANCÍA</LABEL>
                                        <div class="input-group input-default">
                                            <span class="input-group-addon border-left" id="basic-addon3"></span>
                                            <input required name="idMercancia"  value="<%= request.getAttribute("idMercancia")%>"  type="text" readonly=»readonly» class="form-control" placeholder="ID Mercancía" aria-describedby="basic-addon1">
                                        </div>
                                        <br>
                                        <div class="panel-body" style="padding-top: 5px; padding-right: 10px">

                                            <div class="buttonWrapper" style="padding: inherit" >
                                                <div class="TIPO pull-left" style="padding-top: 10px;padding-left: 1px">
                                                    <label>TIPO DE MERCANCÍA</label>
                                                </div>
                                                <div class="seleccion pull-right">
                                                    <span class="select-default">
                                                        <select required name="tipoMer">
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
                                <!--panel-body-->
                            </div>
                            <div class="col-lg-6 ">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <LABEL>NÚMERO DE PIEZAS</LABEL>
                                        <br>
                                        <div class="input-group input-primary-light">
                                            <input required name="nPiezas" type="text" class="form-control" placeholder="Número de piezas" aria-describedby="basic-addon8">
                                            <span class="input-group-addon" id="basic-addon8"><i class="fa fa-pencil"></i></span>
                                        </div>
                                        <br>
                                        <LABEL>GUÍA INTERNACIONAL</LABEL>
                                        <br>
                                        <div class="input-group input-info-light">
                                            <input required name="placa" type="text" class="form-control" placeholder="Guia Internacional" aria-describedby="basic-addon10">
                                            <span class="input-group-addon" id="basic-addon10"><i class="fa fa-pencil"></i></span>
                                        </div>
                                        <br>
                                        <LABEL>VALOR</LABEL>
                                        <br>
                                        <div class="input-group input-primary-light">
                                            <input required name="valor" type="text" class="form-control" placeholder="valor" aria-describedby="basic-addon8">
                                            <span class="input-group-addon" id="basic-addon8"><i class="fa fa-pencil"></i></span>
                                        </div>
                                        <LABEL>MONEDA</LABEL>
                                        <br>
                                        <div class="input-group input-info-light">
                                            <input required name="moneda" type="text" class="form-control" placeholder="Tipo de Moneda" aria-describedby="basic-addon10">
                                            <span class="input-group-addon" id="basic-addon10"><i class="fa fa-pencil"></i></span>
                                        </div>
                                        <LABEL>PESO</LABEL>
                                        <br>
                                        <div class="input-group input-info-light">
                                            <input required name="peso" type="text" class="form-control" placeholder="Peso" aria-describedby="basic-addon10">
                                            <span class="input-group-addon" id="basic-addon10"><i class="fa fa-pencil"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 ">
                                <div class="panel panel-default">
                                    <div class="panel panel-widgets">

                                        <div class="panel-body">
                                            <label> Registro Fotográfico </label>
                                            <div class="downloadFoto" style="background-image: url(img/downloadFoto.jpg)">

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
                                            <label>Información sobre Transportadora</label>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="panel-body" style="padding-top: 5px; padding-right: 10px">

                                            <div class="buttonWrapper" style="padding: inherit" >
                                                <div class="TIPO pull-left" style="padding-top: 10px;padding-left: 1px">
                                                    <label>TRANSPORTADORA</label>
                                                </div>
                                                <div class="seleccion pull-right">
                                                    <span class="select-default">
                                                        <select  required name="transportadora" >
                                                            <option selected disabled hidden data-display="Seleccionar">Seleccione una opcion</option>
                                                            <option value="TR1">ENVIA</option>
                                                            <option value="TR2">DEPRISA</option>
                                                            <option value="TR2">INTER RAPIDISIMO</option>
                                                            <option value="TR2">DHL</option>
                                                            <option value="TR2">SERVIENTREGA</option>
                                                        </select>
                                                    </span>
                                                </div>
                                                <br>
                                            </div>
                                        </div>
                                        <LABEL>TIPO DE EMPAQUE </LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"><i class="fa fa-pencil"></i></span>
                                            <input required name="idembalaje" type="text" class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>NOMBRE DEL CONDUCTOR</LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"><i class="fa fa-pencil"></i></span>
                                            <input required name="nomCondu" type="text" class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>CÉDULA DEL CONDUCTOR </LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"><i class="fa fa-pencil"></i></span>
                                            <input required name="ccCondu" type="text" class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>DOCUMENTOS ADICIONALES</LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"><i class="fa fa-pencil"></i></span>
                                            <input required name="docus" type="text" class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <LABEL>ETIQUETAS</LABEL>
                                        <br>
                                        <div class="input-group input-success">
                                            <span class="input-group-addon border-left" id="basic-addon14"><i class="fa fa-pencil"></i></span>
                                            <input required name="etiquetas" type="text" class="form-control" placeholder="" aria-describedby="basic-addon14">
                                        </div>
                                        <br>
                                        <br>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row "  >
                            <div class="col-lg-12 ">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <LABEL>FECHA</LABEL>
                                        <br>
                                        <div class="form-group input-info">
                                            <div class='input-group date' id='datetimepicker3'>
                                                <input required name="fecha" type='text' class="form-control" />
                                                <span class="input-group-addon border-right">
                                                    <i class="fa fa-calendar"></i>
                                                </span>
                                            </div>
                                        </div>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <LABEL for="comment">Información sobre almacenamiento</LABEL>
                                    <br>
                                    <LABEL>ESTIBA</LABEL>
                                    <br>
                                    <div class="input-group input-success">
                                        <span class="input-group-addon border-left" id="basic-addon14"><i class="fa fa-pencil"></i></span>
                                        <input required name="estiba" type="text" class="form-control" placeholder="" aria-describedby="basic-addon14">
                                    </div>
                                    <br>
                                    <LABEL>BODEGA </LABEL>
                                    <br>
                                    <div class="input-group input-success">
                                        <span class="input-group-addon border-left" id="basic-addon14"><i class="fa fa-pencil"></i></span>
                                        <input required name="bodega" type="text" class="form-control" placeholder="" aria-describedby="basic-addon14">
                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-body"><div class="form-group input-danger">
                                        <LABEL for="comment">OBSERVACIONES</LABEL>
                                        <textarea required name="observaciones" class="form-control" rows="3" id="comment5"></textarea>
                                    </div>
                                </div>
                            </div>
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
                                        <input required name="nomOperario" type="text"   class="form-control" placeholder="" aria-describedby="basic-addon14">
                                    </div>
                                    <br>
                                    <LABEL>CC OPERARIO</LABEL>
                                    <br>
                                    <div class="input-group input-success">
                                        <span class="input-group-addon border-left" id="basic-addon14"></span>
                                        <input maxlength="2" required name="ccOperario"  type="text"   class="form-control" placeholder="" aria-describedby="basic-addon14">
                                    </div>
                                    <br>
                                    <LABEL>FIRMA OPERARIO</LABEL>
                                    <br>
                                    <div class="input-group input-primary-light">
                                        <input required name="firOperario"  type="text" class="form-control" placeholder="" aria-describedby="basic-addon8">
                                        <span class="input-group-addon" id="basic-addon8"><i class="fa fa-pencil"></i></span>
                                    </div>
                                </div>
                                <br>
                                <br>
                                <div class="seleccion pull-right" style="padding-top: 10px">


                                    <button  onclick="document.getElementById('crear').value = 'crear'" type="submit"  class="btn btn-primary btn-df float-button-light md-trigger waves-effect waves-button waves-float waves-light" >Crear</button>


                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="fotterWrapper">
            © 2019 Copyright.
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