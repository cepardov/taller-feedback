<%@page import="models.entity.Automovil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*,models.entity.*"%>

<jsp:useBean id="automovil" class="models.beans.AutomovilBean" scope="request"></jsp:useBean>

<jsp:setProperty property="rut" name="automovil" />

<% Automovil auto = automovil.findByRut();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario Automovils</title>
</head>
<body>
<h3>Formulario Automovils</h3>


<form method="post" action="<%= application.getContextPath() %>/automovil/guardarautomovil.jsp">
    
    <table border="1">
        <tbody>
             <tr>
                <td><span>Rut</span></td>
                <td><input type="text" name="rut" value="<%=auto.getRut()==null?"":auto.getRut()%>"/></td>
            </tr>
            <tr>
                <td><span>Nombre</span></td>
                <td><input size="40" type="text" name="nombre" value="<%=auto.getNombre()==null?"":auto.getNombre()%>"/></td>
            </tr>
            <tr>
                <td><span>Apellido Paterno</span></td>
                <td><input type="text" name="paterno" value="<%=auto.getPaterno()==null?"":auto.getPaterno()%>"/></td>
            </tr>
            <tr>
                <td><span>Apellido Materno</span></td>
                <td><input type="text" name="materno" value="<%=auto.getMaterno()==null?"":auto.getMaterno()%>"/></td>
            </tr>
             <tr>
                <td><span>Telefono</span></td>
                <td><input type="text" name="telefono" value="<%=auto.getTelefono()==0?"":auto.getTelefono()%>"/></td>
            </tr>
            <tr>
                <td><span>Cargo</span></td>
                <td><input type="text" name="cargo" value="<%=auto.getCargo()==null?"":auto.getCargo()%>"/></td>
            </tr>
            <tr>
                <td><span>Clave</span></td>
                <td><input type="text" name="clave" value="<%=auto.getClave()==null?"":auto.getClave()%>"/></td>
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