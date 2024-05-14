<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Themn</title>
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Space+Mono:ital,wght@0,400;0,700;1,400;1,700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="cesta.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>





<!-- partial:index.partial.html -->
<body>
	<img class="background-video"
		src="https://user-images.githubusercontent.com/13468728/233847739-219cb494-c265-4554-820a-bd3424c59065.jpg"
		alt="">

	<header>
		<a href="index.jsp"><img
			src="https://github.com/ecemgo/today-i-learned-app/assets/13468728/4f2923ea-9eca-4221-8b18-7198f78fd04e"
			alt="logo" class="logo" /></a> <input type="checkbox" id="check" />
		<label for="check" class="icons"> <i class="bx bx-menu"
			id="menu-icon"></i> <i class="bx bx-x" id="close-icon"></i>
		</label>

		<nav class="navbar">
			<a href="index.jsp" class="nav-item">Home</a> <a href="productos.jsp"
				class="nav-item">Productos</a> <a href="registroUsuarios.jsp"
				class="nav-item">Inicio sesion</a> <a href="#" class="nav-item">Contacto</a>
			<a href="cesta.jsp" class="nav-item">Cesta<!-- <span id="total"> 0</span>  --></a>
				
		
			
		</nav>
	</header>


	<!------------------------------------------------------------------------------------------------------------->
	<br>
	<br>
	<!-- APARTADO DE PAGO DE LOS PRODUCTOS -->

	<div class="container mt-5 p-3 rounded cart fondo-transparente"
		style="color: white;">
		<div class="row no-gutters">
			<div class="col-md-8">
				<div class="product-details  mr-2">
					<div class="d-flex flex-row align-items-center">
						<i class="fa fa-long-arrow-left"></i><span class="ml-2"><a
							href="productos.jsp">Continuar Comprando</a></span>
					</div>
					<hr>
					<h6 class="mb-0">Carrito de la Compra</h6>
					<div class="d-flex justify-content-between">
						<span>Tienes 4 Productos</span>
					</div>
					<div
						class="d-flex justify-content-between align-items-center mt-3 p-2 items rounded">
						<div class="d-flex flex-row">
							<img class="rounded img-fluid"
								src="imagenes/futuristic-cityscape-with-glowing-high-tech-architecture-free-photo.jpg"
								width="40">
							<div class="ml-2">
								<span class="font-weight-bold d-block"><b>FashionFusionHQ</b></span>
								<button onclick="resetFashionFusionHQ()">Resetear</button>
							</div>
						</div>
						<div class="d-flex flex-row align-items-center">
							<span class="d-block ml-5 font-weight-bold"><button
									class="botonAniadirCesta"  onclick="FashionFusionHQSuma()">+</button><span id="FashionFusionHQContadorDiv"></span>
								<button class="botonRestarCesta"  onclick="FashionFusionHQResta()">-</button></span><i
								class="fa fa-trash-o ml-3 text-black-50"></i>
						</div>
					</div>
					<div
						class="d-flex justify-content-between align-items-center mt-3 p-2 items rounded">
						<div class="d-flex flex-row">
							<img class="rounded img-fluid"
								src="imagenes/ai-generated-7695056_1280.jpg" width="40">
							<div class="ml-2">
								<span class="font-weight-bold d-block"><b>MindfulMeditator</b></span>
								<button onclick="resetMindfulMeditator()">Resetear</button>
								
							</div>
						</div>
						<div class="d-flex flex-row align-items-center">
							<span class="d-block ml-5 font-weight-bold"><button
									class="botonAniadirCesta"  onclick="MindfulMeditatorSuma()" >+</button><span id="MindfulMeditatorContadorDiv"></span>
								<button class="botonRestarCesta" onclick="MindfulMeditatorResta()">-</button></span><i
								class="fa fa-trash-o ml-3 text-black-50"></i>
						</div>
					</div>
					<div
						class="d-flex justify-content-between align-items-center mt-3 p-2 items rounded">
						<div class="d-flex flex-row">
							<img class="rounded img-fluid"
								src="imagenes/ai-generated-sci-fi-city-Cybercity-style-by-JovianSociety.jpg"
								width="40">
							<div class="ml-2">
								<span class="font-weight-bold d-block"><b>CulinaryCraftsmen</b></span>
								<button onclick="resetCulinaryCraftsmen()">Resetear</button>
								
							</div>
						</div>
						<div class="d-flex flex-row align-items-center">
							<span class="d-block ml-5 font-weight-bold">
							<button class="botonAniadirCesta" onclick="CulinaryCraftsmenSuma()">+</button><span id="CulinaryCraftsmenContadorDiv"></span>
								<button class="botonRestarCesta" onclick="CulinaryCraftsmenResta()">-</button></span><i
								class="fa fa-trash-o ml-3 text-black-50"></i>
						</div>
					</div>
					<div
						class="d-flex justify-content-between align-items-center mt-3 p-2 items rounded">
						<div class="d-flex flex-row">
							<img class="rounded img-fluid"
								src="imagenes/create-an-ai-landscape.webp" width="40">
							<div class="ml-2">
								<span class="font-weight-bold d-block"><b>ArtisanCrafters</b></span>
								<button onclick="resetArtisanCrafters()">Resetear</button>
							
							</div>
						</div>
						<div class="d-flex flex-row align-items-center">
							</span><span class="d-block ml-5 font-weight-bold"><button
									class="botonAniadirCesta" onclick="ArtisanCraftersSuma()">+</button><span id="ArtisanCraftersContadorDiv"></span>
								<button class="botonRestarCesta" onclick="ArtisanCraftersResta()">-</button></span><i
								class="fa fa-trash-o ml-3 text-black-50"></i>
						</div>
					</div>


				</div>
			</div>
			<div class="col-md-4">
				<div class="payment-info">
					<div class="d-flex justify-content-between align-items-center">
						<span>DETALLES DE TARJETA</span>
					</div>
					<span class="type d-block mt-3 mb-1">Tipos Tarjetas</span><label
						class="radio"> <input type="radio" name="card"
						value="payment" checked> <span><img width="30"
							src="https://img.icons8.com/color/48/000000/mastercard.png" /></span>
					</label> <label class="radio"> <input type="radio" name="card"
						value="payment"> <span><img width="30"
							src="https://img.icons8.com/officel/48/000000/visa.png"
							class="img-fluid" /></span>
					</label> <label class="radio"> <input type="radio" name="card"
						value="payment"> <span><img width="30"
							src="https://img.icons8.com/ultraviolet/48/000000/amex.png"
							class="img-fluid" /></span>
					</label> <label class="radio"> <input type="radio" name="card"
						value="payment"> <span><img width="30"
							src="https://img.icons8.com/officel/48/000000/paypal.png"
							class="img-fluid" /></span>
					</label>
					<div>
						<label class="credit-card-label">Nombre del Propietario</label><input
							type="text" class="form-control credit-inputs" placeholder="Name"
							required>
					</div>
					<div>
						<label class="credit-card-label">Numero Tarjeta</label><input
							type="number" class="form-control credit-inputs"
							placeholder="0000 0000 0000 0000">
					</div>
					<div class="row">
						<div class="col-md-6">
							<label class="credit-card-label">Fecha</label><input type="date"
								class="form-control credit-inputs" placeholder="12/24" id="fecha" onchange="validarFecha()">
						</div>
						<div class="col-md-6">
							<label class="credit-card-label">CVV</label><input type="number"
								class="form-control credit-inputs" placeholder="342"  id="cvv" oninput="limitarTresDigitos()">
						</div>
					</div>
					<hr class="line">
					<div class="d-flex justify-content-between information">
						<span>Subtotal</span><span id="total"> 0</span>
					</div>
					<div class="d-flex justify-content-between information">
						<span>Impuestos</span><span id="totalImpuestos">0</span>
					</div>
					<div class="d-flex justify-content-between information">
						<span>Total(Incl. Impuestos)</span><span id="totalCompleto">0</span>
					</div>
					<a href="index.jsp"><button
							class="btn btn-primary btn-block d-flex justify-content-between mt-3"
							type="button">
							<span>PAGAR<i class="fa fa-long-arrow-right ml-1"></i></span>
						</button>
				</div>
				</a>

			</div>
		</div>
	</div>
	







	<!-------------------------------------------->

<!-- partial -->
<script src="cesta.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>

</body>


</html>
