<html>
  <head>
    <meta content="text/html; charset=windows-1252" http-equiv="content-type">
    <link rel="alternate stylesheet" type="text/css" href="resource://gre-resources/plaintext.css"
      title="Ajustar l�neas largas">
  </head>
  <body>
    <pre>&lt;%-- 
    Document   : index
    Created on : 01-07-2010, 03:44:42 PM
    Author     : Andrés Guzmán
--%&gt;

&lt;%@page import="models.entity.Trabajador"%&gt;
&lt;%@page contentType="text/html" pageEncoding="UTF-8"%&gt;
&lt;jsp:useBean id="trabajador" class="models.beans.TrabajadorBean" scope="request"&gt;&lt;/jsp:useBean&gt;

&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd"&gt;
&lt;html&gt;
    &lt;head&gt;
        &lt;meta http-equiv="Content-Type" content="text/html; charset=UTF-8"&gt;
        &lt;title align="center"&gt;Taller mecánico&lt;/title&gt;
    &lt;/head&gt;
    &lt;body&gt;
        &lt;%
        String err1in="";
        if(request.getParameter("err1")!=null){
        err1in="Usuario y/o Contraseña son incorrectos.";
        }
        %&gt;
           
        &lt;h1&gt;Taller Mecánico "RRH"&lt;/h1&gt;
        &lt;form method="post" action="&lt;%= application.getContextPath() %&gt;/verificar.jsp"&gt;
            &lt;table&gt;&lt;tr&gt;
                &lt;tr&gt;
                &lt;td&gt;&lt;span&gt;Usuario (rut)&lt;/span&gt;&lt;/td&gt;
                &lt;label id="error"&gt;&lt;%=err1in%&gt;&lt;/label&gt;
                &lt;td&gt;&lt;input size=40 type="text" name="rut" value=""/&gt;&lt;/td&gt;
                &lt;/tr&gt;           
                &lt;tr&gt;
                    &lt;td&gt;&lt;span&gt;Clave&lt;/span&gt;&lt;/td&gt;
                &lt;label&gt;&lt;/label&gt;
                    &lt;td&gt;&lt;input size=40 type="password" name="pass" value=""/&gt;&lt;/td&gt;
                &lt;/tr&gt;
                &lt;tr&gt;
                    &lt;td colspan="2"&gt;&lt;input type="submit" name="ingresar" value="Ingresar"/&gt;&lt;/td&gt;
                &lt;/tr&gt;       
            &lt;/table&gt;
         &lt;/form&gt;  
    &lt;/body&gt;
&lt;/html&gt;
</pre>
  </body>
</html>
