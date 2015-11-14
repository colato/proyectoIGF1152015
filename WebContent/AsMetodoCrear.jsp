<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsClase" %>
<%@ page import="sv.edu.ues.igf115.dominio.AsClase" %>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlTbTipoMetodo" %>
<%@ page import="sv.edu.ues.igf115.dominio.TbTipoMetodo" %>
<%@ page import="java.util.List" %>
<% 
	CtrlAsClase ctrlAsClase=new CtrlAsClase();
	List<AsClase> listaClases=ctrlAsClase.daClases();
	
	CtrlTbTipoMetodo ctrlTbTipoMetodo=new CtrlTbTipoMetodo();
	List<TbTipoMetodo> listaTbTipoMetodo = ctrlTbTipoMetodo.daListaTbTipoMetodo();
%>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Crear Método | Proyecto IGF115 2015</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    

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
		  <li class=active>Crear Metodo</a></li>
		</ol>
		
		<div class="page-header"><h3>Formulario de creación de Método</h3></div>
		<div class="row">
		
		<div class="container col-xs-1 col-sm-4 col-md-4">
			<form role="form" name="crearAsClase" method="get" action="AsMetodoCrearResultado.jsp">
				
				<div class="form-group">
					<label for="cMetodo">Correlativo de Método</label>
				 	<input type="number" id="cMetodo" class="form-control" name="cMetodo">
				</div>
				<div class="form-group">
					<label for="dMetodo">Descripción de Método</label>
				 	<textarea type="text" id="dMetodo" maxlength="50" class="form-control" name="dMetodo"></textarea>
				</div>

				<div class="form-group">
					<label for="dTipoRetorno">Descripción de tipo de retorno</label>
				 	<textarea class="form-control" maxlength="50" name="dTipoRetorno" id="dTipoRetorno"></textarea>
				 </div>
				<div class="form-group">
				 	<label for="cUsuario">Usuario</label>
						<input type="text" class="form-control" maxlength="30" name="cUsuario" id="cUsuario">
				</div>
		</div>
		<div class="container col-xs-10 col-sm-4 col-md-4 form1">
			
				 <div class="form-group">
				 	<label for="fIngreso">Fecha de Ingreso</label>
						<input type="date" class="form-control" name="fIngreso" id="fIngreso">
				</div>
				<div class="form-group">
				 	<label for="nParametros">Número de parámetros</label>
						<input type="number" class="form-control"  name="nParametros" id="nParametros">
				</div>
				<div class="form-group">
					<label for="cTipoMetodo">Tipo de Método</label>
				 	<select class="form-control" name="cTipoMetodo">
					  <%for (TbTipoMetodo temp : listaTbTipoMetodo){
						  out.print("<option value="+temp.getcTipoMetodo()+">"+temp.getDTipoMetodo()+"</option>");
					  }%>
					</select>
				</div>
				<div class="form-group">
					<label for="cClase">Correlativo de Clase</label>
				 	<select class="form-control" name="cClase">
					  <%for (AsClase temp : listaClases){
						  out.print("<option value="+temp.getCClase()+">"+temp.getDClase()+"</option>");
					  }%>
					</select>
				</div>
				<div class="form-group">
				 	<label for="bActivo">Activo</label>
						<input type="checkbox" name="bActivo" id="bActivo">
				</div>
				<input type="submit" class="btn btn-primary" value="Crear">
				
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