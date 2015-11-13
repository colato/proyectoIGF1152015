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
<div>
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th>cInterfaceImplementa</th>
				        <th>Hijo</th>
				        <th>Padre</th>
				        <th>Ver</th>
				        <th>Editar</th>
				        <th>Eliminar</th>
				      </tr>
				    </thead>
				    <tbody>
				<% 
					for (AsInterfaceImplementa imp : interfaces) {
						out.print("<tr>");
						out.print("<td>"+imp.getC_interface_implementa()+"</td>");
						out.print("<td>"+imp.getC_interface_hijo().getC_interface()+"</td>");
						out.print("<td>"+imp.getC_interface_padre().getC_interface()+"</td>");
						out.print("<td><a href=/proyectoIGF1152015/AsInterfaceImplementaVer.jsp?cinterfaceBuscar="+imp.getC_interface_implementa()+">Ver</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsInterfaceImplementaActualizar.jsp?cinterfaceBuscar="+imp.getC_interface_implementa()+">Editar</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsInterfaceImplementaEliminar.jsp?cInterfaceimplementa="+imp.getC_interface_implementa()+">Eliminar</a></td>");
						out.print("</tr>");
					}
				%>
				</tbody>
				</table>
			</div>
    
</body>
</html>