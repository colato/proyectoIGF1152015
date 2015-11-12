<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="sv.edu.ues.igf115.dao.*" %>
<%@ page import="sv.edu.ues.igf115.dominio.*" %>
<%@ page import="java.util.*" %>
<%
	AsAtributoDAO asAtributoDAO = new AsAtributoDAO();
	AsAtributo asAtributoRecuperado = null;
	//Obtener lista de objetos AsAtributo
	List<AsAtributo> listaAsAtributo = asAtributoDAO.daAsAtributo();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>As Atributo CRUD</title>
</head>
<body>
	Lista de As Atributos: 
	<%
		for(AsAtributo a : listaAsAtributo)
		{
		
		}
	%>
</body>
</html>