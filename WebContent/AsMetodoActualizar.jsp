<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsMetodo" %>
<%@ page import="sv.edu.ues.igf115.dominio.AsMetodo" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="sv.edu.ues.igf115.dominio.AsMetodoPKDetalle" %>
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

	Integer cMetodo=Integer.parseInt(request.getParameter("cMetodo"));
	Integer cClase=Integer.parseInt(request.getParameter("cClase"));
	AsMetodoPKDetalle llaveCompuesta=new AsMetodoPKDetalle();
	llaveCompuesta.setcClase(cClase);
	llaveCompuesta.setcMetodo(cMetodo);
	
	CtrlAsMetodo ctrlAsMetodo=new CtrlAsMetodo();
	AsMetodo asMetodo=ctrlAsMetodo.verAsMetodo(llaveCompuesta);	
	DateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
	String fecha=formato.format(asMetodo.getfIngreso());
%>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Actualizar Método | Proyecto IGF115 2015</title>

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
		  <li><a href="AsMetodoIndex.jsp">Métodos</a></li>
		  <li class=active>Actualizar Metodo</a></li>
		</ol>
		
		<div class="page-header"><h3>Formulario de actualización de Método</h3></div>
		<div class="row">
		
		<div class="container col-xs-1 col-sm-4 col-md-4">
			<form role="form" name="crearAsClase" method="get" action="AsMetodoCrearResultado.jsp">
				
				<div class="form-group">
					<label for="cMetodo">Correlativo de Método</label>
				 	<input type="number" id="cMetodo" class="form-control" name="cMetodo" value="<%=asMetodo.getLlaveCompuesta().getcMetodo() %>" disabled>
				</div>
				<div class="form-group">
				 	<input type="number" id="cMetodo" class="hidden" name="cMetodo" value="<%=asMetodo.getLlaveCompuesta().getcMetodo() %>" disabled>
				</div>
				<div class="form-group">
					<label for="dMetodo">Descripción de Método</label>
				 	<textarea type="text" id="dMetodo" maxlength="50" class="form-control" name="dMetodo"><%=asMetodo.getdMetodo()%></textarea>
				</div>

				<div class="form-group">
					<label for="dTipoRetorno">Descripción de tipo de retorno</label>
				 	<textarea class="form-control" maxlength="50" name="dTipoRetorno" id="dTipoRetorno"><%=asMetodo.getdTipoRetorno()%></textarea>
				 </div>
				<div class="form-group">
				 	<label for="cUsuario">Usuario</label>
						<input type="text" class="form-control" maxlength="30" name="cUsuario" id="cUsuario" value="<%=asMetodo.getcUsuario()%>">
				</div>
		</div>
		<div class="container col-xs-10 col-sm-4 col-md-4 form1">
			
				 <div class="form-group">
				 	<label for="fIngreso">Fecha de Ingreso</label>
						<input type="date" class="form-control" name="fIngreso" id="fIngreso" value="<%=fecha %>">
				</div>
				<div class="form-group">
				 	<label for="nParametros">Número de parámetros</label>
						<input type="number" class="form-control"  name="nParametros" id="nParametros" value="<%=asMetodo.getnParametros() %>">
				</div>
				<div class="form-group">
					<label for="cTipoMetodo">Tipo de Método</label>
				 	<select class="form-control" name="cTipoMetodo">
					  <%for (TbTipoMetodo temp : listaTbTipoMetodo){
						  if(temp.getcTipoMetodo().equals(asMetodo.getcTipoMetodo().getcTipoMetodo()))
							  	out.print("<option value="+temp.getcTipoMetodo()+" selected>"+temp.getDTipoMetodo()+"</option>");
						  else
						  		out.print("<option value="+temp.getcTipoMetodo()+">"+temp.getDTipoMetodo()+"</option>");
					  }%>
					</select>
				</div>
				<div class="form-group">
					<label for="cClase">Correlativo de Clase</label>
				 	<select class="form-control" name="cClase">
					  <%for (AsClase temp : listaClases){
						  if(temp.getCClase()==asMetodo.getcClaseRelacion().getCClase())
							  	out.print("<option value="+temp.getCClase()+" selected>"+temp.getDClase()+"</option>"); 
						  else
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