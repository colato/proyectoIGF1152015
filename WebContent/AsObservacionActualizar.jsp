<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="sv.edu.ues.igf115.dao.*" %>
    <%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	int cObservacion = Integer.parseInt(request.getParameter("cObservacion"));
	String dObservacion = request.getParameter("dObservacion");
	String cUsuario = request.getParameter("cUsuario");
	String fIngresoString = request.getParameter("fIngreso");
	SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
    Date fIngreso = formato.parse(fIngresoString);
    int bActivo = Integer.parseInt(request.getParameter("bActivo"));
    int  cAtributo = Integer.parseInt(request.getParameter("cAtributo"));
    int cClase = Integer.parseInt(request.getParameter("cClase"));
    int cParametro = Integer.parseInt(request.getParameter("cParametro"));
    int cMetodo = Integer.parseInt(request.getParameter("cMetodo"));
    AsParametroPKDetalle asParametroPK = new AsParametroPKDetalle();
    asParametroPK.setcClase(cClase);
    asParametroPK.setcMetodo(cMetodo);
    asParametroPK.setcParametro(cParametro);
    CtrlAsParametro ctrlAsParametro = new CtrlAsParametro();
    AsParametro asParametro = ctrlAsParametro.verAsParametro(asParametroPK);
    AsAtributoPKDetalle asAtributoPK = new AsAtributoPKDetalle();
    asAtributoPK.setcAtributo(cAtributo);
    asAtributoPK.setcClase(cClase);
    CtrlAsAtributo ctrlAsAtributo = new CtrlAsAtributo();
    AsAtributo asAtributo = ctrlAsAtributo.daAsAtributoById(asAtributoPK);
    AsMetodoPKDetalle asMetodoPK = new AsMetodoPKDetalle();
    asMetodoPK.setcClase(cClase);
    asMetodoPK.setcMetodo(cMetodo);
    CtrlAsMetodo ctrlAsMetodo = new CtrlAsMetodo();
    AsMetodo asMetodo = ctrlAsMetodo.verAsMetodo(asMetodoPK);
    CtrlAsClase ctrlAsClase = new CtrlAsClase();
    AsClase asClase = ctrlAsClase.daAsClaseById(cClase);
    CtrlAsObservacion ctrlAsObservacion = new CtrlAsObservacion();
    
   boolean resultado= ctrlAsObservacion.crearObservacion(cObservacion, dObservacion, cUsuario, fIngreso, bActivo, asMetodo, asAtributo, asParametro, asClase);

    
    
   
    
    
    String mensaje;
    if(resultado){
    	mensaje="Registro actualizado con éxito";
    }
    else
    	mensaje="Falló la actualizacion del registro, por duplicación de llaves.";
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

    <title>AsObservacion Actualizar| Proyecto IGF115 2015</title>

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
		  <li><a href="AsObservacionActualizar2.jsp">Actualizar Tipo Clase</a></li>
		  <li class="active">Resultado</li>
		</ol>
		<h3>Resultado:</h3>
		<%=mensaje %>
		
		
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