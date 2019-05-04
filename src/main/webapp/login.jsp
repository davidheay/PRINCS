<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252" %>
<!DOCTYPE html>
<html>
<head>
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script type="text/javascript"  src="js/bootstrap.js"></script>
        <link href="css/bootstrap.css" rel="stylesheet">
        <title>Aislamientos</title>
</head>
<body>    
<div id="main">
<div id="login">
   <%@include file="/Templates/header.jsp" %>   
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-4"></div>
            <div class="col-md-4">
                <h3>Login</h3>
              <form action="" method="post">
                <div class="form-group">
                  <label class="control-label" for="name">Usuario :</label>
                  <input class="form-control" id="username" name="username" placeholder="usuario" type="text">
                </div>
                <div class="form-group">
                  <label class="control-label" for="password">Password :</label>
                  <input class="form-control" id="password" name="password" placeholder="**********" type="password">
                </div>
                <button type="submit" class="btn btn-default" name="submit" >Login</button>
              </form>  <% String errorDescription = (String) request.getAttribute("shiroLoginFailure");  if (errorDescription!=null) {   %>
                    <p class="text-danger">Error de acceso</p>  <%} %>
            </div>
          <div class="col-md-4"></div>
        </div>
      </div>
    </div>
</div>
</div>
                   <!-- <%@include file="/Templates/footer.jsp" %> -->
</body>
</html>
