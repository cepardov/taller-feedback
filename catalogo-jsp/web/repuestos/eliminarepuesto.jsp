<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="repuesto" class="models.beans.RepuestoBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="repuesto" />
<%
repuesto.delete();

response.sendRedirect(request.getContextPath() + "/repuestos/listadorepuesto.jsp");
%>
