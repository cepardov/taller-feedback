<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="auto" class="models.beans.AutomovilBean" scope="request"></jsp:useBean>
<jsp:setProperty property="ppu" name="auto"/>
<%
auto.delete();

response.sendRedirect(request.getContextPath()+"/automovil/lista.jsp");
%>