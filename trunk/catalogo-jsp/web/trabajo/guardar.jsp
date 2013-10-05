<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="trabajo" class="models.beans.TrabajoBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="trabajo" />
<%
trabajo.update();

response.sendRedirect(request.getContextPath() + "/trabajo/trabajo.jsp");
%>
