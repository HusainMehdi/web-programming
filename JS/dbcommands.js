/**Class used to render a DBCommands object containing all http requests used to send and retrieve data from the database. To be used much like an interface in java for performing all database related operations*/
class DBCommands {
    constructor() {}

    /**HTTP Request - Reads login information input by the user and searches db for a matching account. 
     * @type http request
     * @param  {} callback Function to call if a matching account is found
     */
    login(callback) {
        var username = document.querySelector('#loginUserNameInput').value;
        var password = document.querySelector('#loginPasswordInput').value;
        //convert data to named strings which PHP will recognise
        var params = "&username=" + username + "&password=" + password;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'PHP/login.php', true);
        //set content type we're posting
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                var userAccount = JSON.parse(this.responseText);
                if (userAccount.length == 0) {
                    document.querySelector('#loginStatusLabel').innerHTML = "Invalid username or password";
                } else {
                    // startGame(userAccount[0]);
                    callback(userAccount[0]);
                }
            }
        }
        xhr.send(params);
    }

    /**HTTP Request - Reads login information input by the user and attempts to create a new account using that information. 
     * @param  {} callback Function to call if account sucessfully added
     */
    addAccount(callback) {
        var username = document.querySelector('#createUserNameInput').value;
        var password = document.querySelector('#createPasswordInput').value;
        if (username != "" && password != "") {
            //convert data to named strings which PHP will recognise
            var params = "&username=" + username + "&password=" + password;
            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'PHP/addAccount.php', true);
            //set content type we're posting
            xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            xhr.onload = function () {
                if (this.status == 200) {
                    console.log(this.responseText);
                    callback(this.responseText);
                }
            }
            xhr.send(params);
        } else
            document.querySelector('#createStatusLabel').innerHTML = "Please enter a username and password";
    }
    /**HTTP Request -  Adds given player to the activeplayers table in db. Assigning them a player number (id).
     * @param  {} username - player to be added
     * @param  {} x - player starting position on canvas x axis
     * @param  {} y - player starting position on canvas y axis
     * @param  {} callback - function to call if player is successfully added
     */
    addPlayerToGame(username, x, y, callback) {
        var params = "&username=" + username + "&x=" + x + "&y=" + y;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'PHP/addPlayerToGame.php', true);
        //set content type we're posting
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                console.log(this.responseText);
                callback();
            }
        }
        xhr.send(params);
    }
    /**HTTP Request - Removes player from activeplayers table
     * @param  {} username name of player to remove
     */
    removePlayerFromGame(username) {
        var params = "&username=" + username;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'PHP/removePlayerFromGame.php', true);
        //set content type we're posting
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                console.log(this.responseText);
            }
        }
        xhr.send(params);
    }

    /**HTTP Request - Sends canvas coordinates of player to activeplayers table and retrieves locations and id's of opponents
     * @param  {} username player to update in activeplayers table
     * @param  {} x players current position on canvas x axis
     * @param  {} y players current position on canvas y axis
     * @param  {} callback function to call if update and retrieval succeed

     */
    updatePlayerStatus(username, x, y, callback) {
        var params = "&username=" + username + "&x=" + x + "&y=" + y;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'PHP/updatePlayerStatus.php', true);
        //set content type we're posting
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                // console.log(this.responseText);
                var playerData = JSON.parse(this.responseText);
                callback(playerData);
            }
        }
        xhr.send(params);
    }
    /**HTTP Request -  Retrieves the player id from activeplayers. This is a temporary numer assigned when they join a game and removed when they leave
     * @param  {} username - player name to query
     * @param  {} callback - function to call if id successfully obtained
     */
    getPlayerId(username, callback) {
        var params = "&username=" + username;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'PHP/getPlayerId.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                var id = JSON.parse(this.responseText);
                callback(id[0].id);
            }
        }
        xhr.send(params);
    }
    /**HTTP Request - Updates a grid cell in the grid table with a new owner
     * @param  {} id - id of the owner
     * @param  {} col - cell colum
     * @param  {} row - cell row
     */
    updateGrid(id, col, row) {
        var params = "&id=" + id + "&col=" + col + "&row=" + row;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'PHP/updateGrid.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                // console.log(this.responseText);
            }
        }
        xhr.send(params);
    }
    /**HTTP Request -  Retrieves a JSON representation of the grid from the grid table in the db.
     * @param  {} callback - function to call when retrieval completes
     */
    retrieveGrid(callback) {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'PHP/retrieveGrid.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                // console.log(this.responseText);
                var response = JSON.parse(this.responseText);
                callback(response);
            }
        }
        xhr.send();
    }
    /**Retrieves the current server time
     * @param  {} callback - function to execute upon retrieval
     */
    getTimeStamp(callback) {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'PHP/getTimeStamp.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                // console.log("x" + this.responseText);
                // var response = JSON.parse(this.responseText);
                var response = this.responseText;
                callback(response);
            }
        }
        xhr.send();
    }
    setWinner(username, callback) {
        console.log("someone won");
        var params = "&username=" + username;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'PHP/setWinner.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                // console.log(this.responseText);
                // console.log(username);
                var response = JSON.parse(this.responseText);
                callback(response);
            }
        }
        xhr.send(params);
    }
}

/**Object containing all http requests used to send and retrieve data from the database. To be used much like an interface in java for performing all database related operations.
 * Note that these operations are asynchronous, meaning the program will not wait for them to complete before continuing execution. To use the data they retrieve, you must use
 * callback functions i.e. pass a function as an argument which it will execute once it completes. Bare in mind that you cannot depend on these callback functions to happen in any particular order.
 */
const db = new DBCommands();


export default db;