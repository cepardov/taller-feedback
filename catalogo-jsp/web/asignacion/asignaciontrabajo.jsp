<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="asignacion" class="models.beans.AsignacionBean" scope="request"></jsp:useBean>

<% List<Asignacion> listaTrabajos = asignacion.findAll();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asignacion Trabajos Reparacion</title>
        <link href="../index.css" rel="stylesheet"/>
        <link href="../forms.css" rel="stylesheet"/>
    </head>
    <body>
        <h1>Listado Trabajos Pendientes</h1>
        <p><a href="<%=request.getContextPath()%>/reportes/IngresoReporteV.jsp">Ver Vehiculos por Estado(+)</a></p>
        <table>
            <tr>
                <th>Numero Asignacion</th>
                <th>Ficha de Auto</th>
                <th>Rut Trabajador</th>
                <th>Fecha Asignacion</th>
                <th>Hora Asignacion</th>
            </tr>
            <% for (Asignacion asig : listaTrabajos) { %>
            <tr>
                <td><%= asig.getIdasignacion() %></td>  
                <td><%= asig.getIdficha() %></td>  
                <td><%= asig.getRutTrab() %></td>  
                <td><%= asig.getFecha() %></td>  
                <td><%= asig.getHora() %></td> 
              
            </tr>
            <% } %>
        </table>
        </div>
    </body>
</html>
