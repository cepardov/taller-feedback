<%@page import="models.entity.Trabajador"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*,models.entity.*"%>

<jsp:useBean id="auto" class="models.beans.AutomovilBean" scope="request"></jsp:useBean>

<jsp:setProperty property="rut" name="trabajador" />

<% Automovil aut = auto.findByPpu();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario Trabajadors</title>
<link href="../index.css" rel="stylesheet"/>
</head>
<body>
<h1>Formulario Trabajadors</h1>


<form id="tablaautomovil" method="post" action="<%= application.getContextPath() %>/trabajador/updatetrabajador.jsp">
    
    <table>
        <tbody>
             <tr>
                <td><span>Rut</span></td>
                <td><input type="text" name="rut" value="<%=aut.getPpu()==null?"":aut.getPpu()%>"/></td>
            </tr>
            <tr>
                <td><span>Nombre</span></td>
                <td><input size="40" type="text" name="nombre" value="<%=aut.getRut()==null?"":aut.getRut()%>"/></td>
            </tr>
            <tr>
                <td><span>Apellido Paterno</span></td>
                <td><input type="text" name="paterno" value="<%=aut.getColor()==null?"":aut.getColor()%>"/></td>
            </tr>
            <tr>
                <td><span>Apellido Materno</span></td>
                <td><input type="text" name="materno" value="<%=aut.getIdmarca()==0?"":aut.getIdmarca()%>"/></td>
            </tr>
             <tr>
                <td><span>Telefono</span></td>
                <td><input type="text" name="telefono" value="<%=aut.getIdmodelo()==0?"":aut.getIdmodelo()%>"/></td>
            </tr>
            <tr>
                <td><span>Cargo</span></td>
                <td><input type="text" name="cargo" value="<%=aut.getAño()==0?"":aut.getAño()%>"/></td>
            </tr>
            <tr>
                <td><span>Clave</span></td>
                <td><input type="text" name="clave" value="<%=aut.getCilindrada()==0?"":aut.getCilindrada()%>"/></td>
            </tr>
             <tr>
             <tr>
                <td colspan="2"><input type="submit" name="guardar" value="Guardar"/></td>
             </tr>
        </tbody>
    </table>
</form>
</body>
</html>