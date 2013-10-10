<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,models.beans.*, models.entity.*"%>
<%
    String fechain="";
    if(request.getParameter("fecha")!=null){
    fechain=request.getParameter("fecha");
    }
%>
<jsp:useBean id="fic" class="models.beans.FichaBean" scope="request"></jsp:useBean>
<jsp:setProperty name="fic" property="fecharecep" value="<%=fechain%>"/>
<% List<Ficha> listadoRecep = fic.findPorfecha();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asignacion de trabajo</title>
        <link href="../index.css" rel="stylesheet"/>
        <link href="../form.css" rel="stylesheet"/>
    </head>
    <body>
        <h1>Formulario de designacion de trabajos</h1>
        <div id="contenido">
        <form name="select" method="post" action="<%= request.getContextPath() %>/asignacion/seleccionarmecanico.jsp">
            <table border="1">
                <tr>
                    <td><span>N° de ficha</span></td>
                    <td><span>Tipo de trabajo</span></td>
                    <td><span>Fecha de recepcion</span></td>
                    <td><span>Hora de trabajo</span></td>
                    <td><span>Mecanico designado</span></td>                
                </tr>
                <% for(Ficha fi : listadoRecep){   
                       
                %>
                    <tr>
                        <td><input type="text" name="idficha" value="<%= fi.getIdficha()%>"/></td>
                        <td><input type="text" name="tipo" value="<%= fi.getTipo() %>"/></td>
                        <td><input type="text" name="fecha" value="<%= fi.getFecharecep() %>"/></td>
                        <td><select onchange="document.select.submit();" id="selected" name="selected">
                                <option value="">Seleccionar...</option>
                                <option value="09:00-10:00">09:00-10:00</option>
                                <option value="10:00-11:00">10:00-11:00</option>
                                <option value="11:00-12:00">11:00-12:00</option>
                                <option value="12:00-13:00">12:00-13:00</option>
                                <option value="13:00-14:00">13:00-14:00</option>
                                <option value="14:00-15:00">14:00-15:00</option>
                                <option value="15:00-16:00">15:00-16:00</option>
                                <option value="16:00-17:00">16:00-17:00</option>
                                <option value="17:00-18:00">17:00-18:00</option>
                                <option value="18:00-19:00">18:00-19:00</option>

                            </select></td>
                       </tr>
            <% }%>
            </table>
        </form>
        </div>
    </body>
</html>

