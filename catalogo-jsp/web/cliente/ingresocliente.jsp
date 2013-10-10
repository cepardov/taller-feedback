<%@page import="models.entity.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*,models.entity.*"%>
<link href="../index.css" rel="stylesheet"/>
<jsp:useBean id="cliente" class="models.beans.ClienteBean" scope="request"></jsp:useBean>

<jsp:setProperty property="rut" name="cliente" />

<% Cliente cli = cliente.findByRut();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario Clientes</title>
</head>
<body>
<h3>Formulario Clientes</h3>


<form method="post" action="<%= application.getContextPath() %>/cliente/guardarcliente.jsp">
    
    <table border="1">
        <tbody>
             <tr>
                <td><span>Rut</span></td>
                <td><input type="text" name="rut" value="<%=cli.getRut()==null?"":cli.getRut()%>"/></td>
            </tr>
            <tr>
                <td><span>Nombre</span></td>
                <td><input size="40" type="text" name="nombre" value="<%=cli.getNombre()==null?"":cli.getNombre()%>"/></td>
            </tr>
            <tr>
                <td><span>Apellido Paterno</span></td>
                <td><input type="text" name="paterno" value="<%=cli.getPaterno()==null?"":cli.getPaterno()%>"/></td>
            </tr>
            <tr>
                <td><span>Apellido Materno</span></td>
                <td><input type="text" name="materno" value="<%=cli.getMaterno()==null?"":cli.getMaterno()%>"/></td>
            </tr>
             <tr>
                <td><span>Telefono</span></td>
                <td><input type="text" name="telefono" value="<%=cli.getTelefono()==0?"":cli.getTelefono()%>"/></td>
            </tr>
            <tr>
                <td><span>Email</span></td>
                <td><input type="text" name="email" value="<%=cli.getEmail()==null?"":cli.getEmail()%>"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="guardar" value="Guardar"/></td>
             </tr>
        </tbody>
    </table>
</form>
</body>
</html>