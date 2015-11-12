 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="java.util.*" %>
<%

   int cinterface = Integer.parseInt(request.getParameter("cinterfaceBuscar"));
   CtrlAsInterface ctrl= new CtrlAsInterface();
   AsInterface asinterface = ctrl.verAsInterface(cinterface);
 %>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar As interface </title>
</head>
<body>
<form name="ActualizarInterface" method="POST" action="AsInterfaceCrear.jsp">

<!-- Lleno los campos correspondientes -->
   c_interface:<input type="text" name="cinterface"><%=asinterface.getC_interface() %> 
   d_interface:<input type="text" name="dinterface"><%=asinterface.getD_interface() %>
   c_usuario:<input type="text" name="cusuario"><%=asinterface.getC_usuario()%>
   f_ingreso:<input type="text" name="fecha"><%=asinterface.getF_ingreso() %>
   <input type="submit" value="Actualizar"> 
 
</form>


</body>
</html>