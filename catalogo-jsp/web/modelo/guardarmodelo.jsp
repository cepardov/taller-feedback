<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modelo</title>
    </head>
    <body>
        <h1>Datos Modelo</h1>
        <%
            
            String nombrein="", marcain="";
                      
            if(request.getParameter("nombre")!=null){
                    nombrein=request.getParameter("nombre");
                            }
            if(request.getParameter("marca")!=null){
                    marcain=request.getParameter("marca");
                            }
            
        %>
        <jsp:useBean id="modelo1" class="models.entity.Modelo" scope="page"/>
        <jsp:setProperty name="Modelo1" property="nombre" value="<%=nombrein%>"/>
        <jsp:setProperty name="Modelo1" property="marca" value="<%=marcain%>"/>
        
               
        <form action="confirmarmodelo.jsp" method="post">    
            <table>
                <tr><td>Nombre de modelo</td><td><jsp:getProperty name="Modelo1" property="nombre"/></tr>
                <tr><td>Marca</td><td><jsp:getProperty name="Modelo1" property="marca"/></tr>
                
                <input type="submit" value="Confimar"/>
            </table> 
        </form>
        
    </body>
</html>  
