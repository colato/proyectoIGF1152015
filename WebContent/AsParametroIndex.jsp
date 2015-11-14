<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsParametro" %>
<%@ page import="sv.edu.ues.igf115.dominio.AsParametro" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DateFormat"%>

<%  CtrlAsParametro ctrlAsParametro=new CtrlAsParametro();
	List<AsParametro> listaAsParametro=ctrlAsParametro.daListaAsParametro();
	//DateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
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
            <%@include file = "Menu.jsp"%>
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
		  <li class="active">Parametros</li>
		</ol>
		<div class="page-header"><h3>Parametros</h3>
		<a class="btn btn-primary" href="AsParametroCrear.jsp" role="submit">Crear nuevo</a>
		</div>
		<div>
				<table class="table table-striped">
					<thead>
				      <tr>
				      	<th>cParametro</th>
				       	<th>cMetodo</th>
				        <th>Clase</th>
				        <th>Parametro</th>
				        <th>dTipoParametro</th>
				        <th>cUsuario</th>
				        <th>fIngreso</th>
				        <th>Editar</th>
				        <th>Eliminar</th>
				      </tr>
				    </thead>
				    <tbody>
				<% 
					for (AsParametro temp : listaAsParametro) {
						out.print("<tr>");
						out.print("<td>"+temp.getLlaveCompuesta().getcParametro()+"</td>");
						out.print("<td>"+temp.getLlaveCompuesta().getcClase()+"</td>");
						out.print("<td>"+temp.getLlaveCompuesta().getcClase()+"</td>");
						out.print("<td>"+temp.getdParametro()+"</td>");
						out.print("<td>"+temp.getdTipoParametro()+"</td>");
						out.print("<td>"+temp.getcUsuario()+"</td>");
						out.print("<td>"+temp.getfIngreso()+"</td>");
						out.print("<td><a href=/proyectoIGF1152015/AsParametroActualizar.jsp?cMetodo="+temp.getLlaveCompuesta().getcMetodo()+"&cClase="+temp.getLlaveCompuesta().getcClase()+"&cParametro="+temp.getLlaveCompuesta().getcParametro()+">Editar</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/AsParametroEliminar.jsp?cMetodo="+temp.getLlaveCompuesta().getcMetodo()+"&cClase="+temp.getLlaveCompuesta().getcClase()+"&cParametro="+temp.getLlaveCompuesta().getcParametro()+">Eliminar</a></td>");
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