<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List,models.beans.*, models.entity.*"%>

<jsp:useBean id="cliente" class="models.beans.ClienteBean" scope="request"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recepción</title>
    </head>
    <body>
        <div align="center">
        <form method="post" action="<%= application.getContextPath() %>/fichaauto/guardar.jsp">
            <h1>Pagina de recepcion de automovil</h1>
            <tr><a href="<%= request.getContextPath() %>/automovil/lista.jsp">Selecionar automovil</a></tr>
            <div align="center">
                
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


            </div>
            <div>
                <table aling="center">
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
                    <td><span>Descripcion del trabajo</span></td>
                    <table align="center" border="1">
                        <tr>
                            <td>Parachoques<input type="checkbox" name="1" value="on" /></td>
                            <td>Motor<input type="checkbox" name="2" value="on" /></td>
                            <td>Sistema de electrico<input type="checkbox" name="3" value="0n" /></td>
                        </tr>
                        <tr>
                            <td>Lado Izquierdo(Lateral)<input type="checkbox" name="4" value="on" /></td>
                            <td>Cabina<input type="checkbox" name="5" value="on" /></td>
                            <td>Lado Derecho (lateral)<input type="checkbox" name="6" value="on" /></td>
                        </tr>
                        <tr>
                            <td>Lado Izquierdo(trasero)<input type="checkbox" name="7" value="on" /></td>
                            <td>Maletero<input type="checkbox" name="8" value="on" /></td>
                            <td>Lado Derecho (trasero)<input type="checkbox" name="9" value="on" /></td>
                        </tr>
                        </table>
                        <br>
                            <td>Otras descripciones<input type="checkbox" name="10" value="on" /></td>
                            <td><textarea name="otros" rows="4" cols="20">
                                </textarea></td>
                        </br>
                    <tr>
                        <td><span>Observaciones</span></td>
                        <td><textarea name="observaciones" rows="4" cols="50">
                        </textarea></td>
                    </tr>
                    
                </table>
                <br><input type="submit" name="guardar" value="Guardar"/>
            </div>
        </form>
        </div>
    </body>
</html>
