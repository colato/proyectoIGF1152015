 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="java.util.*" %>

<%  
  int cinterface= Integer.parseInt(request.getParameter("cInterface"));
   CtrlAsInterface ctrl= new CtrlAsInterface();
   boolean resultado=ctrl.borrarAsInterface(cinterface);
   String mensaje;
   if(resultado){
	   mensaje="El registro se elimino correctamemte";
   } else {
	   mensaje="Error al eliminar el registro'"+cinterface+"'";
   }
%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AsInterface Eliminar Resultado</title>
</head>
<body>
<!--Content-->
<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li><a href="AsInterfaceEliminar.html">Eliminar As Interface</a></li>
		  <li class="active">Resultado</li>
		</ol>
		<h3>Resultado:</h3>
		<%=mensaje %>
		
		
    
    <!--fin -->
</body>
</html>