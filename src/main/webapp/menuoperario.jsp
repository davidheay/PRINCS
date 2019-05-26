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

        <title>Menú Operario </title>

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
                                <img src="img/championpeque.png" alt="" width=40%>
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
                    <div class="row" >
                        <div class="col-lg-12 " >
                            <div class="panel panel-default">
                                <div class="panel-heading clearfix">
                                    <div class="panel-heading-title pull-left">
                                        <h3>Bienvenido Operario</h3>
                                        <h8>Por favor seleccione una operación</h8>
                                    </div>
                                    <!--panel-heading-title-->
                                    <div class="panel-heading-buttons pull-right">
                                        <div class="bs-example">
                                            <ul class="clearfix">



                                            </ul>
                                        </div>
                                    </div>
                                    <!--panel-heading-buttons-->
                                </div>
                                <!--panel-->
                                <div class="panel-body">
                                    <div class="row">

                                        <div class="col-lg-3 alertWrapper clerfix " >
                                            <a href="menuverificacion.html">
                                                <div class="inventario">
                                                    <center>
                                                        <img src="img/inventario.png" alt="" >
                                                    </center>
                                                </div>
                                                <br>
                                                <button id="basic" class="btn btn-primary btn-df float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Verificar Mercancia</button>
                                            </a>
                                        </div>
                                        <div class="col-lg-3 alertWrapper">
                                            <a href="inventariobodegaope.html">
                                                <div class="mercancia">
                                                    <center>
                                                        <img src="img/mercancia.png" alt="" >
                                                    </center>
                                                </div>
                                                <br>
                                                <button id="titleWithText" class="btn btn-primary btn-df float-button-light md-trigger waves-effect waves-button waves-float waves-light" data-modal="modal-1">Consultar Inventario en Bodega</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--panel-body-->
                        </div>
                    </div>

                </div>
                <!--container-fluid-->
            </div>
            <!--mainConteinerConten-->
            <div class="fotterWrapper">
                © 2019 Copyright.
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
    </body>

</html>