<%-- 
    Document   : guardarepuesto
    Created on : 25-09-2013, 06:08:53 PM
    Author     : adolf
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="repuesto" class="models.beans.RepuestoBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="repuesto" />
<%
repuesto.save();

response.sendRedirect(request.getContextPath() + "/repuestos/listadorepuesto.jsp");
%>
