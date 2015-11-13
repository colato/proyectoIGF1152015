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
<table border="1">
 <tr>
   <td>c_interface_Implementa</td>
   <td>Hijo</td>
   <td>Padre</td>
   <td>Actualizar</td>
   <td>Eliminar</td>
 </tr> 
 <tbody>
<!-- Lleno la tabla con la Variable Lista -->
 <% 
			out.print("<tr>");
			out.print("<td>"+asinterface.getC_interface_implementa() +"</td>");
			out.print("<td>"+asinterface.getC_interface_hijo().getC_interface()+"</td>");
            out.print("<td>"+asinterface.getC_interface_padre().getC_interface()+"</td>");
            out.print("<td><a href=/proyectoIGF1152015/AsInterfaceImplementaActualizar.jsp?cinterfaceBuscar="+asinterface.getC_interface_implementa()+">Editar</a></td>");
			out.print("<td><a href=/proyectoIGF1152015/AsInterfaceImplementaEliminar.jsp?cInterfaceimplementa="+asinterface.getC_interface_implementa()+">Eliminar</a></td>");
				out.print("</tr>");
 %>
</tbody>
</table>
   
 


</body>
</html>