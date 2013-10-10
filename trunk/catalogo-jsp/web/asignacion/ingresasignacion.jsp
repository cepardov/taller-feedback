<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asignacion de trabajo</title>
    </head>
    <body>
        <h1>Ingreso de fecha</h1>
         <form method="post" action="<%= application.getContextPath() %>/asignacion/ingresasignacion_1.jsp">
            <span>Fecha actual</span>
            <input type="text" name="fecha" value=""/></br>
            <input type="submit" name="guardar" value="Ir"/>
        </form>
        <table border="1">
            <tr>
                <td><span>N° de ficha</span></td>
                <td><span>Tipo de trabajo</span></td>
                <td><span>Fecha de recepcion</span></td>
                <td><span>Mecanico designado</span></td>                
            </tr>           
        </table>
    </body>
</html>