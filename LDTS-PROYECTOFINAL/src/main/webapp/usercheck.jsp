<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="common/general.css">

</head>
<body>
	<%  
	try {  //AQUI VA EL CONTROL DE SESION
		String acceso = session.getAttribute("vivaElBetis").toString(); // Creacion una variable "acceso", de tipo texto. Que contiene el valor del metodo "getAttribute".
	 	if (acceso.equals("1")) // Si el valor de acceso es un "1", el usuario significa que esta logeado.%>
	 	<h1>EL USUARIO ESTA LOGEADO</h1><%; // 
	} catch (Exception e) { 
		%><h1>EL USUARIO NO ESTA LOGEADO</h1>	<%; // Si el metodo "getAttribute", devuelve una excepcion, Significa que el usuario no esta logeado.
	
	}
	
	%>
</body>
</html>