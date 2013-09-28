<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="models.beans.*,models.entity.*"%>

<jsp:useBean id="cliente" class="models.beans.ClienteBean" scope="request"></jsp:useBean>

<% Cliente cli = new Cliente();%>
<%
    String rutin="";
    if(request.getParameter("rut")!=null){
      rutin=request.getParameter("rut");
               }   
%>
<jsp:setProperty name="cliente" property="rut" value="<%=rutin%>"/>
<%
    if(cliente.findrutNombre()!=null){
       rutin= cliente.findrutNombre();
    }
    
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
