<%@page import="models.entity.Trabajo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*,models.entity.*"%>

<jsp:useBean id="trabajo" class="models.beans.TrabajoBean" scope="request"></jsp:useBean>

<jsp:setProperty property="idtrabajo" name="trabajo" />

<% Trabajo trab = trabajo.findById();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario edición Observaciones</title>
</head>
<body>
<h3>Editar Observaciones</h3>
<h5>Solo editar los campos editables...</h5>


<form method="post" action="<%= application.getContextPath() %>/trabajo/guardar.jsp">
    
    <table>
        <tbody>
            <tr>
                <td><span>ID Trabajo</span></td>
                <td><input type="text" name="idtrabajo" value="<%=trab.getIdtrabajo()==0?"":trab.getIdtrabajo() %>" readonly/></td>
            </tr>
            <tr>
                <td><span>Repuesto</span></td>
                <td><input type="text" name="idrepuesto" value="<%=trab.getIdrepuesto()==0?"":trab.getIdrepuesto() %>" readonly/></td>
            </tr>
            <tr>
                <td><span>Asignacion</span></td>
                <td><input type="text" name="idasignacion" value="<%=trab.getIdasignacion()==0?"":trab.getIdasignacion() %>" readonly/></td>
            </tr>
            <tr>
                <td><span>Observaciones</span></td>
                <td><input type="text" name="observaciones" value="<%=trab.getObservaciones()==null?"":trab.getObservaciones() %>"/></td>
            </tr>
             <tr>
                <td colspan="2"><input type="submit" name="guardar" value="Guardar"/></td>
             </tr>
        </tbody>
    </table>
</form>
</body>
</html>