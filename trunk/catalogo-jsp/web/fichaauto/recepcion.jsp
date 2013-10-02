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
        <h1>Pagina de recepcion de automovil</h1>
        <tr><a href="<%= request.getContextPath() %>/automovil/lista.jsp">selecionar automovil</a>
        <table value="Datos Automóviles">
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
            
            
        </table>
        <form>
            <table>
                <tr>
                    <td><input type="radio" name="btn1" value="reparacion">Reparación</td>
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
                    <td><textarea name="descripcion" rows="4" cols="50">
                        ingrese una descripcion (obligatorio*)...
                        </textarea></td>
                <tr>
                    <td><span>Observaciones</span></td>
                    <td><textarea name="observaciones" rows="4" cols="50">
                        sin oservaciones...
                        </textarea></td>
                </tr>
            </table>
           
        </form>
    </body>
</html>
