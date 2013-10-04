<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%
    String error ="Usuario o contraseña no valido";
response.sendRedirect(request.getContextPath()+ "/error.jsp");
%>
