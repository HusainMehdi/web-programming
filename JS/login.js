import Game from './game.js';
import db from './dbcommands.js';

var loginMenu = document.querySelector("#loginMenu");
var createButton = document.querySelector("#createButton");
createButton.addEventListener("click", addAccount, false);
loginButton.addEventListener("click", login, false);

function startGame(userAccount) {
    console.log(userAccount.username+" logged on");
    //remove login before loading game
    loginMenu.parentNode.removeChild(loginMenu);
    return new Game(userAccount);
}

function getDBResponse(responseText) {
    document.querySelector('#createStatusLabel').innerHTML = responseText;
}

function login() {
    db.login(startGame);
}

function addAccount() {
    db.addAccount(getDBResponse);
}