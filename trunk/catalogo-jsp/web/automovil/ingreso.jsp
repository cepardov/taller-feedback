<%@page import="java.util.List"%>
<%@page import="models.entity.Marca"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*,models.entity.*"%>
<link href="../index.css" rel="stylesheet"/>

<jsp:useBean id="cargar" class="models.beans.MarcaBean" scope="request"></jsp:useBean>
<% List<Marca> listadoMarca = cargar.findAll();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ingreso de automovil</title>
</head>
<body>
<h3>Formulario de ingreso de automovil</h3>

    <form name="cargas" method="post" action="<%= request.getContextPath() %>/automovil/ingreso_1.jsp">
    <table border="1">
        <tbody>
             <tr>
                <td><span>Patente</span></td>
                <td><input type="text" name="patente" value=""/></td>
            </tr>
            <tr>
                <%
                    String rutin="";
                    if(request.getParameter("rut")!=null){
                        rutin=request.getParameter("rut");
                       }
                %>
                <td><span>Cliente Rut</span></td>
                <td><input size="40" type="text" name="rutcliente" readonly="readonly" value="<%=rutin%>"/></td>
            </tr>
            
            <tr>
                <td><span>Color</span></td>
                <td><input type="text" name="color" value=""/></td>
            </tr>
            <tr>
                    <td><span>marca</span></td>
                    <td>
                        <select onchange="document.cargas.submit();" name="marca" size="1">
                        <option>Seleccionar...</option>
                        <% for(Marca cli : listadoMarca){ %>
                        <option value="<%= cli.getId() %>"><%= cli.getNombre() %></option>
                        <%}%>
                    </select></td>   
            </tr>
            <tr>
                <td><span>modelo</span></td>
                <td><input type="text" readonly="readonly" name="año" value="Seleccionar marca"/></td>
            </tr>
            <tr>
                <td><span>año</span></td>
                <td><input type="text" readonly="readonly" name="año" value="Seleccionar marca"/></td>
            </tr>
            <tr>
                <td><span>Cilindrada</span></td>
                <td><input type="text" readonly="readonly" name="año" value="Seleccionar marca"/></td>
            </tr>
             
         </tbody>
    </table>
    </form>
</body>
</html>
