<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="../index.css" rel="stylesheet"/>
<%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="cliente" class="models.beans.ClienteBean" scope="request"></jsp:useBean>

<% List<Cliente> listadoClientes = cliente.findAll();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Clientes</title>
<link href="../index.css" rel="stylesheet"/>
<link href="../forms.css" rel="stylesheet"/>
</head>
<body>
<h1>Listado de Clientes</h1>
<div id="contenido">
<p><a href="<%=request.getContextPath() %>/cliente/ingresocliente.jsp">Agregar Cliente (+)</a>|<a href="<%=request.getContextPath()%>/reportes/IngresoReporteCliente.jsp">Reporte Cliente(+)</a>|<a href="<%=request.getContextPath()%>/reportes/IngresoReporteDetalle.jsp">Reporte Atencion(+)</a></p>

<table>
	<tr>
		
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
			<td><%= cli.getTelefono() %></td>
                        <td><%= cli.getEmail() %></td>
                        <td><a href="<%= request.getContextPath() %>/automovil/ingreso.jsp?rut=<%=cli.getRut()%>">
			Seleccionar</a></td>
			<td><a href="<%= request.getContextPath() %>/cliente/editform.jsp?rut=<%= cli.getRut()%>">
			editar</a></td>
                        <td><a onClick="return confirm('Esta seguro?');" href="<%= request.getContextPath() %>/cliente/eliminarcliente.jsp?rut=<%= cli.getRut()%>">
			eliminar</a></td>
                        
		</tr>
	<%} %>
</table>
</div>
</body>
</html>