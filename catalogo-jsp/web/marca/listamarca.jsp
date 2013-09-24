<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   <%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="marca" class="models.beans.MarcaBean" scope="request"></jsp:useBean>

<% List<Marca> listadoMarca = marca.findAll();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Marcas</title>
</head>
<body>
<h3>Listado de Marcas</h3>
<p><a href="<%=request.getContextPath() %>/marca/ingresomarca.jsp">Agregar Marca (+)</a></p>
<table>
	<tr>
		
		<th>Id</th>
		<th>Nombre</th>
		
	</tr>
	<% for(Marca cli : listadoMarca){ %>
		<tr>
			<td><%= cli.getId() %></td>
			<td><%= cli.getNombre() %></td>
			
			<td><a href="<%= request.getContextPath() %>/cliente/ingresomarca.jsp?Rut=<%= cli.getId()%>">
			editar</a></td>
                        <td><a onclick="return confirm('Esta seguro?');" href="<%= request.getContextPath() %>/catalogo/eliminarclientes.jsp?Rut=<%= cli.getId()%>">
			eliminar</a></td>
		</tr>
	<%} %>
</table>
</body>
</html>