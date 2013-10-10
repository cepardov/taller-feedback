<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="cliente" class="models.beans.ClienteBean" scope="request"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recepción Vehículo - Feedback</title>
        <link href='http://fonts.googleapis.com/css?family=Ubuntu|Roboto:400,300' rel='stylesheet' type='text/css'>
        <link href="index.css" rel="stylesheet"/>
    </head>
    <body>
        <h1>Pagina de recepcion de automovil</h1>
        <form method="post" action="<%= application.getContextPath() %>/fichaauto/guardar.jsp">
            <div id="contenido">
            <p><label id="ayuda">1.- Seleccione un vehiculo primero</label></p>
            <p><a href="<%= request.getContextPath() %>/automovil/lista.jsp">Selecionar automovil</a></p>
            <p><label id="ayuda">2.- Rellene el formulario</label></p>
                
                <%
                    String patentein="",rutin="";
                    if(request.getParameter("patente")!=null){
                        patentein=request.getParameter("patente");
                    }
                    if(request.getParameter("rut")!=null){
                        rutin=request.getParameter("rut");
                    }
                %>
                <tr>    
                    <td><span>Patente Vehículo</span></td>
                    <td><input type="text" name="patente" value="<%=patentein%>"/></td>
                </tr>
                <tr>
                    <td><span>Rut Propietario</span></td>
                    <td><input type="text" name="rut2" value="<%=rutin%>"</td>
                </tr>

                <table>
                    <tr>
                        <td><input type="radio" name="btn1" value="reparacion"/>Reparación</td>
                        <td><input type="radio" name="btn1" value="mantencion"/>Mantención</td>
                    </tr>
                    <tr>
                        <td><span>Fecha de recepción</span></td>
                        <td><input type="datetime" name="fecha" value=""/></td>
                    </tr>
                    <tr>
                        <td><span>Fecha estimada de entrega</span></td>
                        <td><input type="datetime" name="fechaentrega" value=""/></td>
                    </tr>
                    <td><label id="ayuda">Descripción del trabajo (Seleccione)</label></td>
                    <table>
                        <tr>
                            <td><input type="checkbox" name="1" value="on" />Parachoques</td>
                            <td><input type="checkbox" name="2" value="on" />Motor</td>
                            <td><input type="checkbox" name="3" value="0n" />Sistema de electrico</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="4" value="on" />Lado Izquierdo(Lateral)</td>
                            <td><input type="checkbox" name="5" value="on" />Cabina</td>
                            <td><input type="checkbox" name="6" value="on" />Lado Derecho (lateral)</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="7" value="on" />Lado Izquierdo(trasero)</td>
                            <td><input type="checkbox" name="8" value="on" />Maletero</td>
                            <td><input type="checkbox" name="9" value="on" />Lado Derecho (trasero)</td>
                        </tr>
                        </table>
                        <br>
                        <br><input type="checkbox" name="10" value="on" />Otras descripciones (Opcional)</br>
                            <td><textarea name="otros" rows="4" cols="50">
                                </textarea></td>
                        </br>
                    <tr>
                    <br><span>Observaciones</span></br>
                        <td><textarea name="observaciones" rows="4" cols="50">
                        </textarea></td>
                    </tr>
                    
                </table>
                <br><input type="submit" name="guardar" value="Guardar"/>
                </form>
            </div>
    </body>
</html>
