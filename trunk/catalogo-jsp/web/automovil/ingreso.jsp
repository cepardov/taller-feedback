<%@page import="java.util.List"%>
<%@page import="models.entity.Marca"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*,models.entity.*"%>

<jsp:useBean id="cargar" class="models.beans.MarcaBean" scope="request"></jsp:useBean>
<% List<Marca> listadoMarca = cargar.findAll();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seleccionar cliente</title>
</head>
<body>
<h3>Formulario de seleccion</h3>

    
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
                <td><input size="40" type="text" name="rutcliente" value="<%=rutin%>"/></td>
            </tr>
            
            <tr>
                <td><span>Color</span></td>
                <td><input type="text" name="color" value=""/></td>
            </tr>
            <tr>
                <td><span>marca</span></td>
                 <td><select id="marcas" name="marcas" size="1">
                <% for(Marca cli : listadoMarca){ %>
                <option value="<%= cli.getId() %>"><%= cli.getNombre() %></option>
                <%}%>
            </select>
            </td>
            </tr>
             <tr>
                <td><span>modelo</span></td>
                <td><input type="text" name="modelo" value=""/></td>
            </tr>
            <tr>
                <td><span>año</span></td>
                <td><input type="text" name="año" value=""/></td>
            </tr>
            <tr>
                <td><span>Cilindrada</span></td>
                <td><input type="text" name="cilindrada" value=""/></td>
            </tr>
             <tr>
             <tr>
                <td colspan="2"><input type="submit" name="guardar" value="Guardar"/></td>
             </tr>
        </tbody>
    </table>
</body>
</html>
