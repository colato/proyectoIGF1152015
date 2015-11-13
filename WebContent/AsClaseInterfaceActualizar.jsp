<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="java.util.*" %>
<%

   int cinterface = Integer.parseInt(request.getParameter("cinterfaceBuscar"));
   CtrlAsClaseInterface ctrl= new CtrlAsClaseInterface();
   AsClaseInterface asinterface = ctrl.verAsClaseInterface(cinterface);
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar As Clase interface </title>
</head>
<body>

<form name="ActualizarInterface" method="POST" action="AsClaseInterfaceCrear.jsp">

<!-- Lleno los campos correspondientes -->
   clase interface:<input type="text" name="claseInterface"><%=asinterface.getC_clase_interface() %> 
   c_clase:<input type="text" name="cClase"><%=asinterface.getAsclase().getCClase() %>
   c_interface:<input type="text" name="cInterface"><%=asinterface.getAsinterface().getC_interface() %>
   
   <input type="submit" value="Actualizar"> 
 
</form>

</body>
</html>