var main = document.querySelector('main')
init();


function init() {
    if (main == null)
        addHome();
}

function addHome() {
    const body = document.querySelector('body');
    const empty = document.createElement('main');

    main = empty;
    body.append(main);
}

function switchToHome(){
    if (document.getElementById('game') == null)
        main.remove();
}

function switchToAbout(){
    const button = document.getElementsByClassName('header-item');

    if (document.getElementById('about') == null){
        main.remove();
    }else {
        const link = button[1].querySelector('a');
    }


}