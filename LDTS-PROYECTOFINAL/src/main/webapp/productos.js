document.querySelectorAll('.truck-button').forEach(button => {
    button.addEventListener('click', e => {

        e.preventDefault();
        
        let box = button.querySelector('.box'),
            truck = button.querySelector('.truck');
        
        if(!button.classList.contains('done')) {
            
            if(!button.classList.contains('animation')) {

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



// Apartado de las operativas de los botones que añaden el monto a la cesta - PAGINA DE PRODUCTOS

/*
// Obtener referencia al elemento de total
const totalElement = document.getElementById('total');
const totalElementCesta = document.getElementById('total-cesta');
const prueba = document.getElementById('EcoNaturaContador');

let total = 0;

let EcoNaturaContador = 0;
let TechGizmosContador = 0;
let HealthyLivingHubContador = 0;
let TravelVoyageProContador = 0;
let ArtisanCraftersContador = 0;
let FashionFusionHQContador = 0;
let MindfulMeditatorContador = 0;
let CulinaryCraftsmenContador = 0;
let AdventureAwaitsTravelContador = 0;
let FitnessFusionStudioContador = 0;
let PetPalsParadiseContador = 0;
let CreativeSparkLabContador = 0;



// Función para sumar 99 al total
function sumar() {
  total += 99;
  totalElement.textContent = total;
  totalElementCesta.textContent = total;

}


function EcoNatura() {
  total += 130;
  totalElement.textContent = total;
  totalElementCesta.textContent = total;
  prueba.textContent = EcoNaturaContador;
    EcoNaturaContador+=1;

}

function TechGizmos() {
  total += 155;
  totalElement.textContent = total;
  totalElementCesta.textContent = total;
  TechGizmosContador++;
}

function HealthyLivingHub() {
  total += 129;
  totalElement.textContent = total;
  HealthyLivingHubContador++;
}

function TravelVoyagePro() {
  total += 199;
  totalElement.textContent = total;
  TravelVoyageProContador++;
}

function ArtisanCrafters() {
  total += 89;
  totalElement.textContent = total;
  ArtisanCraftersContador++;
}

function FashionFusionHQ() {
  total += 89;
  totalElement.textContent = total;
  FashionFusionHQContador++;
}

function MindfulMeditator() {
  total += 120;
  totalElement.textContent = total;
  MindfulMeditatorContador++;
}


function CulinaryCraftsmen() {
  total += 88;
  totalElement.textContent = total;
  CulinaryCraftsmenContador++;
}

function AdventureAwaitsTravel() {
  total += 75;
  totalElement.textContent = total;
  AdventureAwaitsTravelContador++;
}


function FitnessFusionStudio() {
  total += 79;
  totalElement.textContent = total;
  FitnessFusionStudioContador++;
}

function PetPalsParadise() {
  total += 55;
  totalElement.textContent = total;
  PetPalsParadiseContador++;
}

function CreativeSparkLab() {
  total += 190;
  totalElement.textContent = total;
  CreativeSparkLabContador++;
}

// Función para restar 99 al total, si el total es mayor o igual a 99
function restar() {
  if (total >= 99) {
    total -= 99;
    totalElement.textContent = total;
  }
}

// Listas de los botones
document.getElementById('EcoNatura').addEventListener('click', EcoNatura);
document.getElementById('TechGizmos').addEventListener('click', TechGizmos);
document.getElementById('HealthyLivingHub').addEventListener('click', HealthyLivingHub);
document.getElementById('TravelVoyagePro').addEventListener('click', TravelVoyagePro);
document.getElementById('ArtisanCrafters').addEventListener('click', ArtisanCrafters);
document.getElementById('FashionFusionHQ').addEventListener('click', FashionFusionHQ);
document.getElementById('MindfulMeditator').addEventListener('click', MindfulMeditator);
document.getElementById('CulinaryCraftsmen').addEventListener('click', CulinaryCraftsmen);
document.getElementById('AdventureAwaitsTravel').addEventListener('click', AdventureAwaitsTravel);
document.getElementById('FitnessFusionStudio').addEventListener('click', FitnessFusionStudio);
document.getElementById('PetPalsParadise').addEventListener('click', PetPalsParadise);
document.getElementById('CreativeSparkLab').addEventListener('click', CreativeSparkLab);


document.getElementById('restarBtn').addEventListener('click', restar);
*/











