<%-- 
    Document   : guardar
    Created on : 30-09-2013, 07:28:06 PM
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
       String patentein="", rutin="", fecharecepin="", tipoin="", fechaentrega="";
       String descripcionin="de:", observacionin="", otradescripcion="";
       if(request.getParameter("patente")!=null){
       patentein=request.getParameter("patente");
       }
       if(request.getParameter("rut2")!=null){
       rutin=request.getParameter("rut2");
       }
       if(request.getParameter("bnt1")!=null){
           tipoin=request.getParameter("bnt1");
       }else{
           tipoin="mantencion";
       }
       if(request.getParameter("fecha")!=null){
       patentein=request.getParameter("fecha");
       }
       if(request.getParameter("fechaentrega")!=null){
       patentein=request.getParameter("fechaentrega");
       }
       if(request.getParameter("1").equals("on")){
           descripcionin=tipoin+descripcionin+"parachoques, ";
       }else{
           if(request.getParameter("2").equals("on")){
               descripcionin=descripcionin+"motor, ";
           }else{
                if(request.getParameter("3").equals("on")){
                   descripcionin=descripcionin+"sistema electrico, ";
               }else{
                   if(request.getParameter("4").equals("on")){
                       descripcionin=descripcionin+"lado izquierdo(delantero), ";
                   }else{
                       if(request.getParameter("5").equals("on")){
                           descripcionin=descripcionin+"cabina, ";
                       }else{
                       if(request.getParameter("6").equals("on")){
                           descripcionin=descripcionin+"lado derecho (delantero), ";
                       }else{
                           if(request.getParameter("7").equals("on")){
                               descripcionin=descripcionin+"lado izquierdo(trasera), ";
                           }else{
                               if(request.getParameter("8").equals("on")){
                                   descripcionin=descripcionin+"maletero, ";
                               }else{
                               if(request.getParameter("9").equals("on")){
                                   descripcionin=descripcionin+"lado derecho(trasera), ";
                               }
                                }
                                }
                            }
                        }
                    }
                }
           }
       }
                       if(request.getParameter("10").equals("on")){
                           if(request.getParameter("otros")!=null){
                           otradescripcion=request.getParameter("otros");
                           descripcionin=descripcionin+otradescripcion;
                           }
                           
                       }
                       if(request.getParameter("observaciones")!=null){
                           observacionin=request.getParameter("observaciones");
                       }
           
%>
<jsp:useBean id="guard" class="models.beans.FichaBean" scope="request"/>
<jsp:setProperty name="guard"property="patente" value="<%=patentein%>"/>
<jsp:setProperty name="guard"property="tipo" value="<%=tipoin%>"/>
<jsp:setProperty name="guard"property="fecharecep" value="<%=fecharecepin%>"/>
<jsp:setProperty name="guard"property="fechaentrega" value="<%=fechaentrega%>"/>
<jsp:setProperty name="guard"property="observacion" value="<%=observacionin%>"/>
<jsp:setProperty name="guard"property="estado" value="pendiente"/>
<jsp:setProperty name="guard"property="descripcion" value="<%=descripcionin%>"/>
<%
guard.save();
response.sendRedirect(request.getContextPath() + "/auto/recepcion.jsp");
%>
