<%@page import="javax.persistence.TemporalType"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsAtributo" %>
<%@ page import="sv.edu.ues.igf115.dominio.AsAtributo" %>
<%@ page import="java.util.*" %>
<%
	CtrlAsAtributo ctrlAsAtributo = new CtrlAsAtributo();
	List<AsAtributo> listaAsAtributo = ctrlAsAtributo.daAsAtributos();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>As Atributo Registros | Colato | Proyecto IGF115 2015</title>

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
                        Men�
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
					  M�todo <span class="caret"></span>
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
					  Observaci�n <span class="caret"></span>
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
					  Par�metro <span class="caret"></span>
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
					<a href="TbTipoMetodoIndex.jsp">
					  Tipo M�todo
					</a>
				</li>
            </ul>
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
		<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li class="active">As Atributos</li>
		</ol>
		<div class="page-header"><h3>As M�todos</h3>
		<a class="btn btn-primary" href="AsAtributoCrear.html" role="submit">Crear nuevo AsAtributo</a>
		</div>
		<div>
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th>cClase</th>
				        <th>cAtributo</th>
				        <th>cMetodo</th>
				        <th>dAtributo</th>
				        <th>dTipoDatoAtributo</th>
				        <th>cUsuario</th>
				        <th>fIngreso</th>
				        <th>cTipoAtributo</th>
				        <th>Detalles</th>
				        <th>Editar</th>
				        <th>Eliminar</th>
				      </tr>
				    </thead>
				    <tbody>
				<% 
					for (AsAtributo temp : listaAsAtributo) {
						out.print("<tr>");
						out.print("<td>"+temp.getLlaveCompuesta().getcClase()+"</td>");
						out.print("<td>"+temp.getLlaveCompuesta().getcAtributo()+"</td>");
						out.print("<td>"+temp.getcMetodo()+"</td>");
						out.print("<td>"+temp.getdAtributo()+"</td>");
						out.print("<td>"+temp.getdTipoDatoAtributo()+"</td>");
						out.print("<td>"+temp.getcUsuario()+"</td>");
						out.print("<td>"+temp.getfIngreso()+"</td>");
						out.print("<td>"+temp.getcTipoAtributo()+"</td>");
						out.print("<td><a href=/proyectoIGF1152015/AsAtributoConsultar.jsp?cTipoMetodo="+temp.getLlaveCompuesta()+">Ver</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsAtributoActualizar.jsp?cTipoMetodo="+temp.getLlaveCompuesta()+">Editar</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsAtributoEliminar.jsp?cTipoMetodo="+temp.getLlaveCompuesta()+">Eliminar</a></td>");
						out.print("</tr>");
					}
				%>
				</tbody>
				</table>
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