<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlTbTipoMetodo" %>
<%@ page import="sv.edu.ues.igf115.dominio.TbTipoMetodo" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DateFormat"%>
<%
	String cTipoMetodo=request.getParameter("cTipoMetodo");
	CtrlTbTipoMetodo ctrlTipoMetodo=new CtrlTbTipoMetodo();
	TbTipoMetodo tbTipoMetodo=ctrlTipoMetodo.verTbTipoMetodo(cTipoMetodo);
	DateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
	String fecha=formato.format(tbTipoMetodo.getFIngreso());
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

    <title>TbTipoMétodo Crear | Proyecto IGF115 2015</title>

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
		  <li class=active>Crear Tipo Metodo</a></li>
		</ol>
		
		<div class="page-header"><h3>Formulario de creación de Tipo de Método</h3></div>
		<div class="row">
		
		<div class="container col-xs-1 col-sm-4 col-md-4"></div>
		<div class="container col-xs-10 col-sm-4 col-md-4 form1">
			<form role="form" name="crearTbTipoMetodo" method="post" action="TbTipoMetodoActualizarEjecuta.jsp">
				<div class="form-group">
					<label for="cTipoMetodo">Correlativo tipo de metodo</label>
				 	<input type="text" class="form-control " name="cTipoMetodo" id="cTipoMetodo" value="<%=tbTipoMetodo.getcTipoMetodo()%>" disabled>
				</div>
				<div class="form-group">
				 	<input type="hidden" class="form-control " name="cTipoMetodo" id="cTipoMetodo" value="<%=tbTipoMetodo.getcTipoMetodo()%>">
				</div>
				<div class="form-group">
					<label for="dTipoMetodo">Descripción</label>
				 	<textarea class="form-control" name="dTipoMetodo" id="dTipoMetodo"><%=tbTipoMetodo.getDTipoMetodo()%></textarea>
				 </div>
				 <div class="form-group">
				 	<label for="fIngreso">Fecha de Ingreso</label>
						<input type="date" class="form-control" name="fIngreso" id="fIngreso" value="<%=fecha %>">
				</div>
				<input type="submit" class="btn btn-primary" value="Actualizar">
				
			</form>
		</div>
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