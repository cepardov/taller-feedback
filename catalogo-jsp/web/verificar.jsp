<%@page import="models.entity.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="trabajador" class="models.beans.TrabajadorBean" scope="request"></jsp:useBean>
<%
    try{ 
        String rutin="", cargoin="", passin="";
        if(request.getParameter("rut")!=null){
        rutin=request.getParameter("rut");
        }
        if(request.getParameter("pass")!=null){
        passin=request.getParameter("pass");
        }
    
%>
<jsp:setProperty property="rut" name="trabajador" value="<%=rutin%>" />
<% 
        //error="usuario o contraseña incorrecta";
        Trabajador trab = trabajador.findByRut();
        if(trab.getRut().equals(null)){
        int sc=1;
        response.sendError(sc, request.getContextPath()+ "/index.jsp");
        }else{
            if(rutin.equals(trab.getRut())&&passin.equals(trab.getClave())){
                if(trab.getCargo().equals("1")){
                    response.sendRedirect(request.getContextPath() + "/fichaauto/recepcion.jsp");
                };
                if(trab.getCargo().equals("2")){
                    response.sendRedirect(request.getContextPath() + "/asignacion/asignaciontrabajo.jsp");
                };
                if(trab.getCargo().equals("3")){
                    response.sendRedirect(request.getContextPath() + "/trabajo/trabajo.jsp");
                };
            };
        }
    }catch(NullPointerException ex){     
       response.sendRedirect(request.getContextPath()+ "/error.jsp");
    };
%>    

 