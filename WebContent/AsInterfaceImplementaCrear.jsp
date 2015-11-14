<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsInterface" %>
<%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>

    
<%
  CtrlAsInterface ctrl= new CtrlAsInterface();
  List<AsInterface> registros=ctrl.verTodasInterface();

  String mensaje;
  if(registros==null){
	  mensaje="No existen registros";
  }
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

        <!-- Page Content -->
		<div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <a href="#menu-toggle" id="menu-toggle"><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span></a>
						<!--Acá el contenido-->
					</div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

<!-- Content -->
		<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li class=active><a href="AsInterfaceImplementaCrear.html">Crear As Interface Implementa</a></li>
		</ol>
		
		<h3> Formulario para Crear un As Interface Implementa</h3>
		 <div class="row">
            
            <div class="container col-xs-1 col-sm-4 col-md-4"></div>

            <div class="container col-xs-10 col-sm-4 col-md-4 form1">
		<form name="crearAsInterfaceImplementa" method="POST" action="AsInterfaceImpCrear.jsp">
		<div class="form-group">
		c Interface: <input type="text" name="cInterface"> </br>
	    </div>
		<div class="form-group">
		Interface hijo:
		</div>
		<div class="form-group"> 
		<select name="InterfaceHijo"> 
			<option value="0" >Seleccione una Interface...</option></br>
			<% for (AsInterface registro :registros ){%> 
			<option value="<%= registro.getC_interface() %>"><%= registro.getD_interface() %></option><%} %></br>
			Interfaz Padre: <input type="select" name="InterfacePadre"> </br>
			<option value="0" >Seleccione una Interface...</option></br>
	    	<% for (AsInterface  registro:registros ){%> 
			<option value="<%= registro.getC_interface() %>"><%= registro.getD_interface() %></option><%} %></br>
		</select>
		</div>
		<div class="form-group">
        <input type="submit" value="Crear">
        </div>
        
        </form>
         </div>
            <div class="container col-xs-1 col-sm-4 col-md-4"></div>
        </div>
        <!-- fin --> 
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