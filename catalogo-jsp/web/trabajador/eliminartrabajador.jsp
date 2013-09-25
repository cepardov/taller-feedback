<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="trab" class="models.beans.TrabajadorBean" scope="request"></jsp:useBean>
<jsp:setProperty property="rut" name="trab"/>
<%
trab.delete();

response.sendRedirect(request.getContextPath()+"/trabajador/listadotrabajador.jsp");
%>