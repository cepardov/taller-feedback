<%@page import="java.util.List"%>
<%@page import="models.entity.Modelo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.beans.*,models.entity.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ingreso de automovil</title>
</head>
<body>
<h3>Formulario de ingreso de automovil</h3>
                <%
                    String patentein="",rutin="",colorin="";
                    int marcain=0;
                    if(request.getParameter("patente")!=null){
                        patentein=request.getParameter("patente");
                       }
                    if(request.getParameter("rutcliente")!=null){
                        rutin=request.getParameter("rutcliente");
                       }
                    if(request.getParameter("color")!=null){
                        colorin=request.getParameter("color");
                       }
                    if(request.getParameter("marca")!=null){
                        marcain=Integer.parseInt(request.getParameter("marca"));
                       }
                %>
                
<jsp:useBean id="cargar" class="models.beans.ModeloBean" scope="request"></jsp:useBean>
<jsp:setProperty name="cargar" property="marca" value="<%=marcain%>"/>
<% List<Modelo> listadoModelo = cargar.findPorMarca();%>
     <form action="<%= request.getContextPath() %>/automovil/guardar.jsp" method="post">
        <table border="1">
            <tbody>
                 <tr>
                    <td><span>Patente</span></td>
                    <td><input type="text" name="patente" value="<%=patentein%>"/></td>
                </tr>
                <tr>

                    <td><span>Cliente Rut</span></td>
                    <td><input size="40" type="text" name="rutcliente" value="<%=rutin%>"/></td>
                </tr>

                <tr>
                    <td><span>Color</span></td>
                    <td><input type="text" name="color" value="<%=colorin%>"/></td>
                </tr>
                <tr>
                    <td><span>marca</span></td>
                    <td><input type="text" name="marca" value="<%=marcain%>"/></td> 
                </tr>
                 <tr>
                    <td><span>modelo</span></td>
                    <td><select id="modelos" name="modelos" size="1">
                        <% for(Modelo cli : listadoModelo){ %>
                        <option value="<%=cli.getIdmodelo()%>"><%=cli.getNombre()%></option>
                        <%}%>
                        </select>
                    </td>
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
