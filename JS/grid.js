import db from './dbcommands.js';
export default class Grid {
    constructor(columns, rows) {
        this.rows = rows;
        this.columns = columns;
        this.cellWidth = 0;
        this.cellHeight = 0;
        this.cellPadding = 0;
        this.offsetTop = canvas.height / 8;
        this.offsetLeft = 0;
        this.cells = [];
        for (var c = 0; c < this.columns; c++) {
            this.cells[c] = [];
            for (var r = 0; r < this.rows; r++) {
                this.cells[c][r] = {
                    x: 0,
                    y: 0,
                    status: 1
                };
            }
        }
    }
    //requires db information
    draw(canvas) {
        this.cellWidth = canvas.width / this.columns;
        this.cellHeight = (canvas.height - this.offsetTop) / this.rows;
        var ctx = canvas.getContext("2d");
        for (var c = 0; c < this.columns; c++) {
            for (var r = 0; r < this.rows; r++) {
                if (this.cells[c][r].status == 1) {
                    var cellX = (c * (this.cellWidth + this.cellPadding)) + this.offsetLeft;
                    var cellY = (r * (this.cellHeight + this.cellPadding)) + this.offsetTop;
                    this.cells[c][r].x = cellX
                    this.cells[c][r].y = cellY
                    ctx.beginPath();
                    ctx.strokeStyle = "black";
                    ctx.strokeRect(cellX, cellY, this.cellWidth, this.cellHeight);
                    ctx.fillStyle = "white";
                    ctx.fillRect(cellX, cellY, this.cellWidth - 2, this.cellHeight - 2);
                    ctx.closePath();
                }
            }
        }
    }
    //requires player info
    collisionDetection(player) {
        for (var c = 0; c < this.columns; c++) {
            for (var r = 0; r < this.rows; r++) {
                var cell = this.cells[c][r];
                if (cell.status == 1) {
                    if (player.x > cell.x && player.x < cell.x + this.cellWidth && player.y > cell.y && player.y < cell.y + this.cellHeight) {
                        // player.dy *= -1;
                        cell.status = 0;
                        db.updateGrid(player.id, c, r);
                    }
                }
            }
        }
    }
}