<%@page import="models.entity.Marca"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*, models.entity.*"%>

<jsp:useBean id="marca" class="models.beans.MarcaBean" scope="request"></jsp:useBean>

<jsp:setProperty property="id" name="marca" />

<% Marca marc = marca.findById();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario Marca</title>
<link href="../index.css" rel="stylesheet"/>
</head>
<body>
<h1>Formulario Marca</h1>

<div id="contenido">
<form method="post" action="<%= application.getContextPath() %>/marca/guardarmarca.jsp">
    <input type="hidden" name="id" value="<%=marc.getId()%>"/>
    <table>
        <tbody>
            <tr>
                <td><span>Nombre</span></td>
                <td><input size="40" type="text" name="nombre" value="<%=marc.getNombre()==null?"":marc.getNombre()%>"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="guardar" value="Guardar"/></td>
            </tr>
        </tbody>
    </table>
</form>
</div>
</body>
</html>