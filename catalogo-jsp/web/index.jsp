<%-- 
    Document   : index
    Created on : 01-07-2010, 03:44:42 PM
    Author     : cepardov, adolf, pablosantana
--%>

<%@page import="models.entity.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="trabajador" class="models.beans.TrabajadorBean" scope="request"></jsp:useBean>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title align="center">Taller mecánico</title>
        <link href='http://fonts.googleapis.com/css?family=Ubuntu|Roboto:400,300' rel='stylesheet' type='text/css'>
        <link href="index.css" rel="stylesheet"/>
    </head>
    
    <body>
        <%
        String err1in="";
        if(request.getParameter("err1")!=null){
        err1in="Usuario y/o Contraseña son incorrectos.";
        }
        %>
        <h1>Taller Mecánico "RRH"</h1>
        <form id="login" method="post" action="<%= application.getContextPath() %>/verificar.jsp">
            <table>
                <tr>
                    <td><span>Usuario (rut)</span></td>
                <label id="error"><%=err1in%></label>
                <td><input size=40 type="text" name="rut" value=""/></td>
                </tr>           
                <tr>
                    <td><span>Clave</span></td>
                <label></label>
                    <td><input size=40 type="password" name="pass" value=""/></td>
                </tr>
                <tr>
                    <td colspan="2"><input id="buton1" type="submit" name="ingresar" value="Ingresar"/></td>
                </tr>       
            </table>
         </form>
    <footer>
        Creado por FeeDBacK ©2013 / Pablo Santana - Camilo Jorquera - Cristian Pardo - Adolfo Gonzalez 
        Documentado por Felipe Zanzana.
    </footer>
    </body>
</html>
