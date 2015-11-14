<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="java.util.*" %>
<%

   int cinterface = Integer.parseInt(request.getParameter("cinterfaceBuscar"));
   CtrlAsClaseInterface ctrl= new CtrlAsClaseInterface();
   AsClaseInterface asinterface = ctrl.verAsClaseInterface(cinterface);
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
		  <li class=active><a href="AsClaseInterfaceConsultar.jsp">Actualizar Clase Interface</a></li>
		</ol>
		
		 <h3 class="page-header">Registrar Clase Interface</h3>
        <div class="row">
            
            <div class="container col-xs-1 col-sm-4 col-md-4"></div>

            <div class="container col-xs-10 col-sm-4 col-md-4 form1">

<form name="ActualizarInterface" method="POST" action="AsClaseInterfaceCrear.jsp">

<!-- Lleno los campos correspondientes -->
  <div class="form-group">
   clase interface:<input type="text" name="claseInterface"><%=asinterface.getC_clase_interface() %> 
   </div>
   <div class="form-group">
   c_clase:<input type="text" name="cClase"><%=asinterface.getAsclase().getCClase() %>
   </div>
   <div class="form-group">
   c_interface:<input type="text" name="cInterface"><%=asinterface.getAsinterface().getC_interface() %>
   </div>
   <div class="form-group">
   <input type="submit" value="Actualizar"> 
   </div>
 
</form>

 </div>
            <div class="container col-xs-1 col-sm-4 col-md-4"></div>
        </div>
		
		
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
</body>
</html>