<%-- 
    Document   : testfomulario
    Created on : 24-09-2013, 11:46:34 PM
    Author     : Luis
--%>
<%@page import="models.entity.Marca"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:useBean id="cargar" class="models.beans.MarcaBean" scope="request"/>
            <% List<Marca> listadoMarca = cargar.findAll();%>
<!DOCTYPE html>
<html>
    <head>
    <title>Formulario Modelo</title>
    <link href="../index.css" rel="stylesheet"/>
</head>
<body>
<h1>Formulario Modelo</h1>

<div id="contenido">
<form method="post" action="<%= request.getContextPath() %>/modelo/guardarmodelo.jsp" scope="request">
    <table border="1">
        <tbody>
        <tr>
            <td><span>Nombre de modelo</span></td>
            <td><input size="40" type="text" name="nombre" value=""/></td>
        </tr>
            
        <tr>
            <td><sapan>Marca</sapan></td>
           
            <td><select id="marcas" name="marcas" size="1">
                <% for(Marca cli : listadoMarca){ %>
                <option value="<%= cli.getId() %>"><%= cli.getNombre() %></option>
                <%}%>
            </select>
              
            </td>
            <tr>
                <td colspan="2"><input type="submit" name="guardar" value="Guardar"/></td>
            </tr>
        
        </tbody>
    </table>
</form>
</div>
</body>
</html>
</html>