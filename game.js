

var lastClicked;
var numberLastClicked = 1;
clearDB();
var grid = clickableGrid(10, 10, function (el, row, col, i) {
    console.log("You clicked on element:", el);
    console.log("You clicked on row:", row);
    console.log("You clicked on col:", col);
    console.log("You clicked on item #:", i);

    el.className = 'clicked';
    if (lastClicked) lastClicked.className = '';
    lastClicked = el;
});

document.body.appendChild(grid);

function clickableGrid(rows, cols, callback) {
    var i = 0;
    var grid = document.createElement('table');
    grid.className = 'grid';
    for (var r = 0; r < rows; ++r) {
        var tr = grid.appendChild(document.createElement('tr'));
        for (var c = 0; c < cols; ++c) {
            var cell = tr.appendChild(document.createElement('td'));
            cell.innerHTML = ++i;
            cell.addEventListener('click', (function (el, r, c, i) {
                return function () {
                    callback(el, r, c, i);
                    updateDB(''+i, 'TRUE');
                    updateDB(''+numberLastClicked, 'FALSE');
                    numberLastClicked = i;
                }
            })(cell, r, c, i), false);
        }
    }
    return grid;
}

function updateDB(number, hilighted) {
    //convert data to named strings which PHP will recognise
var params = "number="+number+"&hilighted="+hilighted;

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