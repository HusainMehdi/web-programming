import Game from './game.js';
import db from './dbcommands.js';
var loginMenu = document.querySelector("#loginMenu");

//Add even listener to login button which calls chain of functions to search for account in the db and start the game if a match is found

var loginButton = document.querySelector("#loginButton");
loginButton.addEventListener("click", login, false);

/**On button click, calls a db command which searches the db for the data entered by user. Returns error message to user if account not found.*/
function login() {
    db.login(startGame);
}


/**Starts game if a matching, passing account details if account is found
 * @param  {} userAccount Account to pass to the game used to set player details
 */
function startGame(userAccount) {
    console.log(userAccount.username+" logged on");
    //remove login menu before loading game
    loginMenu.parentNode.removeChild(loginMenu);
    return new Game(userAccount);
}

//Add event listener to 'create account' button. Calls chain of functions which add new account to db.
var createAccountButton = document.querySelector("#createButton");
createAccountButton.addEventListener("click", addAccount, false);

/**On button click, attempts to add the acccount to the database*/
function addAccount() {
    db.addAccount(getDBResponse);
}
//returns message to user to notify if account has been created successfully or not
function getDBResponse(responseText) {
    document.querySelector('#createStatusLabel').innerHTML = responseText;
}

