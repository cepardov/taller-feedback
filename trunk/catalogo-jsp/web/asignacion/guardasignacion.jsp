<%-- 
    Document   : guardasignacion
    Created on : 02-10-2013, 07:04:34 PM
    Author     : adolf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="asignacion" class="models.beans.AsignacionBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="asignacion" />
<%
asignacion.save();

response.sendRedirect(request.getContextPath() + "/asignacion/asignaciontrabajo.jsp");

%>

