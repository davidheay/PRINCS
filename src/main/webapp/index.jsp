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
                <div class="col-md-3"><!--
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
                    -->
                </div>
                <div class="col-md-3"><!--
                    <%= request.getAttribute("dePab")%>
                    -->
                    <form action="/PRINCS/IndexController" method="POST">
                        <input type="text" name="idMercancia" placeholder="ID de mercancia">
                        <button onclick="submit" value="submit" >Buscar ID</button>
                    </form>
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
                                <th>ID Mercancia</th>
                                <th>ID Cliente</th>
                                <th>ID Tipo</th>
                                <th>Estado</th>
                                <th>Observaciones</th>
                                <th>#Piezas</th>
                                <th>Reserva IN</th>
                                <th>Reserva OUT</th>
                                <th>Valor</th>
                                <th>Moneda</th>
                                <th><span class="glyphicon glyphicon-check"></span></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="item" items="${lstMercancias}">
                                <tr>
                                    <td><c:out value="${item.getIdMercancia()}"></c:out></td>
                                    <td><c:out value="${item.getIdCliente()}"></c:out></td>
                                    <td><c:out value="${item.getIdTipo()}"></c:out></td>
                                    <td><c:out value="${item.getEstado()}"></c:out></td>
                                    <td><c:out value="${item.getObservaciones()}"></c:out></td>
                                    <td><c:out value="${item.getnPiezas()}"></c:out></td>
                                    <td><c:out value="${item.getReservaIn()}"></c:out></td>
                                    <td><c:out value="${item.getReservaOut()}"></c:out></td>
                                    <td><c:out value="${item.getValor()}"></c:out></td>
                                    <td><c:out value="${item.getMoneda()}"></c:out></td>

                                        <td>
                                            <a id="go" name="go" data-target="#myModal" class="btn btn-xs btn-success" href="#myModal"  onclick="btnDetalle('<c:out value='${item.getIdMercancia()}'></c:out>', '<c:out value='${item.getIdCliente()}'></c:out>', '<c:out value='${item.getIdTipo()}'></c:out>', '<c:out value='${item.getEstado()}'></c:out>', '<c:out value='${item.getObservaciones()}'></c:out>', '<c:out value='${item.getnPiezas()}'></c:out>', '', '<%= request.getAttribute("dePab")%>')">
                                                <span class="glyphicon glyphicon-check"></span>
                                            </a>
                                        </td>
                                    </tr>
                            </c:forEach>
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
                        <h3>Actualizar estado</h3>
                    </div>
                    <div class="modal-body" style="padding:5px 50px;">
                        <form role="form" name='frmPte' id = 'frmPte' action="/PRINCS/IndexController" method="POST">
                            <div class="form-group">
                                <label for="IDMErcancia">ID Mercancia: </label>
                                <input class="form-control input-sm" id="IDMercancia" name="IDMercancia" type="text" readonly>
                                <div class="form-group">
                                    <label for="IDCliente">ID Cliente:  </label>
                                    <input class="form-control input-sm" id="IDCliente" name="IDCliente" type="text" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="IDTipo">Tipo ID: </label>
                                    <input class="form-control input-sm" id="IDTipo" type="text" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="Estado">Estado : </label>
                                    <input class="form-control input-sm" id="Estado" type="text" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="usrname">Seleccione Estado: </label>
                                    <select class="form-control input-sm" required name="selEstado" id="selAisla" name="selEstado">
                                        <option value="">--Seleccione Opción--</option>
                                        <option value='ES1'>ON HOLD</option>
                                        <option value='ES2'>IN STOCK</option>
                                        <option value='ES3'>CLOSED</option>

                                    </select>
                                </div>
                                <div>
                                    <p>
                                        ¡Esta seguro de cambiar el estado!
                                    </p>
                                </div>



                                <input type="hidden" id="hidCambio" name="hidCambio" value="Cambio">

                                <div class="row">
                                    <div class="col-md-5">
                                        <button type="submit" class="btn btn-danger btn-block" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                                    </div>
                                    <div class="col-md-2">
                                    </div>
                                    <div class="col-md-5">
                                        <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-ok"></span> Asignar Estado</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <script>
                function btnDetalle(IDMercancia, IDCliente, IDTipo, Estado) {
                    document.getElementById("IDMercancia").value = IDMercancia;
                    document.getElementById("IDCliente").value = IDCliente;
                    document.getElementById("IDTipo").value = IDTipo;
                    document.getElementById("Estado").value = Estado;
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
