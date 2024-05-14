<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="registroUsuario.css">
    <title>Registro</title>
</head>
<body>
    <div class="form-box">
        <div class="button-box">
            <div id="btn"></div>
            <button type="button" class="toggle-btn" id="log" onclick="login()" style="color: #fff;">Log In</button>
            <button type="button" class="toggle-btn" id="reg" onclick="register()">Register</button>
        </div>
        <div class="social-icons">
            <a href="#">
                <icon class="fab fa-instagram icon"></icon>
            </a>
            <a href="#">
                <icon class="fab fa-facebook-square icon"></icon>
            </a>
            <a href="#">
                <icon class="fab fa-twitter icon"></icon>
            </a>
        </div>

        <!-- Login Form -->
        <form id="login" class="input-group" action="./LoginAuthenticator" method="post">
            <div class="inp">
                <i class="fa fa-user" style="font-size: 20px;padding-right: 10px;"></i><input type="text" id="emailLogin" name="usuario"
                    class="input-field" placeholder="Email" style="width: 88%; border:none;"
                    required="required">
            </div>
            <div class="inp">
                <i class="fas fa-lock" style="font-size: 20px;padding-right: 10px;"></i><input type="password" id="passwordLogin" name="pass" 
                    class="input-field" placeholder="Contraseña" style="width: 88%; border: none;" required="required">
            </div>
            <input type="checkbox" class="check-box" id="checkbox"><label for="checkbox">Recuerdame</label>
            <button type="submit" class="submit-btn">Log In</button>
        </form>


        <div class="other" id="other">
            <div class="instead">
                <h3>o</h3>
            </div>
            <button class="connect" onclick="google()">
              <!--                 <img src="images/icon/google.png"> --><icon class="fab fa-google"></icon><span>Sign in with Google</span>
            </button>
        </div>

        <!-- Registration Form -->
        <form id="register" class="input-group">
            <input type="text" class="input-field" placeholder="Nombre Completo" required="required" name="nombre">
            <input type="email" class="input-field" placeholder="Email" required="required" name="email">
            <input type="number" class="input-field" placeholder="Telefono"  required="required" name="telefono">
            <input type="password" class="input-field" placeholder="Contraseña"  required="required" name="passwd">
            <input type="checkbox" class="check-box" id="chkAgree" onclick="goFurther()" required> <label for="chkAgree">Términos y Condiciones</label>
            <button type="submit" id="btnSubmit" class="submit-btn reg-btn">Register</button>
        </form>
    </div>
    <% 
beanDB baseDeDatosRegistro = new beanDB();
baseDeDatosRegistro.conectarBD();


String nombreUsu = request.getParameter("nombre");
String email = request.getParameter("email");
String telefono = request.getParameter("telefono");
String passwd =  request.getParameter("passwd");
String insertBaseDatos = "INSERT INTO `usuarios` (`usuario_nombre`,`email`,`contrasenia`,`telefono`) VALUES ('" + nombreUsu + "','" + email + "',AES_ENCRYPT('" + passwd +  "', 'Altair123$%'),'" + telefono + "');";
System.out.println(insertBaseDatos);
baseDeDatosRegistro.insert(insertBaseDatos);
baseDeDatosRegistro.desconectarBD();
%>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
    <script type="text/javascript" src="registroUsuario.js"></script>
</body>
</html>






