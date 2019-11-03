var numberOfRows = 20;
var numberOfColumns = 30;

var selectedColour = "blue";

//callum edit:: wipe DB on refresh::
clearDB();

//2d array for grid data (make this track the owners)
var gridData = new Array(numberOfColumns);

for (var i = 0; i < numberOfColumns; i++) {
    gridData[i] = new Array(numberOfRows);
};


//2d array for grid cells
var gridCell = new Array(numberOfColumns);

for (var i = 0; i < numberOfColumns; i++) {
    gridCell[i] = new Array(numberOfRows);
};


//2d array for cell colours
var gridColour = new Array(numberOfColumns);

for (var i = 0; i < numberOfColumns; i++) {
    gridCell[i] = new Array(numberOfRows);
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
//Callum-edit:: store start position so it can be sent to DB
const startX = Math.floor(Math.random() * 10)
const startY = Math.floor(Math.random() * 10)
gridData[startX][startY] = "mine";
//Update db with starting position
updateDB('TRUE', '' + startX, '' + startY);



//change colour of cell to selectedColour
function changeColour(colour, col, row) {
    gridCell[col][row].style.background = colour;

}



var lastClicked;
var grid = clickableGrid(numberOfRows, numberOfColumns, function (el, row, col, i) {
    //check adjacent cells (error when out of limits )
    if (gridData[col][row + 1] == "mine" || gridData[col][row - 1] == "mine") {
        gridData[col][row] = "mine";
        changeColour(selectedColour, col, row);

        //Callum-edit::
        updateDB('TRUE', '' + col, '' + row);

    }
    else if (col == 0) {
        if (gridData[col + 1][row] == "mine") {
            gridData[col][row] = "mine";
            changeColour(selectedColour, col, row);

            //Callum-edit::
            updateDB('TRUE', '' + col, '' + row);

        }
    }
    else if (col == numberOfColumns - 1) {
        if (gridData[col - 1][row] == "mine") {
            gridData[col][row] = "mine";
            changeColour(selectedColour, col, row);

            //Callum-edit::
            updateDB('TRUE', '' + col, '' + row);

        }
    }
    else if (gridData[col + 1][row] == "mine" || gridData[col - 1][row] == "mine") {
        gridData[col][row] = "mine";
        changeColour(selectedColour, col, row);

        //Callum-edit::
        updateDB('TRUE', '' + col, '' + row);
    }


    //debug: print coord of clicked 
    console.log(col, row);

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
            //debug: print owned
            if (gridData[i][j] == "mine") {
                console.log("owned:", i, j);
                gridCell[i][j].innerHTML = "mine";

                ////TODO////
                getFromDB();
                // changeColour(selectedColour, col, row);

            }
        };
    };
}, 3000);




//TO DO: Selector for colours, 2D array for grid colour, modify gridData to be gridOwner(owner of cells, compare own username with cells),
// check that selected grid ownership/ colour is different 


//--------------Database Link start-----------------
function updateDB(hilighted, col, row) {
    //convert data to named strings which PHP will recognise
    var params = "hilighted=" + hilighted + "&col=" + col + "&row=" + row;

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
            console.log(this.responseText);
            var gridFromDB = JSON.parse(this.responseText);
            for (var cell in gridFromDB) {
                if (gridFromDB[cell].hilighted == "1")
                    changeColour(selectedColour, parseInt(gridFromDB[cell].col,10), parseInt(gridFromDB[cell].row,10));
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