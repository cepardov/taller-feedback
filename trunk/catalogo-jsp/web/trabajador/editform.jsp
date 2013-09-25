<%@page import="models.entity.Trabajador"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*,models.entity.*"%>

<jsp:useBean id="trabajador" class="models.beans.TrabajadorBean" scope="request"></jsp:useBean>

<jsp:setProperty property="rut" name="trabajador" />

<% Trabajador trab = trabajador.findByRut();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario Trabajadors</title>
</head>
<body>
<h3>Formulario Trabajadors</h3>


<form method="post" action="<%= application.getContextPath() %>/trabajador/updatetrabajador.jsp">
    
    <table border="1">
        <tbody>
             <tr>
                <td><span>Rut</span></td>
                <td><input type="text" name="rut" value="<%=trab.getRut()==null?"":trab.getRut()%>"/></td>
            </tr>
            <tr>
                <td><span>Nombre</span></td>
                <td><input size="40" type="text" name="nombre" value="<%=trab.getNombre()==null?"":trab.getNombre()%>"/></td>
            </tr>
            <tr>
                <td><span>Apellido Paterno</span></td>
                <td><input type="text" name="paterno" value="<%=trab.getPaterno()==null?"":trab.getPaterno()%>"/></td>
            </tr>
            <tr>
                <td><span>Apellido Materno</span></td>
                <td><input type="text" name="materno" value="<%=trab.getMaterno()==null?"":trab.getMaterno()%>"/></td>
            </tr>
             <tr>
                <td><span>Telefono</span></td>
                <td><input type="text" name="telefono" value="<%=trab.getTelefono()==0?"":trab.getTelefono()%>"/></td>
            </tr>
            <tr>
                <td><span>Cargo</span></td>
                <td><input type="text" name="cargo" value="<%=trab.getCargo()==null?"":trab.getCargo()%>"/></td>
            </tr>
            <tr>
                <td><span>Clave</span></td>
                <td><input type="text" name="clave" value="<%=trab.getClave()==null?"":trab.getClave()%>"/></td>
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