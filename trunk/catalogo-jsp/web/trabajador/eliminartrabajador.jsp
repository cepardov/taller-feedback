<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="Trab" class="models.beans.TrabajadorBean" scope="request"></jsp:useBean>
<jsp:setProperty property="rut" name="Trab"/>
<%
Trab.delete();

response.sendRedirect(request.getContextPath() +"/trabajador/listadotrabajador.jsp");
%>