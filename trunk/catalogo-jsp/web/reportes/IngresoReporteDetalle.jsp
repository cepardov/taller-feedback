<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Cliente</title>
    </head>
    <body>
        <form name="form1" method="post" action="ReporteDetalle.jsp">
      <table width="487" align="center">
        <tr>
          <td colspan="2" align="center"><strong>Reportes Atención</strong></td>
        </tr>
        <br>
        <tr>
          <td width="168">Ingrese Rut Cliente</td>
          <td width="415">
          <input type="text" name="txtrut"></td>
        </tr>
         <tr>
          <td width="168">Ingrese Patente</td>
          <td width="415">
          <input type="text" name="txtpatente"></td>
        </tr>
         <tr>
          <td width="168">Ingrese Fecha</td>
          <td width="415">
          <input type="text" name="txtfecha"></td>
        </tr>
        <tr>
          <td width="168">Ingrese Rut del Mecanico</td>
          <td width="415">
          <input type="text" name="txtrutmecanico"></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="Generar Reporte"></td>
        </tr>
      </table>
    </form>
    </body>
</html>
