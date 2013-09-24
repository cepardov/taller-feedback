<%@page import="models.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*, models.entity.*"%>

<jsp:useBean id="modelo" class="models.beans.ModeloBean" scope="request"></jsp:useBean>

<jsp:setProperty property="id" name="modelo" />

<% Modelo mod = modelo.findById();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario Producto</title>
</head>
<body>
<h3>Formulario Producto</h3>


<form method="post" action="<%= application.getContextPath() %>/modelo/guardarmodelo.jsp">
    <input type="hidden" name="id" value="<%=mod.getIdmodelo()%>"/>
    <table border="1">
        <tbody>
            <tr>
                <td><span>Nombre</span></td>
                <td><input size="40" type="text" name="nombre" value="<%=mod.getNombre()==null?"":mod.getNombre()%>"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="guardar" value="Guardar"/></td>
            </tr>
        </tbody>
    </table>
</form>
</body>
</html>