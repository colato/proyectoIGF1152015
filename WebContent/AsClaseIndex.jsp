<%@page import="javax.persistence.TemporalType"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsClase" %>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsMetodo" %>
<%@ page import="sv.edu.ues.igf115.dominio.AsClase" %>
<%@ page import="java.util.*" %>
<%
	CtrlAsClase ctrlAsClase = new CtrlAsClase();
	List<AsClase> listaAsClase = ctrlAsClase.daClases();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>As Clase Registros | Steven | Proyecto IGF115 2015</title>

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
<!-- /#page-content-wrapper -->
		<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li class="active">As Clase </li>
		</ol>
		<div class="page-header"><h3>As Clase</h3>
		<a class="btn btn-primary" href="AsClaseConsultar.html" role="submit">Consultar AsClase</a>
		</div>
		<div>
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th>cClase</th>
				        <th>dClase</th>
				        <th>cTipoClase</th>
				        <th>cUsario</th>
				        <th>fIngreso</th>
				        <th>cAplicativo</th>
				        <th>cClasePadre</th>
				        <th>Detalles</th>
				        <th>Editar</th>
				        <th>Eliminar</th>
				      </tr>
				    </thead>
				    <tbody>
				<% 
					for (AsClase asclase  : listaAsClase	) {
						out.print("<tr>");
						out.print("<td>"+asclase.getCClase()+"</td>");
						out.print("<td>"+asclase.getDClase()+"</td>");
						out.print("<td>"+asclase.getTbTipoClase().getcTipoClase()+"</td>");
						out.print("<td>"+asclase.getCUsuario()+"</td>");
						out.print("<td>"+String.valueOf(asclase.getFIngreso())+"</td>");
						out.print("<td>"+asclase.getTbAplicativo().getcAplicativo() +"</td>");
						if(asclase.getAsClasep()!=null){
							out.print("<td>"+asclase.getAsClasep().getAsClasep() +"</td>");
						}
						else{
						out.print("<td></td>");}
						out.print("<td><a href=/proyectoIGF1152015/AsClaseConsultar.jsp?cClase="+asclase.getCClase()+">Ver</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsClaseActualizar2.jsp?dClase="+asclase.getCClase()+">Editar</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsClaseEliminar.jsp?cClase="+asclase.getCClase()+">Eliminar</a></td>");
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