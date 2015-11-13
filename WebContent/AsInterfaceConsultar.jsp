<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsInterface" %>
<%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>

    
<%
  CtrlAsInterface ctrl= new CtrlAsInterface();
  List<AsInterface> interfaces=ctrl.verTodasInterface();
  String mensaje;
  if(interfaces==null){
	  mensaje="No existen registros";
  }
%>    

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar As Interfaz Resultado</title>
</head>
<body>
<!--Content-->
<ol class="breadcrumb">
<li><a href="index.html">Inicio</a></li>
<li><a href="AsInterfaceConsultar.jsp">Consultar As Interface</a></li>
</ol>
<table border="1">
 <tr>
   <td>c_interface</td>
   <td>d_interface</td>
   <td>c_usuario</td>
   <td>f_ingreso</td>
   <td>Ver</td>
   <td>Editar</td>			        
   <td>Eliminar</td>
 </tr> 
 <tbody>
 <!-- Lleno la tabla con la Variable Lista -->
 <% for(AsInterface interfac: interfaces) {
			out.print("<tr>");
			out.print("<td>"+interfac.getC_interface() +"</td>");
			out.print("<td>"+interfac.getD_interface()+"</td>");
            out.print("<td>"+interfac.getC_usuario()+"</td>");
            out.print("<td>"+interfac.getF_ingreso()+"</td>");
			out.print("<td><a href=/proyectoIGF1152015/AsInterfaceVer.jsp?cinterfaceBuscar="+interfac.getC_interface()+">Ver</a></td>");
			out.print("<td><a href=/proyectoIGF1152015/AsInterfaceActualizar.jsp?cinterfaceBuscar="+interfac.getC_interface()+">Editar</a></td>");
			out.print("<td><a href=/proyectoIGF1152015/AsInterfaceEliminar.jsp?cInterface="+interfac.getC_interface()+">Eliminar</a></td>");
			out.print("</tr>");
} %>
</tbody>
</table>

    <!--fin -->
</body>
</html>