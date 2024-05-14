/**
 * 
 */

 const navItems = document.querySelectorAll(".nav-item");

navItems.forEach((navItem, i) => {
  navItem.addEventListener("click", () => {
    navItems.forEach((item, j) => {
      item.className = "nav-item";
    });
    navItem.className = "nav-item active";
  });
});

const containers = document.querySelectorAll(".containers");

containers.forEach((container) => {
  let isDragging = false;
  let startX;
  let scrollLeft;

  container.addEventListener("mousedown", (e) => {
    isDragging = true;
    startX = e.pageX - container.offsetLeft;
    scrollLeft = container.scrollLeft;
  });

  container.addEventListener("mousemove", (e) => {
    if (!isDragging) return;
    e.preventDefault();

    const x = e.pageX - container.offsetLeft;
    const step = (x - startX) * 0.6;
    container.scrollLeft = scrollLeft - step;
  });

  container.addEventListener("mouseup", () => {
    isDragging = false;
  });

  container.addEventListener("mouseleave", () => {
    isDragging = false;
  });
});

const progress = document.getElementById("progress");
const song = document.getElementById("song");
const controlIcon = document.getElementById("controlIcon");
const playPauseButton = document.querySelector(".play-pause-btn");
const forwardButton = document.querySelector(".controls button.forward");
const backwardButton = document.querySelector(".controls button.backward");
const rotatingImage = document.getElementById("rotatingImage");
const songName = document.querySelector(".music-player h2");
const artistName = document.querySelector(".music-player p");

let rotating = false;
let currentRotation = 0;
let rotationInterval;

const songs = [

  {
    title: "CRUZ CAFUNÉ - ESTE VERANO",
    name: "Besomorph & Coopex",
    source:
      "https://github.com/dmelnez/sonido-cancion-proyectoFinal/raw/main/CRUZ%20CAFUN%C3%89%20-%20ESTE%20VERANO.mp3",
    cover:
      "https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/398875d0-9b9e-494a-8906-210aa3f777e0",
  },
  {
    title: "Perdiendo la Cabeza",
    name: "OSKI",
    source:
      "https://github.com/dmelnez/sonido-cancion-proyectoFinal/raw/main/Carlos%20Rivera%20Becky%20G%20Pedro%20Cap%C3%B3%20-%20Perdiendo%20la%20Cabeza.mp3",
    cover:
      "https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/810d1ddc-1168-4990-8d43-a0ffee21fb8c",
  },
  {
    title: "Dile a los demás",
    name: "Unknown Brain x Rival",
    source:
      "https://github.com/dmelnez/sonido-cancion-proyectoFinal/raw/main/Dani%20Fern%C3%A1ndez%20-%20Dile%20a%20los%20dem%C3%A1s%20(Videoclip%20Oficial).mp3",
    cover:
      "https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/7bd23b84-d9b0-4604-a7e3-872157a37b61",
  },
  {
    title: "El Canto del Loco - Besos",
    name: "Unknown Brain x Rival",
    source:
      "https://github.com/dmelnez/sonido-cancion-proyectoFinal/raw/main/El%20Canto%20del%20Loco%20-%20Besos.mp3",
    cover:
      "https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/7bd23b84-d9b0-4604-a7e3-872157a37b61",
  },
  {
    title: "Mi Religión",
    name: "Unknown Brain x Rival",
    source:
      "https://github.com/dmelnez/sonido-cancion-proyectoFinal/raw/main/Nil%20Moliner%20-%20Mi%20Religi%C3%B3n%20(Videoclip%20Oficial).mp3",
    cover:
      "https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/7bd23b84-d9b0-4604-a7e3-872157a37b61",
  },
  {
    title: "Ritmo - Teo Lucano",
    name: "Unknown Brain x Rival",
    source:
      "https://github.com/dmelnez/sonido-cancion-proyectoFinal/raw/main/Teo%20Lucadamo%20-%20RITMO.mp3",
    cover:
      "https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/7bd23b84-d9b0-4604-a7e3-872157a37b61",
  },
  {
    title: "Raffaella Carra",
    name: "Unknown Brain x Rival",
    source:
      "https://github.com/dmelnez/sonido-cancion-proyectoFinal/raw/main/Raffaella%20Carr%C3%A0%20-%20Pedro%20(Jaxomy%20%26%20Agatino%20Romero%20Remix).mp3",
    cover:
      "https://github.com/ecemgo/mini-samples-great-tricks/assets/13468728/7bd23b84-d9b0-4604-a7e3-872157a37b61",
  },
  {
    title: "Soy Español",
    name: "Unknown Brain x Rival",
    source:
      "  https://github.com/dmelnez/sonido-cancion-proyectoFinal/raw/main/JOS%C3%89%20MANUEL%20SOTO%20-%20SOY%20ESPA%C3%91OL%20(V%C3%ADdeoclip%20Oficial).mp3",
    cover:
      "https://github.com/dmelnez/sonido-cancion-proyectoFinal/raw/main/Bandera_de_Espa%C3%B1a_(sin_escudo).svg.png",
  }




];



let currentSongIndex = 0;

function startRotation() {
  if (!rotating) {
    rotating = true;
    rotationInterval = setInterval(rotateImage, 50);
  }
}

function pauseRotation() {
  clearInterval(rotationInterval);
  rotating = false;
}

function rotateImage() {
  currentRotation += 1;
  rotatingImage.style.transform = `rotate(${currentRotation}deg)`;
}

function updateSongInfo() {
  songName.textContent = songs[currentSongIndex].title;
  artistName.textContent = songs[currentSongIndex].name;
  song.src = songs[currentSongIndex].source;
  rotatingImage.src = songs[currentSongIndex].cover;

  song.addEventListener("loadeddata", function () {});
}

song.addEventListener("loadedmetadata", function () {
  progress.max = song.duration;
  progress.value = song.currentTime;
});

song.addEventListener("ended", function () {
  currentSongIndex = (currentSongIndex + 1) % songs.length;
  updateSongInfo();
  playPause();
});

song.addEventListener("timeupdate", function () {
  if (!song.paused) {
    progress.value = song.currentTime;
  }
});

function playPause() {
  if (song.paused) {
    song.play();
    controlIcon.classList.add("fa-pause");
    controlIcon.classList.remove("fa-play");
    startRotation();
  } else {
    song.pause();
    controlIcon.classList.remove("fa-pause");
    controlIcon.classList.add("fa-play");
    pauseRotation();
  }
}

playPauseButton.addEventListener("click", playPause);

progress.addEventListener("input", function () {
  song.currentTime = progress.value;
});

progress.addEventListener("change", function () {
  song.play();
  controlIcon.classList.add("fa-pause");
  controlIcon.classList.remove("fa-play");
  startRotation();
});

backwardButton.addEventListener("click", function () {
  currentSongIndex = (currentSongIndex - 1 + songs.length) % songs.length;
  updateSongInfo();
  playPause();
});
forwardButton.addEventListener("click", function () {
  currentSongIndex = (currentSongIndex + 1) % songs.length;
  updateSongInfo();
  playPause();
});



updateSongInfo();

var swiper = new Swiper(".swiper", {
  effect: "coverflow",
  grabCursor: true,
  centeredSlides: true,
  loop: true,
  speed: 600,
  slidesPerView: "auto",
  coverflowEffect: {
    rotate: 10,
    stretch: 120,
    depth: 200,
    modifier: 1,
    slideShadows: false,
  },
   on: {
    click(event) {
      swiper.slideTo(this.clickedIndex);
    },
  },
  pagination: {
    el: ".swiper-pagination",
  },
});