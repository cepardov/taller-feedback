<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="asignacion" class="models.beans.AsignacionBean" scope="request"></jsp:useBean>

                <%
                    String rutin="",fechain="", horain="";
                    int idfichain=0;
                    
                    if(request.getParameter("idficha")!=null){
                        idfichain=Integer.parseInt(request.getParameter("idficha"));
                       }
                    if(request.getParameter("listamecanicos")!=null){
                        rutin=request.getParameter("listamecanicos");
                       }
                    if(request.getParameter("fecha")!=null){
                        fechain=request.getParameter("fecha");
                       }
                    if(request.getParameter("hora")!=null){
                        horain =request.getParameter("hora");
                       }                   
                %>
                <jsp:setProperty name="asignacion" property="idficha" value="<%=idfichain%>"/>
                <jsp:setProperty name="asignacion" property="rutTrab" value="<%=rutin%>"/>
                <jsp:setProperty name="asignacion" property="fecha" value="<%=fechain%>"/>
                <jsp:setProperty name="asignacion" property="hora" value="<%=horain%>"/>
                
                <%
                asignacion.save();

                response.sendRedirect(request.getContextPath() + "/asignacion/ingresasignacion.jsp?fecha="+fechain);
                %>
                
                