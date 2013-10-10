<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Estado Vehiculo</title>
    </head>
    <body>
        <form name="form1" method="post" action="ReporteV.jsp">
      <table width="487" align="center">
        <tr>
          <td colspan="2" align="center"><strong>Reporte Estado Vehículo </strong></td>
        </tr>
         <tr>
             <td><select name="estado">
            <option>Mantencion</option>
            <option>Reparacion</option>
                 </select><td>
          <td><input type="submit" name="button" id="button" value="Ver Autos"></td>
        </tr>
        
      </table>
    </form>
    </body>
</html>
