<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="bootstrap admin template">
        <meta name="author" content="">

        <title>Especificación Mercancia </title>

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
                                    <span class="userInfo"><a href="/PRINCS/LoginController"> Operario</a><br><i class="fa fa-map-marker"></i> Bogotá, COL </span>
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
                                                    <span class="sidebar-nav-item">Verificación de Mercancía</span>
                                                    <span class="fa arrow"></span>
                                                </a>
                                                <ul aria-expanded="true" class="collapse">
                                                    <li>
                                                        <a href="verificacionsalida.jsp">Verificación Salida</a>
                                                    </li>
                                                </ul>

                                            </li>
                                            <li>
                                                <a href="inventariobodegaope.jsp"><span class="glyphicon glyphicon-th-large"></span>
                                                    Consultar Inventario en Bodega
                                                </a>
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

                            <!--	MEIN CONTENT  -->
                            <div class="row">
                                <div class="col-lg-12 ">
                                    <div class="panel panel-default">
                                        <div class="panel-heading clearfix">

                                            <!--panel-heading-title-->

                                            <!--panel-heading-buttons-->
                                        </div>
                                        <!--panel-->
                                        <div class="panel-body">
                                            <div class="titulo" style="align-content: center">
                                                <h3 style="text-align:-webkit-center">Ver Mercancía</h3>
                                                <LABEL>ID MERCANCÍA</LABEL>
                                                <div class="input-group input-default">
                                                    <span class="input-group-addon border-left" id="basic-addon3"></span>
                                                    <input type="text" readonly=»readonly» class="form-control" placeholder="ID Mercancía" aria-describedby="basic-addon1">
                                                </div>
                                                <br>
                                                <LABEL>ESTADO</LABEL>
                                                <br>
                                                <div class="input-group input-success">
                                                    <span class="input-group-addon border-left" id="basic-addon3"></span>
                                                    <input type="text" readonly=»readonly» class="form-control" placeholder="Estado" aria-describedby="basic-addon3">
                                                </div>
                                                <br>
                                            </div>
                                        </div>
                                    </div>
                                    <!--panel-body-->
                                </div>
                            </div>
                            <!--row-->


                            <!--row-->

                            <!--row-->
                            <div class="row">
                                <div class="col-lg-6 ">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <LABEL>TIPO DE MERCANCIA</LABEL>
                                            <div class="input-group input-default">
                                                <span class="input-group-addon border-left" id="basic-addon3"></span>
                                                <input type="text" readonly=»readonly» class="form-control" placeholder="Tipo de Mercancía " aria-describedby="basic-addon1">
                                            </div>
                                            <br>
                                            <LABEL>CLIENTE</LABEL>
                                            <br>
                                            <div class="input-group input-danger">
                                                <span class="input-group-addon border-right" id="basic-addon6"></span>
                                                <input type="text" readonly=»readonly» class="form-control" placeholder="Nombre del Cliente" aria-describedby="basic-addon6">
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
                                            <LABEL>NÚMERO DE PIEZAS</LABEL>
                                            <br>
                                            <div class="input-group input-primary-light">
                                                <input type="text" readonly=»readonly» class="form-control" placeholder="Número de piezas" aria-describedby="basic-addon8">
                                                <span class="input-group-addon" id="basic-addon8"></span>
                                            </div>
                                            <br>
                                            <LABEL>VALOR</LABEL>
                                            <br>
                                            <div class="input-group input-primary-light">
                                                <input type="text" readonly=»readonly» class="form-control" placeholder="Valor de la mercancía" aria-describedby="basic-addon8">
                                                <span class="input-group-addon" id="basic-addon8"></span>
                                            </div>
                                            <LABEL>MONEDA</LABEL>
                                            <br>
                                            <div class="input-group input-info-light">
                                                <input type="text" readonly=»readonly» class="form-control" placeholder="Moneda" aria-describedby="basic-addon10">
                                                <span class="input-group-addon" id="basic-addon10"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <!--panel-body-->
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
                                                <textarea  readonly=»readonly» class="form-control" rows="2" id="comment1"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <!--panel-body-->
                                </div>
                            </div>



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