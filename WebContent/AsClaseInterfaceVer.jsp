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
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Proyecto IGF115 2015 | Grupo 2</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <%@include file = "Menu.jsp"%>
        </div>
        <!-- /#sidebar-wrapper -->
	<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li class=active><a href="AsClaseInterfaceConsultar.jsp">As clase interface Ver</a></li>
		</ol>
		<div class="row">
            
            <div class="container col-xs-1 col-sm-4 col-md-4"></div>

            <div class="container col-xs-10 col-sm-4 col-md-4 form1">
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