class DBCommands {
    constructor() {}

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

    // Sends data of player to DB and retrieves data of opponents
    updatePlayerStatus(username, x, y, callback) {
        var params = "&username=" + username + "&x=" + x + "&y=" + y;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'PHP/updatePlayerStatus.php', true);
        //set content type we're posting
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                var playerData = JSON.parse(this.responseText);
                callback(playerData);
            }
        }
        xhr.send(params);
    }

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

    updateGrid(id, col, row) {
        var params = "&id=" + id + "&col=" + col + "&row=" + row;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'PHP/updateGrid.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                console.log(this.responseText);
            }
        }
        xhr.send(params);
    }

    retrieveGrid(){
        // var params = "&id=" + id + "&col=" + col + "&row=" + row;
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'PHP/retrieveGrid.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (this.status == 200) {
                console.log(this.responseText);
            }
        }
        xhr.send();
    }
}

const db = new DBCommands();


export default db;