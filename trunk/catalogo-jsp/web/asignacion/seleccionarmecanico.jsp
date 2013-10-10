<%@page import="models.entity.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="trabajador" class="models.beans.TrabajadorBean" scope="request"></jsp:useBean>

<% List<Trabajador> listadoTrabajadors = trabajador.findMecanico();%>
<!DOCTYPE html>
<%
    String idfichain="", tipoin="", fechain="", horain="";
    if(request.getParameter("idficha")!=null){
    idfichain=request.getParameter("idficha");
    }
    if(request.getParameter("tipo")!=null){
    tipoin=request.getParameter("tipo");
    }
    if(request.getParameter("fecha")!=null){
    fechain=request.getParameter("fecha");
    }
    if(request.getParameter("selected")!=null){
    horain=request.getParameter("selected");
    }
   
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seleccionar mecanico</title>
        <link href="../index.css" rel="stylesheet"/>
    </head>
    <body>
        <h1>Ficha de seleccion de mecanio</h1>
        <div id="contenido">
        <form name="select" method="post" action="<%= request.getContextPath() %>/asignacion/guardar.jsp">
        <table>
            <tr>
		<th>Id ficha</th>
		<th>Tipo de trabajo</th>
		<th>Fecha</th>
		<th>Hora</th>
                <th>Mecanico</th>
            </tr>
            <tr>
                    <td><input name="idficha" value="<%=idfichain%>"/></td>
                    <td><input name="tipo" value="<%=tipoin%>"/></td>
                    <td><input name="fecha" value="<%=fechain%>"/></td>
                    <td><input name="hora" value="<%=horain%>"/></td>
                    <td><select onchange="document.select.submit();" id="listamecanicos" name="listamecanicos">
                        <option>Seleccionar...</option>
                        <% for(Trabajador trab : listadoTrabajadors){ %>
                        <option value="<%=trab.getRut()%>"><%=trab.getNombre()%></option>
                        <%}%>  
                    </select></td>
             </tr>
      
        </table>
        </form>
        </div>
    </body>
</html>

