<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,models.beans.*, models.entity.*"%>
<jsp:useBean id="vista" class="models.beans.FichaBean" scope="request"></jsp:useBean>
    <%
    String rutin="";
    if(request.getParameter("rut")!=null){
        rutin=request.getParameter("rut");
    }
    %>
<jsp:setProperty name="vista" property="rut" value="<%=rutin%>"/>
<% List<Ficha> listadoRecep = vista.findPorrut();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista de trabajos</title>
        <link href="../index.css" rel="stylesheet"/>
    </head>
    <body>
        <h1>Formulario de vista de trabajos por rut</h1>
        <div id="contenido">
        <form name="select" method="post" action="<%= request.getContextPath() %>/asignacion/seleccionarmecanico.jsp">
            <table border="1">
                <tr>
                    <td><span>Tipo de trabajo</span></td>
                    <td><span>Observaciones</span></td>
                    <td><span>Estado</span></td>
                    <td><span>Descripcion</span></td>                
                </tr>
                <% for(Ficha fi : listadoRecep){   
                       
                %>
                    <tr>
                        <td><input type="text" name="idtipo" value="<%=fi.getTipo()%>"/></td>
                        <td><input type="text" name="observaciones" value="<%= fi.getObservaciones() %>"/></td>
                        <td><input type="text" name="estado" value="<%= fi.getEstado() %>"/></td>
                        <td><input type="text" name="descripcion" value="<%=fi.getDescripcion()%>"/></td>
                       </tr>
            <% }
            %>
            </table>
        </form>
        </div>
    </body>
</html>
