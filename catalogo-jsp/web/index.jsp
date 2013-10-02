<%-- 
    Document   : index
    Created on : 01-07-2010, 03:44:42 PM
    Author     : Andrés Guzmán
--%>

<%@page import="models.entity.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title align="center">Taller mecánico</title>
    </head>
    <body>
        
           
        <h1>Taller Mecánico "RRH"</h1>
        <form method="post" action="<%= application.getContextPath() %>/verificar.jsp">
            <table><tr>
                <tr>
                <td><span>Usuario (rut)</span></td>
                <td><input size=40 type="text" name="rut" value=""/></td>
                </tr>
                <tr>
                    <td><span>Cargo</span></td>
                    <td><select name="cargo" zize="1">
                        <option value="admin">Administrador</option>
                        <option value="recepcion">Recepción</option>
                        <option value="jefemecanico">Jefe mecánico</option>
                        <option value="mecanico">mecánico</option>
                    </select></td>
                </tr>            
                <tr>
                    <td><span>Clave</span></td>
                    <td><input size=40 type="password" name="password" value=""/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="ingresar" value="Ingresar"/></td>
                </tr>       
            </table>
         </form>
            
    </body>
</html>
