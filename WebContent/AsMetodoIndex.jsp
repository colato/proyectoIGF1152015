<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsMetodo" %>
<%@ page import="sv.edu.ues.igf115.dominio.AsMetodo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DateFormat"%>

<%  CtrlAsMetodo ctrlAsMetodo=new CtrlAsMetodo();
	List<AsMetodo> listaAsMetodo=ctrlAsMetodo.daListaAsMetodos();
	DateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
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

    <title>Métodos | Proyecto IGF115 2015</title>

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
					<a href="TbTipoMetodoIndex.jsp">
					  Tipo Método
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
						<!--AcÃ¡ el contenido-->
					</div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
		<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li class="active">Métodos</li>
		</ol>
		<div class="page-header"><h3>Métodos</h3>
		<a class="btn btn-primary" href="AsMetodoCrear.jsp" role="submit">Crear nuevo tipo</a>
		</div>
		<div>
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th>cClase</th>
				        <th>cMetodo</th>
				        <th>dMetodo</th>
				        <th>Ver</th>
				        <th>Editar</th>
				        <th>Eliminar</th>
				      </tr>
				    </thead>
				    <tbody>
				<% 
					for (AsMetodo temp : listaAsMetodo) {
						out.print("<tr>");
						out.print("<td>"+temp.getLlaveCompuesta().getcClase()+"</td>");
						out.print("<td>"+temp.getLlaveCompuesta().getcMetodo()+"</td>");
						out.print("<td>"+temp.getdMetodo()+"</td>");
						out.print("<td><a href=/proyectoIGF1152015/TbTipoMetodoConsultar.jsp?cTipoMetodo="+temp.getcTipoMetodo()+">Ver</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/TbTipoMetodoActualizar.jsp?cTipoMetodo="+temp.getcTipoMetodo()+">Editar</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/TbTipoMetodoEliminar.jsp?cTipoMetodo="+temp.getcTipoMetodo()+">Eliminar</a></td>");
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
</html>