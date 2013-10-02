<%@page import="models.entity.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="trabajador" class="models.beans.TrabajadorBean" scope="request"></jsp:useBean>
<%
    String rutin="", cargoin="", passwordin="";
    if(request.getParameter("rut")!=null){
    rutin=request.getParameter("rut");
    }
    if(request.getParameter("cargo")!=null){
    rutin=request.getParameter("cargo");
    } 
    if(request.getParameter("password")!=null){
    rutin=request.getParameter("password");
    }
%>
<jsp:setProperty property="rut" name="trabajador" value="<%=rutin%>" />
<% Trabajador trab = trabajador.findByRut();%>
<%
if(rutin==trab.getRut()){
    response.sendRedirect(request.getContextPath() + "fichaauto/recepcion.jsp");
    }response.sendRedirect(request.getContextPath() + "/index.jsp");
%>    
