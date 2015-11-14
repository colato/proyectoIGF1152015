<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlTbTipoMetodo" %>
<%@ page import="sv.edu.ues.igf115.dominio.TbTipoMetodo" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DateFormat"%>
<%
	String cTipoMetodo=request.getParameter("cTipoMetodo");
	CtrlTbTipoMetodo ctrlTipoMetodo=new CtrlTbTipoMetodo();
	TbTipoMetodo tbTipoMetodo=ctrlTipoMetodo.verTbTipoMetodo(cTipoMetodo);
	DateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
	String mensaje;
	if(tbTipoMetodo!=null){
		mensaje="c_tipo_metodo: "+tbTipoMetodo.getcTipoMetodo()+"<br>"+
		        "d_tipo_metodo: "+tbTipoMetodo.getDTipoMetodo()+"<br>"+
				"f_ingreso: "+tbTipoMetodo.getFIngreso().toString();
	}
	else
		mensaje="No se encontró el registro.";
	
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
		  <li><a href="TbTipoMetodoIndex.jsp">Tipos de Métodos</a></li>
		  <li class=active>Resultado</a></li>
		</ol>
		<h3 class="page-header">Resultado:</h3>
		<div>
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th>cTipoMetodo</th>
				        <th>DTipoMetodo</th>
				        <th>FIngreso</th>
				        <th>Editar</th>
				        <th>Eliminar</th>
				      </tr>
				    </thead>
				    <tbody>
				<% 
						out.print("<tr>");
						out.print("<td>"+tbTipoMetodo.getcTipoMetodo()+"</td>");
						out.print("<td>"+tbTipoMetodo.getDTipoMetodo()+"</td>");
						out.print("<td>"+formato.format(tbTipoMetodo.getFIngreso())+"</td>");
						out.print("<td><a href=/proyectoIGF1152015/TbTipoMetodoActualizar.jsp?cTipoMetodo="+tbTipoMetodo.getcTipoMetodo()+">Editar</a></td>");
						out.print("<td><a href=/proyectoIGF1152015/TbTipoMetodoEliminar.jsp?cTipoMetodo="+tbTipoMetodo.getcTipoMetodo()+">Eliminar</a></td>");
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