<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.CtrlAsMetodo" %>
<%@ page import="sv.edu.ues.igf115.dominio.AsMetodoPKDetalle" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%
	Integer cMetodo=Integer.parseInt(request.getParameter("cMetodo")); 
	Integer cClase= Integer.parseInt(request.getParameter("cClase"));

	String	dMetodo=request.getParameter("dMetodo");
	String dTipoRetorno=request.getParameter("dTipoRetorno");
	Integer nParametros=Integer.parseInt(request.getParameter("nParametros"));
	String cTipoMetodo=request.getParameter("cTipoMetodo");
	String cUsuario=request.getParameter("cUsuario");
	
	String	bActivoS=request.getParameter("bActivo");
	Integer bActivo;
	if(bActivoS.equals("on"))
		bActivo=1;
	else
		bActivo=0;
	
	String fIngresoS=request.getParameter("fIngreso");
	SimpleDateFormat formato = new SimpleDateFormat("yyyy-mm-dd");
    Date fIngreso = formato.parse(fIngresoS);
    
	AsMetodoPKDetalle llaveCompuesta=new AsMetodoPKDetalle();
	llaveCompuesta.setcClase(cClase);
	llaveCompuesta.setcMetodo(cMetodo);
	
	CtrlAsMetodo ctrlAsMetodo=new CtrlAsMetodo();
	boolean resultado=ctrlAsMetodo.actualizarAsMetodo(llaveCompuesta, dMetodo, dTipoRetorno, cUsuario, fIngreso, bActivo, nParametros,cTipoMetodo);
	 String mensaje;
	    String clase;
	    if(resultado){
	    	mensaje="Registro actualizado con �xito";
	    	clase="alert alert-success";
	    }
	    else{
	    	mensaje="Fall� la actualizaci�n del registro.";
	    	clase="alert alert-danger";
	    }
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

    <title>M�todo Actualizar Resultado| Proyecto IGF115 2015</title>

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
						<!--Acá el contenido-->
					</div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
		<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li><a href="AsMetodoIndex.jsp">M�todos</a></li>
		  <li><a href="AsMetodoActualizar.jsp">Actualizar Metodo</a></li>
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