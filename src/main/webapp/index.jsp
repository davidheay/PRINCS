<%--
    Document   : index
    Created on : 19/04/2017, 04:45:35 PM
    Author     : wilsonfr
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/Templates/head.jsp" %>
        <title>PRINCS - MAIN</title>
        <style>
            .modal-header, h4, .close {
                background-color: #3256B7;
                color:white !important;
                text-align: center;
                font-size: 14px;
            }
            .table{
                font-size: 9px;
            }
            @media only screen and (max-width: 800px) {
                table td:nth-child(5),
                table th:nth-child(5) {display: none;}
            }
            @media only screen and (max-width: 640px) {
                table td:nth-child(4),
                table th:nth-child(4),
                table td:nth-child(5),
                table th:nth-child(5),
                table td:nth-child(6),
                table th:nth-child(6){display: none;}
                table {font-size: 6px;}
                h3 {font-size: 10px;}
            }
        </style>
    </head>
    <body>

        <%@include file="/Templates/header.jsp" %>

        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    Bienvenido: <%=request.getAttribute("nomusuario")%>

                </div>
                <!--                    Despliegue por pabellones pendientes-->
                <div class="col-md-3">
                    <form name='frmPab' class="form-inline" id = 'frmPab' action="/PRINCS/IndexController" method="POST">
                        <input type="hidden" name="hidPab" id ="hidPab" >
                        <input type="hidden" id="hidNomPabellon" name="hidNomPabellon" >
                        <select name="selPabellon" id = 'selPabellon' onchange ='clickselect()' class="input-xs "  style="font-size:xx-small">
                            <option selected disabled hidden>Seleccione un pabellón</option>
                            <c:forEach var='item' items='${lstPabellones}' >
                                <option value='${item.getCodPabellon()}'>${item.getDescPabellon()}</option>
                            </c:forEach>
                        </select>
                    </form>
                </div>
                <div class="col-md-3">
                    <%= request.getAttribute("dePab")%>
                </div>
                <div class="col-md-3">
                    <a href="/PRINCS/LogoutController"  class="btn btn-xs btn-danger pull-right"> Cerrar Sesión </a>
                </div>
            </div>
        </div>
        <hr>
        <div class="container">
            <div class="row">
                <div>
                    <table class="table table-condensed table-striped table-sm" id="tablePtes">
                        <thead>
                            <tr>
                                <th>Cama</th>
                                <th>Documento</th>
                                <th>Nombre</th>
                                <th>Edad</th>
                                <th>Fecha Ingreso</th>
                                <th>Dias Est</th>
                                <th>Aislamiento</th>
                                <th><span class="glyphicon glyphicon-check"></span></th>
                            </tr>
                        </thead>
                        <tbody> <c:forEach var="item" items="${lstPacientes}">
                                <c:set var="aisla" scope="session" value="${item.gettipoAislamiento()}"/>
                                <c:set var="ingreso" scope="session" value="${item.getingreso()}"/>
                                <c:set var="tipodocumento" scope="session" value="${item.gettipoDoc()}"/>
                                <c:set var="pabellon" scope="session" value="${item.getpabellonPte()}"/>
                                <tr>
                                    <td><c:out value="${item.getcama()}"></c:out></td>
                                    <td><c:out value="${item.getnumero()}"></c:out></td>
                                    <td><c:out value="${item.getnombre()}"></c:out></td>
                                    <td><c:out value="${item.getedad()}"></c:out></td>
                                    <td><c:out value="${item.getfechaAdmision()}"></c:out></td>
                                    <td><c:out value="${item.getdiasEst()}"></c:out></td>
                                    <td <c:choose>
                                            <c:when test="${aisla == 'contacto'}"> class="danger"</c:when>
                                            <c:when test="${aisla == 'aerosoles'}">   class="aerosol" </c:when>
                                            <c:when test="${aisla == 'gotas'}">   class="success"  </c:when>
                                            <c:when test="${aisla == 'protector'}"> class="protector" </c:when>
                                            <c:otherwise>  </c:otherwise> </c:choose> ><c:out value="${item.gettipoAislamiento()}"></c:out></td>
                                            <td>
                                                    <a id="go" name="go" data-target="#myModal" class="btn btn-xs btn-success" href="#myModal"  onclick="btnDetalle('<c:out value='${item.getcama()}'></c:out>', '<c:out value='${item.getnumero()}'></c:out>', '<c:out value='${item.getnombre()}'></c:out>', '<c:out value='${item.gettipoAislamiento()}'></c:out>', '<c:out value='${item.getingreso()}'></c:out>', '<c:out value='${item.gettipoDoc()}'></c:out>', '<c:out value='${item.getpabellonPte()}'></c:out>', '<%= request.getAttribute("dePab")%>')">
                                                <span class="glyphicon glyphicon-check"></span>
                                            </a>
                                        </td>
                                                            </tr>   </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header" style="padding:5px 10px;">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h3>Registrar Aislamiento</h3>
                        </div>
                        <div class="modal-body" style="padding:5px 50px;">
                            <form role="form" name='frmPte' id = 'frmPte' action="/aislamientos-cus/IndexController" method="POST">
                                <div class="form-group">
                                    <label for="cama">Cama: </label>
                                    <input class="form-control input-sm" id="cama" name="cama" type="text" readonly>
                                    <div class="form-group">
                                        <label for="documento">Documento:  </label>
                                        <input class="form-control input-sm" id="documento" name="documento" type="text" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="nombre">Nombre: </label>
                                        <input class="form-control input-sm" id="nombre" type="text" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="aislamiento">Aislamiento actual: </label>
                                        <input class="form-control input-sm" id="aislamiento" type="text" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="usrname">Seleccione Aislamiento: </label>
                                        <select class="form-control input-sm" required name="selAisla" id="selAisla" name="selAisla">
                                            <option value="">--Seleccione Opción--</option>
                                            <option value='aerosoles'>Aerosoles</option>
                                            <option value='contacto'>Contacto</option>
                                            <option value='gotas'>Gotas</option>
                                            <option value='protector'>Protector</option>
                                            <option value='sinaislamiento'>Sin Aislamiento</option>
                                        </select>
                                    </div>
                                    <div>
                                        <p>
                                            ¡Esta seguro de asignar el aislamiento!
                                        </p>
                                    </div>
                                    <input type="hidden" id="hidIngreso" name="hidIngreso" >
                                    <input type="hidden" id="hidTipoDocumento" name="hidTipoDocumento" >
                                    <input type="hidden" id="hidPabellon" name="hidPabellon" >
                                    <input type="hidden" id="hidInsertar" name="hidInsertar" value="Insertar">
                                    <input type="hidden" id="hidNomPab2" name="hidNomPab2">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <button type="submit" class="btn btn-danger btn-block" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                                        </div>
                                        <div class="col-md-2">
                                        </div>
                                        <div class="col-md-5">
                                            <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-ok"></span> Asignar Aislamiento</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <script>
                    function btnDetalle(cama, documento, nombre, aislamiento, ingreso, tipodocumento, pabellon, nompab) {
                        document.getElementById("cama").value = cama;
                        document.getElementById("documento").value = documento;
                        document.getElementById("nombre").value = nombre;
                        document.getElementById("aislamiento").value = aislamiento;
                        document.getElementById("hidIngreso").value = ingreso;
                        document.getElementById("hidTipoDocumento").value = tipodocumento;
                        document.getElementById("hidPabellon").value = pabellon;
                        document.getElementById("hidNomPab2").value = nompab;
                        $("#myModal").modal();
                    }
                </script>
            <%@include file="/Templates/footer.jsp" %>
    </body>
    <script>
        //Comentado, despliegue solo pabellon hospitalizacion
        window.onload = function() {
        <%  String strSelPab = null;
            if (request.getParameter("selPa    bellon") != null) {
                strSelPab = request.getParameter("selPabellon");%>//
            document.getElementById("selPabellon").value = <%=strSelPab%>;
        <%}%><%
            if (request.getAttribute("selPab    ellon2") != null) {
                strSelPab = (String) request.getAttribute("selPabellon2");%>//
            document.getElementById("selPabellon").value = <%=strSelPab%>;
        <%}%>
        };

        function clickselect() {
            var pab = document.getElementById("selPabellon");
            document.getElementById("hidNomPabellon").value = pab.options[pab.selectedIndex].text;
            document.getElementById("frmPab").submit();
        }
    </script>
</html>
