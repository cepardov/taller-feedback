<%@page import="models.entity.Repuesto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*,models.entity.*"%>

<jsp:useBean id="repuesto" class="models.beans.RepuestoBean" scope="request"></jsp:useBean>

<jsp:setProperty property="id" name="repuesto" />

<% Repuesto rep = repuesto.findById();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario Edición Repuestos</title>
</head>
<body>
<h3>Formulario Edición Repuestos</h3>


<form method="post" action="<%= application.getContextPath() %>/repuesto/updaterepuesto.jsp">
    
    <table border="1">
        <tbody>
            <tr>
                <td><span>Nombre</span></td>
                <td><input size="40" type="text" name="nombre" value="<%=rep.getNombre()==null?"":rep.getNombre()%>"/></td>
            </tr>
            <tr>
                <td><span>Descripcion</span></td>
                <td><input size="200" type="text" name="descripcion" value="<%=rep.getDescripcion()==null?"":rep.getDescripcion()%>"/></td>
            </tr>
             <tr>
                <td colspan="2"><input type="submit" name="guardar" value="Guardar"/></td>
             </tr>
        </tbody>
    </table>
</form>
</body>
</html>