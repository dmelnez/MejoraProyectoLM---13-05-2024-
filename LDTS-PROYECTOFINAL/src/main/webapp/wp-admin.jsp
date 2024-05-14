<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="wp-admin.css">
    <title>Document</title>
    
     
    
</head>
<body>
    <section>
        <form action="./LoginAuthenticator" method="post" name="iniciosesion" id="iniciosesion">
            <h1>Login</h1>
            <div class="inputbox">
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="text" class="inputgris" required name="usuario" id="usuario">
                <label for="">Usuario</label>
                
            </div>
            <div class="inputbox">
                <ion-icon name="lock-closed-outline"></ion-icon>
                <input type="password" name="pass"  class="inputgris" required id="pass">
                <label for="">Contraseña</label>
            </div>
            <div class="forget">
                <label for=""><input type="checkbox">Recuerdame</label>
            </div>
            <input class="button" type="submit" name="send" value="Log in"/>

            
          
            
        </form>
    </section>
    
    

    
</body>
</html>




















