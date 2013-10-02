<%-- 
    Document   : listadorepuesto
    Created on : 25-09-2013, 06:08:35 PM
    Author     : adolf
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   <%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="repuesto" class="models.beans.RepuestoBean" scope="request"></jsp:useBean>

<% List<Repuesto> listadoRepuesto = repuesto.findAll();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Repuestos</title>
</head>
<body>
<h3>Listado de Repuestos</h3>
<p><a href="<%=request.getContextPath()%>/repuestos/ingresorepuesto.jsp">Agregar Repuesto (+)</a></p>
<table>
	<tr>
		
		<th>Id</th>
		<th>Nombre</th>
                <th>Descripcion</th>
		
	</tr>
	<% for(Repuesto rep :listadoRepuesto){ %>
		<tr>
			<td><%= rep.getIdrepuesto() %></td>
			<td><%= rep.getNombre() %></td>
                        <td><%= rep.getDescripcion() %></td>
			
			<td><a href="<%= request.getContextPath() %>/repuestos/updaterepuesto.jsp?id=<%= rep.getIdrepuesto()%>">
			editar</a></td>
                        <td><a onclick="return confirm('Esta seguro?');" href="<%= request.getContextPath() %>/repuestos/eliminarepuesto.jsp?id=<%= rep.getIdrepuesto()%>">
			eliminar</a></td>
		</tr>
	<%} %>
</table>
</body>
</html>
