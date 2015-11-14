<%@page import="javax.persistence.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsAtributo" %>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsMetodo" %>
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
		<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li class="active">As Atributos</li>
		</ol>
		<div class="page-header"><h3>As Atributos</h3>
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
						out.print("<td><a href=/proyectoIGF1152015/AsAtributoConsultar.jsp?cClase="+temp.getLlaveCompuesta().getcClase()+"&cAtributo="+temp.getLlaveCompuesta().getcAtributo()+">Ver</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsAtributoActualizar.jsp?cClase="+temp.getLlaveCompuesta().getcClase()+"&cAtributo="+temp.getLlaveCompuesta().getcAtributo()+">Editar</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsAtributoEliminar.jsp?cClase="+temp.getLlaveCompuesta().getcClase()+"&cAtributo="+temp.getLlaveCompuesta().getcAtributo()+">Eliminar</a></td>");
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