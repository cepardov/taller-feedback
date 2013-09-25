<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="cli" class="models.beans.ClienteBean" scope="request"></jsp:useBean>
<jsp:setProperty property="rut" name="cli"/>
<%
cli.delete();

response.sendRedirect(request.getContextPath()+"/cliente/listadocliente.jsp");
%>