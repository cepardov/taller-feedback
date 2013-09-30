<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recepción</title>
    </head>
    <body>
        <h1>Pagina de recepcion de automovil</h1>
        <tr><a href="<%= request.getContextPath() %>/automovil/lista.jsp">selecionar automovil</a>
        <table>
            <tr>
                <td><span>Nombre Propietario</span></td>
                <td><input type="text" name="nombre" value=""/></td>
            </tr>
            <tr>    
                <td><span>Patente Vehículo</span></td>
                <td><input type="text" name="patente" value=""/></td>
            </tr>
        </table>
        <form>
            <table>
                <tr>
                    <td><input type="radio" name="btn1" value="reparacion">Reparacion</td>
                    <td><input type="radio" name="btn2" value="mantencion"/>Mantecion</td>
                </tr>
                <tr>
                    <td><span>Fecha de recepcion</span></td>
                    <td><input type="text" name="fecha" value=""/></td>
                </tr>
            </table>
           
        </form>
    </body>
</html>
