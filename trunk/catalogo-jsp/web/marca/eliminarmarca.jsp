<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="marca" class="models.beans.MarcaBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="marca" />
<%
marca.delete();

response.sendRedirect(request.getContextPath() + "/catalogo/listado.jsp");
%>
