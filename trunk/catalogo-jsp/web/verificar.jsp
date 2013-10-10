<%@page import="models.entity.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="trabajador" class="models.beans.TrabajadorBean" scope="request"></jsp:useBean>
<%
    try{
        String rutin=request.getParameter("rut");
        String passin=request.getParameter("pass");
%>
<jsp:setProperty property="rut" name="trabajador" value="<%=rutin%>" />
<% 
        Trabajador trab = trabajador.findByRut();
       
        if(rutin.equals(trab.getRut())&&passin.equals(trab.getClave())){
                if(trab.getCargo().equals("1")){
                    response.sendRedirect(request.getContextPath() + "/MainRecepcion.jsp");
                }else if(trab.getCargo().equals("2")){
                    response.sendRedirect(request.getContextPath() + "/MainJefe.jsp");
                }else if(trab.getCargo().equals("3")){
                    response.sendRedirect(request.getContextPath() + "/MainMecanico.jsp");
                }else if(trab.getCargo().equals("4")){
                    response.sendRedirect(request.getContextPath() + "/MainGod.jsp");
                }else{
                };
            }else{
            response.sendRedirect(request.getContextPath()+"/index.jsp?err1=login");
        };
    }catch(NullPointerException ex){
            response.sendRedirect(request.getContextPath()+"/index.jsp?err1=login");
        }
%>
 