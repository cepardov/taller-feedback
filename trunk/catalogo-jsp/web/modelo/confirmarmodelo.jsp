
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="modelo" class="models.beans.ModeloBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="modelo" />
<%
modelo.save();

response.sendRedirect(request.getContextPath() + "/modelo/listadomodelo.jsp");
%>
