<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.negocio.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%
     int cInterface= Integer.parseInt(request.getParameter("cInterface"));
     String dInterface= request.getParameter("dInterface");
     String cUsuario = request.getParameter("cUsuario");
     String fecha= request.getParameter("fecha");
     SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
     Date fIngreso = formato.parse(fecha);
     
     CtrlAsInterface ctrl= new CtrlAsInterface();
     boolean resultado=ctrl.crearAsInterface(cInterface, dInterface, cUsuario, fIngreso);
    
     String mensaje;
     if(resultado)
    	 mensaje="Registro creado con exito";
     else
    	 mensaje="Error al crear el registro";
     
     
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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

<ol class="breadcrumb">
		  <li><a href="index.html">Inicio</a></li>
		  <li><a href="AsInterfaceCrear.html">Crear As Interface</a></li>
		  <li class="active">Resultado</li>
		</ol>
		<h3>Resultado:</h3>
		<%=mensaje %>
		
		
    
    <!--fin -->

</body>
</html>