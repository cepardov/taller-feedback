<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="cliente" class="models.beans.ClienteBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="producto" />
<%
cliente.save();

response.sendRedirect(request.getContextPath() + "/catalogo/listado.jsp");
%>
