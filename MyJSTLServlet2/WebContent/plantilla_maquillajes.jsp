<%@page import="com.netmind.models.Maquillaje"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lista mquillajes</title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    
    <% Maquillaje[] listaRecibida= (Maquillaje[])request.getAttribute("listaMaquillajesAMostrar"); %>
    <% Object listaRecibida2= request.getAttribute("listaMaquillajesAMostrar"); %>
    <% listaRecibida2.toString(); %>
    <section>
    	<h1>Hola ${idUsuario}</h1>	
        <h1>Lista de maquillajes de Pepe</h1>
            <ul>        
                <% if (listaRecibida!=null) for (Maquillaje maq:listaRecibida) {%>
                <li>
                	<span> <%=maq.getCodigo() %></span>
                	<span> <%=maq.getMarca() %></span>
                </li>
                <%} %>
            </ul>
        <button> SignOut</button>
    </section>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>