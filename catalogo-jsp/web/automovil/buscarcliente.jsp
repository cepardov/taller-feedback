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
       if(rutin == cliente.findrutNombre()){
           response.sendRedirect(request.getContextPath()+"/cliente/ingresocliente.jsp");
       }else{
           response.sendRedirect(request.getContextPath()+"/cliente/ingresocliente.jsp");
       }
       
    }
    
%>

