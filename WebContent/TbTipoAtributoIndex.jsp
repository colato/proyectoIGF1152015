<%@page import="javax.persistence.TemporalType"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlTbTipoAtributo" %>
<%@ page import="sv.edu.ues.igf115.dominio.TbTipoAtributo" %>
<%@ page import="java.util.*" %>
<%
	CtrlTbTipoAtributo ctrlTbTipoAtributo = new CtrlTbTipoAtributo();
	List<TbTipoAtributo> listaTbTipoAtributo = ctrlTbTipoAtributo.daTbTipoAtributos();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tb Tipo Atributo Registros | Colato | Proyecto IGF115 2015</title>

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
		  <li class="active">Tb Tipo Atributo</li>
		</ol>
		<div class="page-header"><h3>Tb Tipo Atributo</h3>
		<a class="btn btn-primary" href="TbTipoAtributoCrear.html" role="submit">Crear nuevo TbTipoAtributo</a>
		</div>
		<div>
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th>cTipoAtributo</th>
				        <th>dTipoAtributo</th>
				        <th>fIngreso</th>
				        <th>Detalles</th>
				        <th>Editar</th>
				        <th>Eliminar</th>
				      </tr>
				    </thead>
				    <tbody>
				<% 
					for (TbTipoAtributo temp : listaTbTipoAtributo) {
						out.print("<tr>");
						out.print("<td>"+temp.getcTipoAtributo()+"</td>");
						out.print("<td>"+temp.getdTipoAtributo()+"</td>");
						out.print("<td>"+temp.getfIngreso()+"</td>");
						out.print("<td><a href=/proyectoIGF1152015/TbTipoAtributoConsultar.jsp?cTipoAtributo="+temp.getcTipoAtributo()+">Ver</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/TbTipoAtributoActualizar.jsp?cTipoAtributo="+temp.getcTipoAtributo()+">Editar</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/TbTipoAtributoEliminar.jsp?cTipoAtributo="+temp.getcTipoAtributo()+">Eliminar</a></td>");
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