<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="sv.edu.ues.igf115.dao.*" %>
    <%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="java.util.*" %>
<% CtrlAsClase ctrlAsClase = new CtrlAsClase();
	List<AsClase> listAsClase = ctrlAsClase.daClases(); %>
<% CtrlAsAtributo ctrlAsAtributo = new CtrlAsAtributo();
	List<AsAtributo> listAsAtributo = ctrlAsAtributo.daAsAtributos();  %>
<% CtrlAsMetodo ctrlAsMetodo = new CtrlAsMetodo();
	List<AsMetodo> listAsMetodo = ctrlAsMetodo.daListaAsMetodos(); %>\
<% CtrlAsParametro ctrlAsParametro = new CtrlAsParametro();
	List<AsParametro> listAsParametro = ctrlAsParametro.daListaAsParametro(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>AsObservacion Crear| Proyecto IGF115 2015</title>

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
		  <li class=active><a href="AsObservacionActualizar2.jsp">Actualizar Observacion</a></li>
		</ol>
		
		 <h3 class="page-header">Actualizar Observacion</h3>
        <div class="row">
            
            <div class="container col-xs-1 col-sm-4 col-md-4"></div>

            <div class="container col-xs-10 col-sm-4 col-md-4 form1">
                <form role="form" method="post" action="AsObservacionCrear.jsp">
                    <div class="form-group">
                        <label for="cObservacion">Observacion ID:</label>
                        <input type="text" class="form-control" id="cObservacion" name="cObservacion">
                    </div>
                    <div class="form-group">
                        <label for="dObservacion">Nombre Observacion:</label>
                        <input type="text" class="form-control" id="dObservacion" name="dObservacion">
                    </div>
                    <div class="form-group">
                        <label for="cUsuario">Usuario nombre:</label>
                        <input type="text" class="form-control" id="cUsuario" name="cUsuario">
                    </div>
                    <div class="form-group">
                        <label for="fIngreso">Fecha de Ingreso:</label>
                        <input type="date" class="form-control" id="fIngreso" name="fIngreso">
                    </div>
                    <div class="form-group">
                        <label for="bActivo">Activo:</label>
                        <input type="number" class="form-control" id="bActivo" name="bActivo">
                    </div>
                    <div class="form-group">
                        <label for="cAtributo">Atributo ID:</label>
                        <select name="cAtributo">
                        	<%for(AsAtributo asAtributo: listAsAtributo){ %>
                        	<option value="cAtributoID""><%=asAtributo.getLlaveCompuesta().getcAtributo() %></option>
                        	<%} %>
                        </select>
                        
                    </div>   
                    
                    <div class="form-group">
                        <label for="cClase">Tipo Clase ID:</label>
                        <select name="cClase">
                        	<%for (AsClase asClase: listAsClase) { %>
                        	<option value="cClase"><%=asClase.getCClase() %></option>
                        	<%} %>
                        </select>
                        
                    </div>  
                    <div class="form-group">
                        <label for="cMetodo">Metodo ID:</label>
                        <select name="cMetodo">
                        	 <%for (AsMetodo asMetodo : listAsMetodo) { %> 
                        	<option value="cMetodo"><%=asMetodo.getLlaveCompuesta().getcMetodo() %></option>
                        	<%} %>
                        </select>
                        
                    </div>  
                    <div class="form-group">
                        <label for="cParametro">Parametro ID:</label>
                        <select name="cParametro">
                        	 <%for (AsParametro asParametro : listAsParametro) { %> 
                        	<option value="cParametro"><%=asParametro.getLlaveCompuesta().getcParametro() %></option>
                        	<%} %>
                        </select>
                        
                    </div>                          
                    <button type="submit" class="btn btn-primary"> Actualizar</button>
                    <div class="point"><br/>.</div>
                </form>

            </div>
            <div class="container col-xs-1 col-sm-4 col-md-4"></div>
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