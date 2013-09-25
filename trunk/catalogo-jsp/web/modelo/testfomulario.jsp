<%-- 
    Document   : testfomulario
    Created on : 24-09-2013, 11:46:34 PM
    Author     : Luis
--%>

<%@page import="models.entity.Marca"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Formulario Modelo</title>
</head>
<body>
<h3>Formulario Modelo</h3>


<form method="post" action="/modelo/guardarmodelo.jsp">
    <table border="1">
        <tbody>
        <tr>
            <td><span>Nombre</span></td>
            <td><input size="40" type="text" name="nombre" value="nombre"/></td>
        </tr>
            
        <tr>
            <td><sapan>Marca</sapan></td>
            <jsp:useBean id="cargar" class="models.beans.MarcaBean" scope="request"/>
            <% List<Marca> listadoMarca = cargar.findAll();%>
            <td><select name="Marcas" size="1">
                <% for(Marca cli : listadoMarca){ %>
                <option>"<%= cli.getNombre() %>"</option>
            </select>
            <%}%>  
            </td>
            <tr>
                <td colspan="2"><input type="submit" name="guardar" value="Guardar"/></td>
            </tr>
        
        </tbody>
    </table>
</form>
</body>
</html>
