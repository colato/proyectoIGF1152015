<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="java.util.*" %>

<%  
  int claseinterface= Integer.parseInt(request.getParameter("claseInterface"));
   CtrlAsClaseInterface ctrl= new CtrlAsClaseInterface();
   boolean resultado=ctrl.borrarAsClaseInterface(claseinterface);
   String mensaje;
   if(resultado){
	   mensaje="El registro se elimino correctamemte";
   } else {
	   mensaje="Error al eliminar el registro'"+claseinterface+"'";
   }
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AsClaseInterface Eliminar Resultado</title>
</head>
<body>
<!--Content-->
<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li><a href="AsClaseInterfaceConsultar.jsp">Eliminar As Clase Interface</a></li>
		  <li class="active">Resultado</li>
		</ol>
		<h3>Resultado:</h3>
		<%=mensaje %>
		
		
    
    <!--fin -->
</body></html>