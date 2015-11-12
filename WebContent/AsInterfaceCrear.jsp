<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%
     int cInterface= Integer.parseInt(request.getParameter("cInterface"));
     String dInterface= request.getParameter("dInterface");
     String cUsuario = request.getParameter("cUsuario");
     String fecha= request.getParameter("fecha");
     SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
     Date fIngreso = formato.parse(fecha);
     
     CtrlAsInterface ctrl= new CtrlAsInterface();
     boolean resultado=ctrl.crearAsInterface(cInterface, dInterface, cUsuario, fIngreso);
    
     String mensaje;
     if(resultado)
    	 mensaje="Registro creado";
     else
    	 mensaje="Error al crear el registro";
     
     
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>AsInterface Crear Resultado</title>
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
<!--Content-->
<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li><a href="AsInterfaceCrear.html">Crear As Interface</a></li>
		  <li class="active">Resultado</li>
		</ol>
		<h3>Resultado:</h3>
		<%=mensaje %>
		
		
    
    <!--fin -->

</body>
</html>