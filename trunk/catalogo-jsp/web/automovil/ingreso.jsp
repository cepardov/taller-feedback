<%@page import="models.entity.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*,models.entity.*"%>

<jsp:useBean id="cliente" class="models.beans.ClienteBean" scope="request"></jsp:useBean>

<% Cliente cli = cliente.findByRut();%>

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
                <td><span>Patente</span></td>
                <td><input type="text" name="rut" value=""/></td>
            </tr>
            <tr>
                <td><span>Cliente Rut</span></td>
                <td><input size="40" type="text" name="rut" value=""/></td>
                <td><a href="<%= application.getContextPath() %>/automovil/buscarcliente.jsp" value="rut" method="get">Buscar Cliente</a>></td>
            </tr>
            <tr>
                <td><span>Color</span></td>
                <td><input type="text" name="paterno" value=""/></td>
            </tr>
            <tr>
                <td><span>marca</span></td>
                <td><input type="text" name="materno" value=""/></td>
            </tr>
             <tr>
                <td><span>modelo</span></td>
                <td><input type="text" name="telefono" value=""/></td>
            </tr>
            <tr>
                <td><span>año</span></td>
                <td><input type="text" name="cargo" value=""/></td>
            </tr>
            <tr>
                <td><span>Cilindrada</span></td>
                <td><input type="text" name="clave" value=""/></td>
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