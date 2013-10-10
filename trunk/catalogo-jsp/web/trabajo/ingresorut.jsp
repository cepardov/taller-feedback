<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rut Mecanico</title>
    </head>
    <body>
        <form name="select" method="post" action="<%= request.getContextPath() %>/trabajo/vistadetrabajos.jsp">
        <h1>Ingreso Rut</h1>
        <p>Debe Ingresar su rut y la fecha para ver sus trabajos</p>
        <table>
            <tr>
                <td><span>Rut</span></td>
                <td><input type="text" name="rut" value=""/></td>
            </tr>
            <tr>
                <td><span>Fecha</span></td>
                <td><input type="text" name="fecha" value=""/></td>
            </tr>
            <tr>
                <td><input type="submit" name="Ver"/></td>
            </tr>
            
        </table>
         </form>
    </body>
</html>
