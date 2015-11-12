<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="java.util.*" %>
<%

   int cinterface = Integer.parseInt(request.getParameter("cinterfaceBuscar"));
   CtrlAsInterfaceImplementa ctrl= new CtrlAsInterfaceImplementa();
   AsInterfaceImplementa asinterface = ctrl.verAsInterfaceImplementa(cinterface);
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Interface Implementa</title>
</head>
<body>
<form name="ActualizarInterface" method="POST" action="AsInterfaceImpCrear.jsp">

<!-- Lleno los campos correspondientes -->
   c_interface:<input type="text" name="cinterface"><%=asinterface.getC_interface_implementa() %> 
   Hijo:<input type="text" name="interfaceHijo"><%=asinterface.getC_interface_hijo() %>
   Padre:<input type="text" name="interfacePadre"><%=asinterface.getC_interface_padre() %>
 
   <input type="submit" value="Actualizar"> 
 
</form>

</body>
</html>