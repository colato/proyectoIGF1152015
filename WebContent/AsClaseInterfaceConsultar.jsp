<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>

    
<%
  CtrlAsClaseInterface ctrl= new CtrlAsClaseInterface();
  List<AsClaseInterface> interfa=ctrl.verTodasClaseInterface();
  String mensaje;
  if(interfa==null){
	  mensaje="No existen registros";
  }
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar As Clase Interfaz Resultado</title>
</head>
<body>
<!--Content-->
<ol class="breadcrumb">
<li><a href="index.html">Inicio</a></li>
<li><a href="AsClaseInterfaceConsultar.html">Consultar As Clase Interface</a></li>
</ol>
<div>
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th>cClaseInterface</th>
				        <th>cClase</th>
				        <th>cInterface</th>
				        <th>Ver</th>
				        <th>Editar</th>
				        <th>Eliminar</th>
				      </tr>
				    </thead>
				    <tbody>
				<% for(AsClaseInterface interf: interfa) {
						out.print("<tr>");
						out.print("<td>"+interf.getC_clase_interface() +"</td>");
						out.print("<td>"+interf.getAsclase().getCClase() +"</td>");
						out.print("<td>"+interf.getAsinterface().getC_interface()  +"</td>");
						out.print("<td><a href=/proyectoIGF1152015/AsClaseInterfaceVer.jsp?claseinterfaceBuscar="+interf.getC_clase_interface()+">Ver</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsClaseInterfaceActualizar.jsp?cinterfaceBuscar="+interf.getC_clase_interface() +">Editar</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsClaseInterfaceEliminar.jsp?claseInterface="+interf.getC_clase_interface() +">Eliminar</a></td>");
						out.print("</tr>");
				 }%>
				</tbody>
				</table>
			
</body>
</html>