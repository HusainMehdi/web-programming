//size of grid
var numberOfRows = 20;
var numberOfColumns = 30;

//colour for next clicked cell
var selectedColour = "blue";

//state for all owned cells (Rock/Paper/Scissors)
var playerState = "Scissors";

//player's username - retrieved from database if existing user
var playerName = prompt("Please enter your name");



//time of last click
var clickTime;

//true if cooldown time has elapsed
var clickAvailable = true;




//2d array for grid data (make this track the owners)
var gridOwner = new Array(numberOfColumns);

for (var i = 0; i < numberOfColumns; i++) {
    gridOwner[i] = new Array(numberOfRows);
};

//2d array for grid cells
var gridCell = new Array(numberOfColumns);

for (var i = 0; i < numberOfColumns; i++) {
    gridCell[i] = new Array(numberOfRows);
};

//2d array for cell colours
var gridColour = new Array(numberOfColumns);

for (var i = 0; i < numberOfColumns; i++) {
    gridColour[i] = new Array(numberOfRows);
};

//2d array for cell states (Rock/Paper/Scissors)
var gridState = new Array(numberOfColumns);

for (var i = 0; i < numberOfColumns; i++) {
    gridState[i] = new Array(numberOfRows);
};



//generates grid     
function clickableGrid(rows, cols, callback) {
    var i = 0;
    var grid = document.createElement('table');
    grid.className = 'grid';
    //generate rows
    for (var r = 0; r < rows; ++r) {
        var tr = grid.appendChild(document.createElement('tr'));
        //generate columns(cells)
        for (var c = 0; c < cols; ++c) {
            var cell = tr.appendChild(document.createElement('td'));

            gridCell[c][r] = cell;

            //temp: cell text
            cell.innerHTML = c + "," + r;

            //on click
            cell.addEventListener('click', (function (el, r, c, i) {
                return function () {
                    callback(el, r, c, i);
                }
            })(cell, r, c, i), false);
        }
    }
    return grid;
}




//GAMEPLAY:

//temp: on load, select random starting square
const startX = Math.floor(Math.random() * numberOfColumns)
const startY = Math.floor(Math.random() * numberOfRows)
gridOwner[startX][startY] = playerName;

//Update DB with staring square
updateDB('TRUE', '' + startX, '' + startY);

//change colour of cell to selectedColour
function changeColour(colour, col, row) {
    gridCell[col][row].style.background = colour;
    gridColour[col][row] = colour;
}

//change selected colour
function selectColour() {
    selectedColour = document.getElementById("colourSelector").value;

    // for (var i = 0; i < gridColour.length; i++) {
    //     for (var j = 0; j < gridColour[i].length; j++) {
    //         if (gridOwner[i][j] == playerName)
    //             changeColour(selectedColour, i, j)
    //             updateDB('TRUE', '' + i, '' + j);
    //     }
    }

}

//change selected state
function selectState() {
    playerState = document.getElementById("stateSelector").value;
    //capitalise
    playerState = playerState.charAt(0).toUpperCase() + playerState.slice(1);

    for (var i = 0; i < gridState.length; i++) {
        for (var j = 0; j < gridState[i].length; j++) {
            if (gridOwner[i][j] == playerName) {
                gridState[i][j] = playerState;
                updateDB('TRUE', '' + i, '' + j);
            }
        }
    }
}

//when cell is clicked, check adjacent cell then change
var lastClicked;
var grid = clickableGrid(numberOfRows, numberOfColumns, function (el, row, col, i) {
    //check adjacent cells type
    if ((gridState[col][row] == "") || (gridState[col][row] == "Scissors" && playerState == "Rock") || (gridState[col][row] == "Paper" && playerState == "Scissors") || (gridState[col][row] == "Rock" && playerState == "Paper")) {

        console.log("---------------------")
        //check adjacent cells ownership (error when out of limits )
        if (gridOwner[col][row + 1] == playerName || gridOwner[col][row - 1] == playerName || gridOwner[col][row] == playerName) {
            gridOwner[col][row] = playerName;
            changeColour(selectedColour, col, row);
            gridState[col][row] = playerState;
            //Callum-edit::
            updateDB('TRUE', '' + col, '' + row);
        }
        else if (col == 0) {
            if (gridOwner[col + 1][row] == playerName) {
                gridOwner[col][row] = playerName;
                changeColour(selectedColour, col, row);
                gridState[col][row] = playerState;
                //Callum-edit::
                updateDB('TRUE', '' + col, '' + row);
            }
        }
        else if (col == numberOfColumns - 1) {
            if (gridOwner[col - 1][row] == playerName) {
                gridOwner[col][row] = playerName;
                changeColour(selectedColour, col, row);
                gridState[col][row] = playerState;
                //Callum-edit::
                updateDB('TRUE', '' + col, '' + row);
            }
        }
        else if (gridOwner[col + 1][row] == playerName || gridOwner[col - 1][row] == playerName) {
            gridOwner[col][row] = playerName;
            changeColour(selectedColour, col, row);
            gridState[col][row] = playerState;
            //Callum-edit::
            updateDB('TRUE', '' + col, '' + row);
        }

    }

    //debug: print coord of clicked 
    console.log(getCell(col, row));

    //change colour
    //el.className='clicked';
    if (lastClicked) lastClicked.className = '';
    lastClicked = el;
});

document.body.appendChild(grid);





//updates grid periodically
setInterval(function () {
    for (var i = 0; i < numberOfColumns; i++) {
        for (var j = 0; j < numberOfRows; j++) {
            //update owned cells
            if (gridOwner[i][j] == playerName) {
                //debug: print owned
                gridCell[i][j].innerHTML = playerName;

                gridCell[i][j].style.borderColor = "gold";
                gridCell[i][j].style.borderWidth = "5px 5px 5px 5px";
                gridState[i][j] = playerState;
            }

            //update unowned cells
            else if (gridOwner[i][j] != null) {
                gridCell[i][j].innerHTML = gridOwner[i][j];
                gridCell[i][j].style.background = gridColour[i][j];
                gridCell[i][j].style.borderWidth = "1px 1px 1px 1px";
            }
        };
    };
    getFromDB();
}, 500);



//test multiplayer interaction - delete later

function testPlace(col, row, colour, owner, state) {
    gridOwner[col][row] = owner;
    gridColour[col][row] = colour;
    gridState[col][row] = state;
}

(function () {
    console.log(Date.now());
    testPlace(19, 9, "red", "P2", "Rock");
    testPlace(20, 9, "red", "P2", "Rock");
    testPlace(21, 9, "red", "P2", "Rock");
    testPlace(22, 9, "red", "P2", "Rock");
    testPlace(23, 9, "red", "P2", "Rock");
    testPlace(24, 9, "red", "P2", "Rock");
    testPlace(18, 10, "red", "P2", "Rock");
    testPlace(19, 10, "red", "P2", "Rock");
    testPlace(20, 10, "red", "P2", "Rock");
    testPlace(21, 10, "red", "P2", "Rock");
    testPlace(22, 10, "red", "P2", "Rock");
    testPlace(23, 10, "red", "P2", "Rock");
    testPlace(24, 10, "red", "P2", "Rock");
    testPlace(25, 10, "red", "P2", "Rock");
    testPlace(26, 10, "red", "P2", "Rock");
    testPlace(27, 10, "red", "P2", "Rock");
    testPlace(18, 11, "brown", "P2", "Rock");
    testPlace(19, 11, "brown", "P2", "Rock");
    testPlace(20, 11, "brown", "P2", "Rock");
    testPlace(21, 11, "NavajoWhite", "P2", "Rock");
    testPlace(22, 11, "NavajoWhite", "P2", "Rock");
    testPlace(23, 11, "NavajoWhite", "P2", "Rock");
    testPlace(24, 11, "black", "P2", "Rock");
    testPlace(25, 11, "NavajoWhite", "P2", "Rock");
    testPlace(17, 12, "brown", "P2", "Rock");
    testPlace(18, 12, "NavajoWhite", "P2", "Rock");
    testPlace(19, 12, "brown", "P2", "Rock");
    testPlace(20, 12, "NavajoWhite", "P2", "Rock");
    testPlace(21, 12, "NavajoWhite", "P2", "Rock");
    testPlace(22, 12, "NavajoWhite", "P2", "Rock");
    testPlace(23, 12, "NavajoWhite", "P2", "Rock");
    testPlace(24, 12, "black", "P2", "Rock");
    testPlace(25, 12, "NavajoWhite", "P2", "Rock");
    testPlace(26, 12, "NavajoWhite", "P2", "Rock");
    testPlace(27, 12, "NavajoWhite", "P2", "Rock");
    testPlace(17, 13, "brown", "P2", "Rock");
    testPlace(18, 13, "NavajoWhite", "P2", "Rock");
    testPlace(19, 13, "brown", "P2", "Rock");
    testPlace(20, 13, "brown", "P2", "Rock");
    testPlace(21, 13, "NavajoWhite", "P2", "Rock");
    testPlace(22, 13, "NavajoWhite", "P2", "Rock");
    testPlace(23, 13, "NavajoWhite", "P2", "Rock");
    testPlace(24, 13, "NavajoWhite", "P2", "Rock");
    testPlace(25, 13, "brown", "P2", "Rock");
    testPlace(26, 13, "NavajoWhite", "P2", "Rock");
    testPlace(27, 13, "NavajoWhite", "P2", "Rock");
    testPlace(28, 13, "NavajoWhite", "P2", "Rock");
    testPlace(17, 14, "brown", "P2", "Rock");
    testPlace(18, 14, "brown", "P2", "Rock");
    testPlace(19, 14, "NavajoWhite", "P2", "Rock");
    testPlace(20, 14, "NavajoWhite", "P2", "Rock");
    testPlace(21, 14, "NavajoWhite", "P2", "Rock");
    testPlace(22, 14, "NavajoWhite", "P2", "Rock");
    testPlace(23, 14, "NavajoWhite", "P2", "Rock");
    testPlace(24, 14, "brown", "P2", "Rock");
    testPlace(25, 14, "brown", "P2", "Rock");
    testPlace(26, 14, "brown", "P2", "Rock");
    testPlace(27, 14, "Brown", "P2", "Rock");
    testPlace(19, 15, "NavajoWhite", "P2", "Rock");
    testPlace(20, 15, "NavajoWhite", "P2", "Rock");
    testPlace(21, 15, "NavajoWhite", "P2", "Rock");
    testPlace(22, 15, "NavajoWhite", "P2", "Rock");
    testPlace(23, 15, "NavajoWhite", "P2", "Rock");
    testPlace(24, 15, "NavajoWhite", "P2", "Rock");
    testPlace(25, 15, "NavajoWhite", "P2", "Rock");
    testPlace(26, 15, "NavajoWhite", "P2", "Rock");
})();

//TO DO: Selector for colours, 2D array for grid colour, modify gridOwner to be gridOwner(owner of cells, compare own username with cells),
// check that selected grid ownership/ colour is different 


//--------------Database Link start-----------------

function getCell(col, row) {
    return {
        owner: gridOwner[col][row],
        colour: gridColour[col][row],
        state: gridState[col][row],
    }
}

function setCell(cell) {
    var col = cell.col;
    var row = cell.row;
    gridOwner[col][row] = "" + cell.owner;
    gridColour[col][row] = "" + cell.colour;
    gridState[col][row] = "" + cell.state;
}

function updateDB(hilighted, col, row) {
    cell = getCell(col, row);
    //convert data to named strings which PHP will recognise
    var params = "hilighted=" + hilighted + "&col=" + col + "&row=" + row + "&owner=" + cell.owner + "&colour=" + cell.colour + "&state=" + cell.state;

    var xhr = new XMLHttpRequest();


    xhr.open('POST', 'update.php', true);
    //set content type we're posting
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

    xhr.onload = function () {
        if (this.status == 200) {
            console.log(this.responseText);

        }
    }
    xhr.send(params);
}

function getFromDB() {

    var xhr = new XMLHttpRequest();


    xhr.open('GET', 'retrieve.php', true);
    //set content type we're posting
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

    xhr.onload = function () {
        if (this.status == 200) {
            // console.log(this.responseText);
            var gridFromDB = JSON.parse(this.responseText);
            // console.log(gridFromDB);
            for (var i = 0; i < gridFromDB.length; i++) {
                setCell(gridFromDB[i]);
                // if (gridFromDB[cell].hilighted == "1")
                //     changeColour(selectedColour, parseInt(gridFromDB[cell].col, 10), parseInt(gridFromDB[cell].row, 10));
            }
        }
    }
    xhr.send();
}

function clearDB() {
    //convert data to named strings which PHP will recognise

    var xhr = new XMLHttpRequest();


    xhr.open('POST', 'clear.php', true);
    //set content type we're posting
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

    xhr.onload = function () {
        if (this.status == 200) {
            console.log(this.responseText);
        }
    }
    xhr.send();
}

//--------------Database Link end-----------------