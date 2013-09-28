<%-- 
    Document   : guardarmodelo
    Created on : 26-09-2013, 11:23:28 PM
    Author     : Luis
--%>
<%@page import="models.entity.Modelo"%>
<%@page import="models.beans.ModeloBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="modelo1" class="models.beans.ModeloBean" scope="request"></jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardar Modelo</title>
    </head>
    <body>
        <form method="post" action="<%= application.getContextPath() %>/modelo/confirmarmodelo.jsp" scope="request">
            <%
               String nombrein="";
               int marcain=0;
               if(request.getParameter("nombre")!=null){
                        nombrein=request.getParameter("nombre");
               }
               if(request.getParameter("marcas")!=null){
                        marcain=Integer.parseInt(request.getParameter("marcas"));
               }
            %>
            
            <jsp:setProperty name="modelo1" property="nombre" value="<%=nombrein%>"/>
            <jsp:setProperty name="modelo1" property="marca" value="<%=marcain%>"/>

            <table>
                <tr><td>Nombre modelo:</td><td><jsp:getProperty name="modelo1" property="nombre"/></td></tr>
                <tr><td>Marca:</td><td><jsp:getProperty name="modelo1" property="marca"/></td></tr>
            </table>
            <input type="submit" value="Confirmar"/>
        </form>
        
    </body>
</html>
