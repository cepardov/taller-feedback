<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="modelo" class="models.beans.ModeloBean" scope="request"></jsp:useBean>

<jsp:setProperty property="id" name="modelo" />
<%
modelo.delete();

response.sendRedirect(request.getContextPath() + "/modelo/listadomodelo.jsp");
%>