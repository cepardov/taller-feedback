<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="modelo" class="models.beans.ModeloBean" scope="request"></jsp:useBean>

<% List<Modelo> listadoModelo = modelo.findAll();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Modelos</title>
<link href="../index.css" rel="stylesheet"/>
        <link href="../forms.css" rel="stylesheet"/>
</head>
<body>
<h1>Listado de Modelos</h1>
<div id="contenido">
<p><a href="<%=request.getContextPath() %>/modelo/ingresomodelo.jsp">Agregar Modelo (+)</a></p>
<table>
	<tr>
                <th>Id</th>
		<th>Nombre</th>
		<th>Marca</th>
		
	</tr>
	<% for(Modelo mod : listadoModelo){ %>
		<tr>
                        <td><%= mod.getIdmodelo() %></td>
			<td><%= mod.getNombre() %></td>
			<td><%= mod.getMarca() %></td>
			<td><a href="<%= request.getContextPath() %>/modelo/ingresomodelo.jsp?id=<%= mod.getIdmodelo()%>">
			editar</a></td>
                        <td><a onclick="return confirm('Esta seguro?');" href="<%= request.getContextPath() %>/modelo/eliminarmodelo.jsp?id=<%= mod.getIdmodelo()%>">
			eliminar</a></td>
		</tr>
	<%} %>
</table>
</div>
</body>
</html>