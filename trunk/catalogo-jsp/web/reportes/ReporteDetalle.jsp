<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="net.sf.jasperreports.engine.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="utilidades.*" %> 
<%
DataBaseInstance conexion=new DataBaseInstance();
File reportFile = new File(application.getRealPath("reportesjasper/DetalleAtencion.jasper"));
Map parameters = new HashMap();
String rutcliente=request.getParameter("txtrut");
String patente=request.getParameter("txtpatente");
String fecha=request.getParameter("txtfecha");
String rutmecanico=request.getParameter("txtrutmecanico");
parameters.put("RUT",rutcliente); 
parameters.put("PATENTE",patente); 
parameters.put("FECHA",fecha); 
parameters.put("RUTM",rutmecanico); 
byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath (), parameters, conexion.getInstanceConnection()); 
response.setContentType("application/pdf");
response.setContentLength(bytes.length); ServletOutputStream ouputStream = response.getOutputStream(); 
ouputStream.write(bytes, 0, bytes.length);
ouputStream.flush(); 
ouputStream.close(); %>
