<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="bootstrap admin template">
        <meta name="author" content="">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Ingreso</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/scss/style.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/scss/_bootstrapComponents.scss" rel="stylesheet" type="text/scss">
        <!-- BUTTONS EFFECT -->
        <link href="lib/waves/waves.css" rel="stylesheet" type="text/css">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />


    </head>

    <body>




        <div class="registrationWrapper clearfix">
            <div class="championlogin" style="margin-left: 10px; margin-top: 20px">
                <img src="img/championpeque.png" width=20% alt=""/>
            </div>
            <div class="registrationContent">

                <div class="registrationHeader">
                    <h1>BIENVENIDO</h1>
                    <br>
                    <p>Para continuar por favor ingrese su usuario y contraseņa</p>
                </div>
                <!--registrationHeader-->
                <br>
                <div class="row inputWrapper ">


                    <br>
                    <div class="col-md-12">
                        <div class="left-inner-addon ">
                            <i class="fa fa-envelope"></i>
                            <input type="text" class="form-control" placeholder="Usuario">
                        </div>
                    </div>
                    <br>
                    <br>
                    <br>
                    <div class="col-md-12 ">
                        <div class="left-inner-addon ">
                            <i class="fa fa-key"></i>
                            <input type="text" class="form-control" placeholder="Contraseņa">
                        </div>
                    </div>
                    <br>
                    <br>
                    <br>
                    <div class="col-md-12">

                        <br>
                        <br>
                        <br>

                    </div>
                    <div class="registrationButtonPlaseholder">
                        <button type="button" style="background-color: #0064b2; color: #ffff" class="btn  btn-df float-button-light">INGRESAR</button>

                    </div>
                    <!--registrationButtonPlaseholder-->
                    <br>

                </div>
                <!--registrationContent-->
            </div>
            <!--registrationWrapper-->

            <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
            <script type="text/javascript" src="lib/waves/waves.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script>
                Waves.attach('.float-button-light', ['waves-button', 'waves-float', 'waves-light']);
                Waves.init();
            </script>
    </body>

</html>