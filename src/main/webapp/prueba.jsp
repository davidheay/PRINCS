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
        <h1>holaaa</h1>
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
