<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>


<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title> Themn</title>
   <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" /><link rel="stylesheet" href="./style.css">

</head>

<!-- partial:index.partial.html -->
<body>
 

     

    <img class="background-video" src="https://user-images.githubusercontent.com/13468728/233847739-219cb494-c265-4554-820a-bd3424c59065.jpg" alt="">

    <header>
      <a href="index.jsp"><img
          src="https://github.com/ecemgo/today-i-learned-app/assets/13468728/4f2923ea-9eca-4221-8b18-7198f78fd04e"
          alt="logo"
          class="logo"
      /></a>

      <input type="checkbox" id="check" />
      <label for="check" class="icons">
        <i class="bx bx-menu" id="menu-icon"></i>
        <i class="bx bx-x" id="close-icon"></i>
      </label>

      <nav class="navbar">
        <a href="index.jsp" class="nav-item">Home</a>
        <a href="productos.jsp" class="nav-item">Productos</a>
        <a href="registroUsuarios.jsp" class="nav-item">Inicio sesion</a>
        <a href="#" class="nav-item">Contacto</a>
        <a href="cesta.jsp" class="nav-item">Cesta</a>
      </nav>
    </header>

    <section class="content">
      <h1>The Themn</h1>
      <a href="#" class="btn light"></a>
    </section>


  <!-- Segunda fila con fondo negro y gradiente -->
  <div class="row " id="fondo-2">
    <div class="container contenedor-fondo02">
      <h1 class="texto-Principal-fondo02">Mejores Productos</h1>
        <div class="contenido01-imagenes-fondo02">
            <div class="div01">
                <div class="">             
                	<img alt="" src="imagenes\3faff01f-3889-4f79-81eb-76cba4e0aa07.webp" class="conjunto01-imagentes-fondo02">
                </div>
                <div class="">
                	<img alt="" src="imagenes\558e018c8f6fc1d86df893fba353bed2.jpg" class="conjunto02-imagentes-fondo02">
                </div>
            </div>

            <div class="">
                <div class="">
                	<img alt="" src="imagenes\ai-generated-7695056_1280.jpg" class="conjunto03-imagentes-fondo02">
                </div>
                <div class="">
                	<img alt="" src="imagenes\ai-generated-sci-fi-city-Cybercity-style-by-JovianSociety.jpg" class="conjunto04-imagentes-fondo02">
                </div>
            </div>

            <div class="">
                <div class="">
                   <img alt="" src="imagenes\Landscape-AI-Art-advanced-extraterrestrial-civilizations.png" class="conjunto05-imagentes-fondo02">
                </div>
                <div class="">
                   <img alt="" src="imagenes\landscape-Ai-Art-intergalactic-spaceport-where-spaceships-dock.png" class="conjunto06-imagentes-fondo02">
                </div>
            </div>

            <div class="">
                <div class="">
                   <img alt="" src="imagenes\landscape-AI-Art-intergalactic-spaceport-where-spaceships-dock-style-of-Alan-Aldridge.png" class="conjunto07-imagentes-fondo02">
                </div>
                <div class="">
                   <img alt="" src="imagenes\3faff01f-3889-4f79-81eb-76cba4e0aa07.webp" class="conjunto08-imagentes-fondo02">
                </div>
            </div>

            
        </div>
    </div><br><br><br><br><br>
    
  </div>


  <!-- Tercera fila con imagen de fondo estática -->
  <div class="row" id="fondo-3">
    <div class="container"><br><br>
      <h1 style="color:white">Suscripciones</h1>
       <!-- Seccion de suscripciones  - Elemento externo Nothing4us -->

        
           <!---------------------------------------------------------------------------->


           <div class="seccion-suscripciones-fondo03">

            <main class="main flow">
            
                <div class="main__cards cards">
                  <div class="cards__inner">
                    <div class="cards__card card">
                      <h2 class="card__heading">Basico</h2>
                      <p class="card__price">9,99€</p>
                      <ul role="list" class="card__bullets flow">
                        <li>Acceso a entrenamientos estándar y planes de nutrición</li>
                        <li>Soporte por correo electrónico</li>
                      </ul>
                      <a href="#basic" class="card__cta cta">Get Started</a>
                    </div>
              
                    <div class="cards__card card">
                      <h2 class="card__heading">Premium</h2>
                      <p class="card__price">19,99€</p>
                      <ul role="list" class="card__bullets flow">
                        <li>Acceso a entrenamientos avanzados y planes de nutrición</li>
                        <li>Soporte prioritario por correo electrónico</li>
                        <li>Acceso exclusivo a sesiones de preguntas y respuestas en vivo</li>
                      </ul>
                      <a href="#pro" class="card__cta cta">Mejorar a Pro</a>
                    </div>
              
                    <div class="cards__card card">
                      <h2 class="card__heading">Ultimate</h2>
                      <p class="card__price">29,99€</p>
                      <ul role="list" class="card__bullets flow">
                        <li>Acceso a todos los entrenamientos premium y planes de nutrición</li>
                        <li>Soporte prioritario las 24 horas del día, los 7 días de la semana</li>
                        <li>Una sesión de entrenamiento virtual uno a uno cada mes</li>
                        <li>Contenido exclusivo y acceso anticipado a nuevas funciones</li>
                      </ul>
                      <a href="#ultimate" class="card__cta cta">Mejora a ultimate</a>
                    </div>
                  </div>
                  
                  <div class="overlay cards__inner"></div>
                </div>
            </main>


        </div>


    </div>
  </div>



  <script src="javascript.js"></script>
  </body>
<!-- partial -->

</html>
