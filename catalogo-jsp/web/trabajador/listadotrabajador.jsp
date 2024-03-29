<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   <%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="trabajador" class="models.beans.TrabajadorBean" scope="request"></jsp:useBean>

<% List<Trabajador> listadoTrabajadors = trabajador.findAll();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Trabajadores</title>
<link href="../index.css" rel="stylesheet"/>
        <link href="../forms.css" rel="stylesheet"/>
</head>
<body>
<h1>Listado de Trabajadores</h1>
<div id="contenido">
<p><a href="<%=request.getContextPath() %>/trabajador/ingresotrabajador.jsp">Agregar Trabajador (+)</a></p>
<table>
	<tr>
		
		<th>Rut</th>
		<th>Nombre</th>
		<th>Paterno</th>
		<th>Materno</th>
                <th>Cargo</th>
		<th>Telefono</th>
		<th>Clave</th>
	</tr>
	<% for(Trabajador trab : listadoTrabajadors){ %>
		<tr>
			<td><%= trab.getRut() %></td>
			<td><%= trab.getNombre() %></td>
			<td><%= trab.getPaterno() %></td>
			<td><%= trab.getMaterno() %></td>
			<td><%= trab.getCargo() %></td>
			<td><%= trab.getTelefono() %></td>
                        <td><%= trab.getClave() %></td>
			<td><a href="<%= request.getContextPath() %>/trabajador/editform.jsp?rut=<%= trab.getRut()%>">
			editar</a></td>
                        <td><a onclick="return confirm('Esta seguro de eliminar el campo seleccionado?');" href="<%= request.getContextPath() %>/trabajador/eliminartrabajador.jsp?rut=<%= trab.getRut()%>">
			eliminar</a></td>
		</tr>
	<%} %>
</table>
</div>
</body>
</html>