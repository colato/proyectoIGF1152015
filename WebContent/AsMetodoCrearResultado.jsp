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
	boolean resultado=ctrlAsMetodo.crearAsMetodo(llaveCompuesta, dMetodo, dTipoRetorno, cUsuario, fIngreso, bActivo, nParametros,cTipoMetodo);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%=resultado %>
</body>
</html>