<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsMetodo" %>
<%@ page import="sv.edu.ues.igf115.dominio.AsMetodo" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="sv.edu.ues.igf115.dominio.AsMetodoPKDetalle" %>
<%
	Integer cMetodo=Integer.parseInt(request.getParameter("cMetodo"));
	Integer cClase=Integer.parseInt(request.getParameter("cClase"));
	AsMetodoPKDetalle llaveCompuesta=new AsMetodoPKDetalle();
	llaveCompuesta.setcClase(cClase);
	llaveCompuesta.setcMetodo(cMetodo);
	
	CtrlAsMetodo ctrlAsMetodo=new CtrlAsMetodo();
	AsMetodo asMetodo=ctrlAsMetodo.verAsMetodo(llaveCompuesta);	
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

    <title>TbTipoMétodo Consultar Resultado | Proyecto IGF115 2015</title>

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
						<!--AcÃ¡ el contenido-->
					</div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
		<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li><a href="AsMetodoIndex.jsp">Métodos</a></li>
		  <li class=active>Resultado</a></li>
		</ol>
		<h3 class="page-header">Resultado:</h3>
		<div>
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th>cMetodo</th>
				        <th>dMetodo</th>
				        <th>dTipoRetorno</th>
				        <th>cUsuario</th>
				        <th>fIngreso</th>
				        <th>nParametros</th>
				        <th>Clase</th>
				        <th>Tipo</th>
				      </tr>
				    </thead>
				    <tbody>
				<% 
						out.print("<tr>");
						out.print("<td>"+asMetodo.getLlaveCompuesta().getcMetodo()+"</td>");
						out.print("<td>"+asMetodo.getdMetodo()+"</td>");
						out.print("<td>"+asMetodo.getdTipoRetorno()+"</td>");
						out.print("<td>"+asMetodo.getcUsuario()+"</td>");
						out.print("<td>"+asMetodo.getfIngreso()+"</td>");
						out.print("<td>"+asMetodo.getnParametros()+"</td>");
						out.print("<td>"+asMetodo.getcClaseRelacion().getDClase()+"</td>");
						out.print("<td>"+asMetodo.getcTipoMetodo().getDTipoMetodo()+"</td>");
						out.print("</tr>");
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