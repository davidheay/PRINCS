  <!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="bootstrap admin template">
    <meta name="author" content="">
    
  	<title>Inventario | Actual</title>

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
						<img src="img/championpeque.PNG" alt=""/ width=30%>
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
								<span class="userInfo"><a href="user.html">Operario</a><br><i class="fa fa-map-marker"></i> Bogotá, COL </span>
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
													<a href="verificacionentrada.jsp">Verificación Entrada</a>
												</li>
												<li>
													<a href="verificacionsalida.jsp">Verificación Salida</a>
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
			
				<!--	MEIN CONTENT  -->
				<div class="row">
					<div class="col-lg-12 ">
						<div class="panel panel-default">
							<div class="panel-heading clearfix">
								<div class="titulo">
									<h3 style="text-align:-webkit-center">Inventario en Bodega</h3>
								</div>
								
							</div>
							
							<div class="panel-body">
								<div class="dataTableWrapper">
									<table id="example1" class="display tableWrapper">
										<thead>
											<tr>
												<th>ID Mercancía</th>
												<th>Cliente</th>
												<th>Tipo de Mercancía</th>
												<th>Estiba</th>
												
											</tr>
										</thead>
										<tfoot>
											<tr>
												<th>Id Mercancía</th>
												<th>Cliente</th>
												<th>Tipo de Mercancía</th>
												<th>Estiba</th>
												
												
											</tr>
										</tfoot>
										<tbody>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Tiger Nixon</a></td>
												<td>System Architect</td>
												<td>Edinburgh</td>
												<td>61</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Garrett Winters</a></td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>63</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Ashton Cox</a></td>
												<td>Junior Technical Author</td>
												<td>San Francisco</td>
												<td>66</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Cedric Kelly</a></td>
												<td>Senior Javascript Developer</td>
												<td>Edinburgh</td>
												<td>22</td>
												
	
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Airi Satou</a></td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>33</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Brielle Williamson</a></td>
												<td>Integration Specialist</td>
												<td>New York</td>
												<td>61</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Herrod Chandler</a></td>
												<td>Sales Assistant</td>
												<td>San Francisco</td>
												<td>59</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Rhona Davidson</a></td>
												<td>Integration Specialist</td>
												<td>Tokyo</td>
												<td>55</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Colleen Hurst</a></td>
												<td>Javascript Developer</td>
												<td>San Francisco</td>
												<td>39</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Sonya Frost</a></td>
												<td>Software Engineer</td>
												<td>Edinburgh</td>
												<td>23</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Jena Gaines</a></td>
												<td>Office Manager</td>
												<td>London</td>
												<td>30</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Quinn Flynn</a></td>
												<td>Support Lead</td>
												<td>Edinburgh</td>
												<td>22</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Charde Marshall</a></td>
												<td>Regional Director</td>
												<td>San Francisco</td>
												<td>36</td>
																							
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Haley Kennedy</a></td>
												<td>Senior Marketing Designer</td>
												<td>London</td>
												<td>43</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Tatyana Fitzpatrick</a></td>
												<td>Regional Director</td>
												<td>London</td>
												<td>19</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Michael Silva</a></td>
												<td>Marketing Designer</td>
												<td>London</td>
												<td>66</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Paul Byrd</a></td>
												<td>Chief Financial Officer (CFO)</td>
												<td>New York</td>
												<td>64</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Gloria Little</a></td>
												<td>Systems Administrator</td>
												<td>New York</td>
												<td>59</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Bradley Greer</a></td>
												<td>Software Engineer</td>
												<td>London</td>
												<td>41</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Dai Rios</a></td>
												<td>Personnel Lead</td>
												<td>Edinburgh</td>
												<td>35</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Jenette Caldwell</a></td>
												<td>Development Lead</td>
												<td>New York</td>
												<td>30</td>
								            <tr>
                                                <td><a href="especificacionmercanciao.html">Tiger Nixon</a></td>
												<td>System Architect</td>
												<td>Edinburgh</td>
												<td>61</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Garrett Winters</a></td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>63</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Ashton Cox</a></td>
												<td>Junior Technical Author</td>
												<td>San Francisco</td>
												<td>66</td>
												
												
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Cedric Kelly</a></td>
												<td>Senior Javascript Developer</td>
												<td>Edinburgh</td>
												<td>22</td>
												
	
											</tr>
											<tr>
                                                <td><a href="especificacionmercanciao.html">Airi Satou</a></td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>33</td>
												
												
											</tr>
											
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!--panel-body-->
					</div>
				</div>
				<!--row-->
				
				<!--MEIN CONTENT-->
        </div>
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
<script type="text/javascript" src="lib/dataTable/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTableFunctions.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
</body>
</html> 