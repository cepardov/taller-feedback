<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="automovil" class="models.beans.AutomovilBean" scope="request"></jsp:useBean>

<jsp:setProperty property="*" name="automovil" />
                <%
                    String patentein="",rutin="",colorin="";
                    int marcain=0, modeloin=0, a�oin=0, cilindradain=0;
                    
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
                        marcain =Integer.parseInt(request.getParameter("marca"));
                       }
                     if(request.getParameter("modelos")!=null){
                        modeloin=Integer.parseInt(request.getParameter("modelos"));
                       }
                    if(request.getParameter("a�o")!=null){
                        a�oin=Integer.parseInt(request.getParameter("a�o"));
                       }
                    if(request.getParameter("cilindrada")!=null){
                        cilindradain=Integer.parseInt(request.getParameter("cilindrada"));
                       }
                    
                %>
                <jsp:setProperty name="automovil" property="ppu" value="<%=patentein%>"/>
                <jsp:setProperty name="automovil" property="rut" value="<%=rutin%>"/>
                <jsp:setProperty name="automovil" property="color" value="<%=colorin%>"/>
                <jsp:setProperty name="automovil" property="idmarca" value="<%=marcain%>"/>
                <jsp:setProperty name="automovil" property="idmodelo" value="<%=modeloin%>"/>
                <jsp:setProperty name="automovil" property="a�o" value="<%=a�oin%>"/>
                <jsp:setProperty name="automovil" property="cilindrada" value="<%=cilindradain%>"/>
                <%
                automovil.save();

                response.sendRedirect(request.getContextPath() + "/automovil/lista.jsp");
                %>
                
                