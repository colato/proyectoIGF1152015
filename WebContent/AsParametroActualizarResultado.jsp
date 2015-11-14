<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsParametro" %>
<%@ page import="sv.edu.ues.igf115.dominio.AsParametroPKDetalle" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%
	String cClaseS=request.getParameter("cClase");
	Integer cClase=Integer.parseInt(cClaseS);
	String cMetodoS=request.getParameter("cMetodo");
	Integer cMetodo=Integer.parseInt(cMetodoS);
	String cParametroS=request.getParameter("cParametro");
	Integer cParametro=Integer.parseInt(cParametroS);
	
	AsParametroPKDetalle llaveCompuesta=new AsParametroPKDetalle();
	llaveCompuesta.setcClase(cClase);
	llaveCompuesta.setcMetodo(cMetodo);
	llaveCompuesta.setcParametro(cParametro);
	
	String dParametro=request.getParameter("dParametro");
	String dTipoParametro=request.getParameter("dTipoParametro");
	String cUsuario=request.getParameter("cUsuario");
	
	String fIngresoS=request.getParameter("fIngreso");
	SimpleDateFormat formato = new SimpleDateFormat("yyyy-mm-dd");
    Date fIngreso = formato.parse(fIngresoS);
    
    CtrlAsParametro ctrlAsParametro=new CtrlAsParametro();
    boolean resultado=ctrlAsParametro.actualizarAsParametro(llaveCompuesta, dParametro, dTipoParametro, cUsuario, fIngreso);
    String mensaje;
    String clase;
    if(resultado){
    	mensaje="Registro actualizado con éxito";
    	clase="alert alert-success";
    }
    else{
    	mensaje="Falló la actualización del registro.";
    	clase="alert alert-danger";
    }
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Método Crear Resultado| Proyecto IGF115 2015</title>

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
		  <li><a href="AsParametroIndex.jsp">Parámetros</a></li>
		  <li><a href="AsParametroCrear.jsp">Crear Parámetro</a></li>
		  <li class="active">Resultado</li>
		</ol>
		<h3 class="page-header">Resultado:</h3>
		<div class="<%=clase %> alert-dismissible" role="alert"><%=mensaje %>
		
		
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