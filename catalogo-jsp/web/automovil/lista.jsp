<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.List,models.beans.*, models.entity.*"%>
<link href="../index.css" rel="stylesheet"/>
<jsp:useBean id="automovil" class="models.beans.AutomovilBean" scope="request"></jsp:useBean>

<% List<Automovil> listadoAutomovils = automovil.findAll();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Automoviles</title>
<link href='http://fonts.googleapis.com/css?family=Ubuntu|Roboto:400,300' rel='stylesheet' type='text/css'>
        <link href="index.css" rel="stylesheet"/>
</head>
<body>
<h1>Listado de Automoviles</h1>
<div id="contenido">
<p><a href="<%=request.getContextPath() %>/cliente/listadocliente.jsp">Agregar Automovil (+)</a></p>
<table id="listado">
	<tr>
		
		<th>PPU</th>
		<th>RUT</th>
		<th>COLOR</th>
		<th>MARCA</th>
                <th>MODELO</th>
		<th>AÑO</th>
		<th>CILINDRADA</th>
	</tr>
	<% for(Automovil auto : listadoAutomovils){ %>
		<tr>
			<td><%= auto.getPpu() %></td>
			<td><%= auto.getRut() %></td>
			<td><%= auto.getColor() %></td>
			<td><%= auto.getIdmarca() %></td>
			<td><%= auto.getIdmodelo() %></td>
			<td><%= auto.getAño() %></td>
                        <td><%= auto.getCilindrada() %></td>
                        <td><a href="<%= request.getContextPath() %>/fichaauto/recepcion.jsp?patente=<%= auto.getPpu() %>&rut=<%= auto.getRut() %>">
			Seleccionar</a></td>
			<td><a href="<%= request.getContextPath() %>/automovil/editar.jsp?ppu=<%= auto.getPpu()%>">
			editar</a></td>
                        <td><a onautock="return confirm('Esta seguro?');" href="<%= request.getContextPath() %>/automovil/eliminar.jsp?ppu=<%= auto.getPpu()%>">
			eliminar</a></td>
		</tr>
	<%} %>
</table>
</div>
</body>
</html>