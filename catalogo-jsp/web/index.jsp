<%-- 
    Document   : index
    Created on : 01-07-2010, 03:44:42 PM
    Author     : Andrés Guzmán
--%>

<%@page import="models.entity.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="trabajador" class="models.beans.TrabajadorBean" scope="request"></jsp:useBean>

<jsp:setProperty property="rut" name="trabajador" />

<% Trabajador trab = trabajador.findByRut();%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title align="center">Taller mecánico</title>
    </head>
    <body>
        <form action="<%= application.getContextPath() %>">
            <tr><table>
               <td><a href="/Recepcion/recepcion.jsp">
                        Recepcion</a></td>
               <td><a href="/asignaciontrabajo/asignaciontrabajo.jsp">
                        Asignacion Trabajo</a></td>
               <td><a href="/trabajo/trabajo.jsp">
                        Trabajo</a></td>           
               <td><a href="/tallermecanico-jsp/marca/listamarca.jsp">
                        Marca</a></td>
               <td><a href="/tallermecanico-jsp/modelo/listamodelo.jsp">
                        Modelo</a></td>
               <td><a href="/tallermecanico-jsp/cliente/listadocliente.jsp">
                        Clientes</a></td>
               <td><a href="/tallermecanico-jsp//trabajador/listadotrabajador.jsp">
                        Trabajador</a></td>
           </table> </tr>
            </form>
        <h1>Taller Mecánico "RRH"</h1>
        <form method="post" action="<%= application.getContextPath() %>">
            <table><tr>
                <tr>
                <td><span>Recepcion</span></td>
                <td><input size=40 type="text" name="nombre" value=""/></td>
                </tr>
                <tr>
                    <td><span>Cargo</span></td>
                    <td><select name="cargo" zize="1">
                        <option value="admin">Administrador</option>
                        <option value="repecepcion">Recepción</option>
                        <option value="jefemecanico">Jefe mecánico</option>
                        <option value="mecanico">mecánico</option>
                    </select></td>
                </tr>            
                <tr>
                    <td><span>Clave</span></td>
                    <td><input size=40 type="password" name="nombre" value=""/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="guardar" value="Ingresar"/></td>
                </tr>       
            </table>
         </form>
            
    </body>
</html>
