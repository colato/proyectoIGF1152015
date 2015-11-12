<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsInterfaceImplementa" %>
<%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>

    
<%
  CtrlAsInterfaceImplementa ctrl= new CtrlAsInterfaceImplementa();
  List<AsInterfaceImplementa> interfaces=ctrl.verTodasInterfaceImplementa();
  String mensaje;
  if(interfaces==null){
	  mensaje="No existen registros";
  }
%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Interface Implementa</title>
</head>
<body>
<!--Content-->
<ol class="breadcrumb">
<li><a href="index.html">Inicio</a></li>
<li><a href="AsInterfaceConsultar.html">Consultar As Interface Implementa</a></li>
</ol>
<table border="1">
 <tr>
   <td>c_interface</td>
   <td>d_interface</td>
 </tr> 
 <!-- Lleno la tabla con la Variable Lista -->
 <% for(AsInterfaceImplementa interfac: interfaces) {%>
	<tr>
	 <td><input type="text" name="cinterface"><%=interfac%></td>
	 
	 </tr>
<% } %>

</table>
<form name="BuscarInterface" method="POST" action="AsInterfaceImplementaActualizar.jsp">
    Ingrese el c_interface a Actualizar: <input type="text" name="cinterfaceBuscar">
    <input type="submit" value="Buscar">
    </form>
    <!--fin -->
</body>
</html>