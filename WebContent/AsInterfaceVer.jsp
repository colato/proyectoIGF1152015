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
<title>Ver As interface </title>
</head>
<body>
<table border="1">
 <tr>
   <td>c_interface</td>
   <td>d_interface</td>
   <td>c_usuario</td>
   <td>f_ingreso</td>
   <td>Editar</td>
   <td>Eliminar</td>
 </tr> 
 <tbody>
 <!-- Lleno la tabla con la Variable Lista -->
 <% 
			out.print("<tr>");
			out.print("<td>"+asinterface.getC_interface() +"</td>");
			out.print("<td>"+asinterface.getD_interface()+"</td>");
            out.print("<td>"+asinterface.getC_usuario()+"</td>");
            out.print("<td>"+asinterface.getF_ingreso()+"</td>");
			out.print("<td><a href=/proyectoIGF1152015/AsInterfaceActualizar.jsp?cinterfaceBuscar="+asinterface.getC_interface()+">Editar</a></td>");
			out.print("<td><a href=/proyectoIGF1152015/AsInterfaceEliminar.jsp?cInterface="+asinterface.getC_interface()+">Eliminar</a></td>");
			out.print("</tr>");
 %>
</tbody>
</table>

</body>
</html>