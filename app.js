const home = document.getElementById('home');
const about = document.getElementById('about');
const buttons = document.getElementsByClassName('header-item');
init();


function init() {
    about.style.display = "none";
    buttons[1].addEventListener("click", switchToAbout)
    buttons[0].addEventListener("click", switchToHome);
}

function switchToHome(){
    home.style.display = "grid";
    about.style.display = "none";
}

function switchToAbout(){
    about.style.display = "grid";
    home.style.display = "none";
}
