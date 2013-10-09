<%-- 
    Document   : REPORTECODIGO
    Created on : 26/09/2013, 03:34:13 PM
    Author     : Unknown
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="net.sf.jasperreports.engine.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="utilidades.*" %> 
<%
DataBaseInstance conexion=new DataBaseInstance();
File reportFile = new File(application.getRealPath("ReportesJasper/EstadoVehiculos.jasper"));
Map parameters = new HashMap();
String estado=request.getParameter("estado");
parameters.put("TIPO",estado); 
byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath (), parameters, conexion.getInstanceConnection()); 
response.setContentType("application/pdf");
response.setContentLength(bytes.length); ServletOutputStream ouputStream = response.getOutputStream(); 
ouputStream.write(bytes, 0, bytes.length);
ouputStream.flush(); 
ouputStream.close(); %>
