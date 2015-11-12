<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%
     int claseinterface= Integer.parseInt(request.getParameter("claseInterface"));
     int cInterface= Integer.parseInt(request.getParameter("cInterface"));
     int cClase = Integer.parseInt(request.getParameter("cClase"));
     
     CtrlAsClaseInterface ctrl= new CtrlAsClaseInterface();
     boolean resultado=ctrl.crearAsClaseInterface(claseinterface, cClase,cInterface);
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
 <title>AsClaseInterface Crear Resultado</title>
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
		  
		  <li><a href="AsClaseInterfaceCrear.html">Crear As Clase Interface</a></li>
		  <li class="active">Resultado</li>
		</ol>
		<h3>Resultado:</h3>
		<%=mensaje %>
		
		
    
    <!--fin -->
</body>
</html>