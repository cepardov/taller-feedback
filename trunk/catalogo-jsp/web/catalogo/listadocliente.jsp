<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   <%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="cliente" class="models.beans.ClienteBean" scope="request"></jsp:useBean>

<% List<Cliente> listadoClientes = cliente.findAll();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Clientes</title>
</head>
<body>
<h3>Listado de Clientes</h3>
<p><a href="<%=request.getContextPath() %>/catalogo/ingresoclientes.jsp">Agregar Cliente (+)</a></p>
<table>
	<tr>
		<th>#</th>
		<th>Rut</th>
		<th>Nombre</th>
		<th>Paterno</th>
		<th>Materno</th>
		<th>Telefono</th>
		<th>Email</th>
	</tr>
	<% for(Cliente cli : listadoClientes){ %>
		<tr>
			<td><%= cli.getRut() %></td>
			<td><%= cli.getNombre() %></td>
			<td><%= cli.getPaterno() %></td>
			<td><%= cli.getMaterno() %></td>
			<td><%= cli.getEmail() %></td>
			<td><%= cli.getTelefono() %></td>
			<td><a href="<%= request.getContextPath() %>/catalogo/ingresocliente.jsp?id=<%= cli.getRut()%>">
			editar</a></td>
                        <td><a onclick="return confirm('Esta seguro?');" href="<%= request.getContextPath() %>/catalogo/eliminar.jsp?id=<%= cli.getRut()%>">
			eliminar</a></td>
		</tr>
	<%} %>
</table>
</body>
</html>