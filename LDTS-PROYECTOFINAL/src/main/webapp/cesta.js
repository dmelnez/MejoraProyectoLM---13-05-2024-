
// Apartado de la pagina de Productos

document.querySelectorAll('.truck-button').forEach(button => {
	button.addEventListener('click', e => {

		e.preventDefault();

		let box = button.querySelector('.box'),
			truck = button.querySelector('.truck');

		if (!button.classList.contains('done')) {

			if (!button.classList.contains('animation')) {

				button.classList.add('animation');

				gsap.to(button, {
					'--box-s': 1,
					'--box-o': 1,
					duration: .3,
					delay: .5
				});

				gsap.to(box, {
					x: 0,
					duration: .4,
					delay: .7
				});

				gsap.to(button, {
					'--hx': -5,
					'--bx': 50,
					duration: .18,
					delay: .92
				});

				gsap.to(box, {
					y: 0,
					duration: .1,
					delay: 1.15
				});

				gsap.set(button, {
					'--truck-y': 0,
					'--truck-y-n': -26
				});

				gsap.to(button, {
					'--truck-y': 1,
					'--truck-y-n': -25,
					duration: .2,
					delay: 1.25,
					onComplete() {
						gsap.timeline({
							onComplete() {
								button.classList.add('done');
							}
						}).to(truck, {
							x: 0,
							duration: .4
						}).to(truck, {
							x: 40,
							duration: 1
						}).to(truck, {
							x: 20,
							duration: .6
						}).to(truck, {
							x: 96,
							duration: .4
						});
						gsap.to(button, {
							'--progress': 1,
							duration: 2.4,
							ease: "power2.in"
						});
					}
				});

			}

		} else {
			button.classList.remove('animation', 'done');
			gsap.set(truck, {
				x: 4
			});
			gsap.set(button, {
				'--progress': 0,
				'--hx': 0,
				'--bx': 0,
				'--box-s': .5,
				'--box-o': 0,
				'--truck-y': 0,
				'--truck-y-n': -26
			});
			gsap.set(box, {
				x: -24,
				y: -6
			});
		}

	});
});

///////////////////////////////////////////////


// Validacion de fechas:
function validarFecha() {
	var fechaInput = document.getElementById("fecha").value;
	var fechaSeleccionada = new Date(fechaInput);
	var fechaActual = new Date();

	if (fechaSeleccionada < fechaActual) {
		alert("La fecha seleccionada no puede ser anterior a la fecha de hoy.");
		document.getElementById("fecha").value = ""; // Limpiar el campo de fecha
	}
}


// Validacion de la cantidad de numeros introducidos en el CVV
function limitarTresDigitos() {
	var cvvInput = document.getElementById("cvv");
	if (cvvInput.value.length > 3) {
		cvvInput.value = cvvInput.value.slice(0, 3); // Limitar a los primeros 3 dígitos
	}
}




// Variables constantes 
const totalDisplay = document.getElementById("total");
const totalProductos = document.getElementById("totalProductos");
const impuestosContadorDiv = document.getElementById("totalImpuestos");
const FashionFusionHQContadorDiv = document.getElementById("FashionFusionHQContadorDiv");
const MindfulMeditatorContadorDiv = document.getElementById("MindfulMeditatorContadorDiv");
const CulinaryCraftsmenContadorDiv = document.getElementById("CulinaryCraftsmenContadorDiv");
const ArtisanCraftersContadorDiv = document.getElementById("ArtisanCraftersContadorDiv");
const totalCompletoDiv = document.getElementById("totalCompleto");

// Variables de los contadores.
let total = 0;
let FashionFusionHQContador = 0;
let MindfulMeditatorContador = 0;
let CulinaryCraftsmenContador = 0;
let ArtisanCraftersContador = 0;
let impuestosPrecio = 0;
let totalCompleto = 0;
/*
localStorage.setItem("total",total);
localStorage.setItem(FashionFusionHQContador);
localStorage.setItem(MindfulMeditatorContador);
localStorage.setItem(CulinaryCraftsmenContador);
localStorage.setItem(ArtisanCraftersContador);
localStorage.setItem(impuestosPrecio);

if (Guardado)
total = localStorage.getItem("total");*/
localStorage.getItem("total",total);




// Funciones de Suma
function FashionFusionHQSuma() {
	total += 89;
	localStorage.setItem("total",total.toString());

	FashionFusionHQContador++;
	if (FashionFusionHQContadorDiv)
		FashionFusionHQContadorDiv.textContent = FashionFusionHQContador;
	impuestosPrecio = total * 0.21;


	if (total < 0) {

		total = 0;
		impuestosPrecio = 0;
		totalCompleto = 0;
		localStorage.setItem("total",total.toString());

	}
	totalDisplay.textContent = total;
	if (impuestosContadorDiv)
	impuestosContadorDiv.textContent = impuestosPrecio;
	


}


function MindfulMeditatorSuma() {
	total += 120;

	MindfulMeditatorContador++;
	if (MindfulMeditatorContadorDiv)

	MindfulMeditatorContadorDiv.textContent = MindfulMeditatorContador;
	impuestosPrecio = total * 0.21;


	if (total < 0) {

		total = 0;
		impuestosPrecio = 0;
		totalCompleto = 0;


	}
	totalDisplay.textContent = total;
	if (impuestosContadorDiv)

	impuestosContadorDiv.textContent = impuestosPrecio;



}

function CulinaryCraftsmenSuma() {
	total += 88;
	CulinaryCraftsmenContador++;
	if (CulinaryCraftsmenContadorDiv)

	CulinaryCraftsmenContadorDiv.textContent = CulinaryCraftsmenContador;
	impuestosPrecio = total * 0.21;
	totalCompleto = total + impuestosPrecio;

	if (total < 0) {

		total = 0;
		impuestosPrecio = 0;
		totalCompleto = 0;


	}
	totalDisplay.textContent = total;
	if (impuestosContadorDiv)

	impuestosContadorDiv.textContent = impuestosPrecio;
	totalProductos.textContent = total;
	totalCompletoDiv.textContent = totalCompleto;



}

function ArtisanCraftersSuma() {
	total += 75;
	totalDisplay.textContent = total;
	ArtisanCraftersContador++;
	if (ArtisanCraftersContadorDiv)

	ArtisanCraftersContadorDiv.textContent = ArtisanCraftersContador;
	impuestosPrecio = total * 0.21;
	if (total < 0) {

		total = 0;
		impuestosPrecio = 0;

	}
	totalDisplay.textContent = total;
	if (impuestosContadorDiv)

	impuestosContadorDiv.textContent = impuestosPrecio;
	totalProductos.textContent = total;


}



// Funciones de Resta
function FashionFusionHQResta() {
	total -= 89;
	FashionFusionHQContador--;
	impuestosPrecio = total * 0.21;
	if (total < 0) {

		total = 0;
		impuestosPrecio = 0;
		FashionFusionHQContador = 0;
	}
	totalDisplay.textContent = total;
	impuestosContadorDiv.textContent = impuestosPrecio;
	FashionFusionHQContadorDiv.textContent = FashionFusionHQContador;
	totalProductos.textContent = total;




}


function MindfulMeditatorResta() {
	total -= 120;
	MindfulMeditatorContador--;
	impuestosPrecio = total * 0.21;
	if (total < 0) {

		total = 0;
		impuestosPrecio = 0;
		MindfulMeditatorContador = 0;

	}
	totalDisplay.textContent = total;
	impuestosContadorDiv.textContent = impuestosPrecio;
	MindfulMeditatorContadorDiv.textContent = MindfulMeditatorContador;
	totalProductos.textContent = total;


}

function CulinaryCraftsmenResta() {
	total -= 88;
	CulinaryCraftsmenContador--;
	impuestosPrecio = total * 0.21;
	if (total < 0) {

		total = 0;
		impuestosPrecio = 0;
		CulinaryCraftsmenContador = 0;
	}
	totalDisplay.textContent = total;
	impuestosContadorDiv.textContent = impuestosPrecio;
	CulinaryCraftsmenContadorDiv.textContent = CulinaryCraftsmenContador;
	totalProductos.textContent = total;



}

function ArtisanCraftersResta() {
	total -= 75;
	ArtisanCraftersContador--;
	impuestosPrecio = total * 0.21;
	if (total < 0) {

		total = 0;
		impuestosPrecio = 0;
		ArtisanCraftersContador = 0;

	}
	totalDisplay.textContent = total;
	impuestosContadorDiv.textContent = impuestosPrecio;
	ArtisanCraftersContadorDiv.textContent = ArtisanCraftersContador;
	totalProductos.textContent = total;

}



// Botones de reseteo de Productos - Cesta

function resetFashionFusionHQ() {

	total -= FashionFusionHQContador * 89;
	impuestosPrecio = total * 0.21;

	totalDisplay.textContent = total;
	impuestosContadorDiv.textContent = impuestosPrecio;

	FashionFusionHQContador = 0;
	FashionFusionHQContadorDiv.textContent = FashionFusionHQContador;
	totalProductos.textContent = total;

}

function resetMindfulMeditator() {

	total -= MindfulMeditatorContador * 120;
	impuestosPrecio = total * 0.21;

	totalDisplay.textContent = total;
	impuestosContadorDiv.textContent = impuestosPrecio;

	MindfulMeditatorContador = 0;
	MindfulMeditatorContadorDiv.textContent = MindfulMeditatorContador;
	totalProductos.textContent = total;

}

function resetCulinaryCraftsmen() {

	total -= CulinaryCraftsmenContador * 88;
	impuestosPrecio = total * 0.21;

	totalDisplay.textContent = total;
	impuestosContadorDiv.textContent = impuestosPrecio;

	CulinaryCraftsmenContador = 0;
	CulinaryCraftsmenContadorDiv.textContent = CulinaryCraftsmenContador;
	totalProductos.textContent = total;

}

function resetArtisanCrafters() {

	total -= ArtisanCraftersContador * 75;
	impuestosPrecio = total * 0.21;

	totalDisplay.textContent = total;
	impuestosContadorDiv.textContent = impuestosPrecio;

	ArtisanCraftersContador = 0;
	ArtisanCraftersContadorDiv.textContent = ArtisanCraftersContador;
	totalProductos.textContent = total;

}




