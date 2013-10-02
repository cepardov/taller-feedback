<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="trabajo" class="models.beans.TrabajoBean" scope="request"></jsp:useBean>

<% List<Trabajo> listadoTrabajos = trabajo.findAll();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Trabajoes</title>
</head>
<body>
<h3>Listado de Trabajoes</h3>
<table>
	<tr>
		
		<th>idtrabajo|</th>
		<th>idrepuesto|</th>
		<th>idasignacion|</th>
		<th>observaciones</th>
	</tr>
	<% for(Trabajo trab : listadoTrabajos){ %>
        <tr>
                <td><%= trab.getIdtrabajo() %></td>
                <td><%= trab.getIdrepuesto() %></td>
                <td><%= trab.getIdasignacion() %></td>
                <td><%= trab.getObservaciones() %></td>
        </tr>
	<%} %>
</table>
</body>
</html>