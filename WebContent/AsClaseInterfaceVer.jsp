<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="java.util.*" %>
<%

   int claseinterface = Integer.parseInt(request.getParameter("claseinterfaceBuscar"));
   CtrlAsClaseInterface ctrl= new CtrlAsClaseInterface();
   AsClaseInterface asinterface = ctrl.verAsClaseInterface(claseinterface);
 %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ver As Clase interface </title>
</head>
<body>
<table border="1">
 <tr>
   <td>c_clase_interface</td>
   <td>c_clase</td>
   <td>c_interface</td>
   <td>Editar</td>
   <td>Eliminar</td>
 </tr> 
 <tbody>
 <!-- Lleno la tabla con la Variable Lista -->
 <% 
			out.print("<tr>");
			out.print("<td>"+asinterface.getC_clase_interface() +"</td>");
			out.print("<td>"+asinterface.getAsclase().getCClase()+"</td>");
            out.print("<td>"+asinterface.getAsinterface().getC_interface()+"</td>");
			out.print("<td><a href=/proyectoIGF1152015/AsClaseInterfaceActualizar.jsp?cinterfaceBuscar="+asinterface.getC_clase_interface() +">Editar</a></td>");
			out.print("<td><a href=/proyectoIGF1152015/AsClaseInterfaceEliminar.jsp?claseInterface="+asinterface.getC_clase_interface() +">Eliminar</a></td>");
				out.print("</tr>");
 %>
</tbody>
</table>

</body>
</html>