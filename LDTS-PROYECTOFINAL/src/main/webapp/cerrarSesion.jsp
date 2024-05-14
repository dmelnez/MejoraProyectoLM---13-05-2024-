<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet">
    <title>Document</title>
    </head>
   <style>
   
  body {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background-image: url(https://user-images.githubusercontent.com/13468728/233847739-219cb494-c265-4554-820a-bd3424c59065.jpg);
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}

.logeo{
color: aliceblue; 
font-size: 50px;
margin-top: 30px;
justify-content: center;
display: flex;
align-items: center;

}

</style>
<body>
   
   <%
	session.invalidate();
   %>
   
   <div>
  	<h1 style="color: aliceblue;">SESION CERRADA</h1><br>
  	<a href="wp-admin.jsp" class="logeo">Inicio</a>
   </div>
</body>
</html>