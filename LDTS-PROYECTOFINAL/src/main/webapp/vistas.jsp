<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Vistas</title>

</head>

<style>

tr{
border: 1px solid black
}

table {
border: 1px solid black
}

td{
border: 1px solid black
}
</style>


<!-- partial:index.partial.html -->
<body>
	<h1>ELEMENTOS DE VISTAS</h1>


	<h2>Usuarios con compras</h2>


	<%
	String query = "select * from listaUsuariosCompras;;";

	beanDB baseDeDatos = new beanDB();
	baseDeDatos.conectarBD();
	String[][] tablares = baseDeDatos.resConsultaSelectA3(query);
	baseDeDatos.desconectarBD();
	%>

	<table>

		<%
		for (int i = 0; i < tablares.length; i++) {
		%><tr>
			<%
			for (int j = 0; j < tablares[i].length; j++) {
			%><td><%=tablares[i][j]%></td>
			<%
			}
			%>
		</tr>
		<%
		}
		%>

		
</body>


</html>
