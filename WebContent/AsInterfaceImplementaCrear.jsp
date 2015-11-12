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
<title>AS interface Implementa Crear</title>

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
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Menú
                    </a>
                </li>
                <li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Atributo <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="AsAtributoCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="AsAtributoActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="AsAtributoConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="AsAtributoEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Clase <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="AsClaseCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="AsClaseActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="AsClaseConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="AsClaseEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Clase Interface <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="AsClaseInterfaceCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="AsClaseInterfaceActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="AsClaseInterfaceConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="AsClaseInterfaceEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Interface <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="AsInterfaceCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="AsInterfaceActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="AsInterfaceConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="AsInterfaceEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Interface Implementa <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="AsInterfaceImplementaCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="AsInterfaceImplementaActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="AsInterfaceConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="AsInterfaceEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Método <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="AsMetodoCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="AsMetodoActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="AsMetodoConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="AsMetodoEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Observación <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="AsObservacionCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="AsObservacionActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="AsObservacionConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="AsObservacionEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Parámetro <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="AsParametroCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="AsParametroActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="AsParametroConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="AsParametroEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Aplicativo <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="TbAplicativoCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="TbAplicativoActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="TbAplicativoConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="TbAplicativoEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Tipo Atributo <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="TbTipoAtributoCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="TbTipoAtributoActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="TbTipoAtributoConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="TbTipoAtributoEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Tipo Clase <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="TbTipoClaseCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="TbTipoClaseActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="TbTipoClaseConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="TbTipoClaseEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
				<li role="presentation" class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">
					  Tipo Método <span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="TbTipoMetodoCrear.html">  <span class="glyphicon glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
								Crear
							</a>
						</li>
						<li><a href="TbTipoMetodoActualizar.html">  <span class="glyphicon glyphicon glyphicon-refresh" aria-hidden="true"></span>
								Actualizar
							</a>
						</li>
						<li><a href="TbTipoMetodoConsultar.html">  <span class="glyphicon glyphicon glyphicon-search" aria-hidden="true"></span>
								Consultar
							</a>
						</li>
						<li><a href="TbTipoMetodoEliminar.html">  <span class="glyphicon glyphicon glyphicon-remove-sign" aria-hidden="true"></span>
								Eliminar
							</a>
						</li>
					</ul>
				</li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

<!-- Content -->
		<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li class=active><a href="AsInterfaceImplementaCrear.html">Crear As Interface Implementa</a></li>
		</ol>
		
		<h3> Formulario para Crear un As Interface Implementa</h3>
		<form name="crearAsInterfaceImplementa" method="POST" action="AsInterfaceImpCrear.jsp">
		c Interface: <input type="text" name="cInterface"> </br>
		Interface hijo: 
		<select name="InterfaceHijo"> 
			<option value="0" >Seleccione una Interface...</option></br>
			<% for (AsInterface registro :registros ){%> 
			<option value="<%= registro.getC_interface() %>"><%= registro.getD_interface() %></option><%} %></br>
			Interfaz Padre: <input type="select" name="InterfacePadre"> </br>
			<option value="0" >Seleccione una Interface...</option></br>
	    	<% for (AsInterface  registro:registros ){%> 
			<option value="<%= registro.getC_interface() %>"><%= registro.getD_interface() %></option><%} %></br>
		</input>
        <input type="submit" value="Crear">
        </form>
        <!-- fin --> 

</body>
</html>