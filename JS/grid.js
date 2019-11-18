export default class Grid {
    constructor(columns, rows) {
        this.rows = rows;
        this.columns = columns;
        this.cellWidth = 0;
        this.cellHeight = 0;
        this.cellPadding = 0;
        this.offsetTop = canvas.height/8;
        this.offsetLeft = 0;
        this.cells = [];
        for (var c = 0; c < this.columns; c++) {
            this.cells[c] = [];
            for (var r = 0; r < this.rows; r++) {
                this.cells[c][r] = {
                    x: 0,
                    y: 0,
                    color: 1
                };
            }
        }
    }
//requires db information
    draw(canvas) {
        this.cellWidth = canvas.width/this.columns;
        this.cellHeight = (canvas.height-this.offsetTop)/this.rows;
        var ctx = canvas.getContext("2d");
        for (var c = 0; c < this.columns; c++) {
            for (var r = 0; r < this.rows; r++) {
                if (this.cells[c][r].color == 1) {
                    var cellX = (c * (this.cellWidth + this.cellPadding)) + this.offsetLeft;
                    var cellY = (r * (this.cellHeight + this.cellPadding)) + this.offsetTop;
                    this.cells[c][r].x = cellX
                    this.cells[c][r].y = cellY
                    ctx.beginPath();
                    ctx.strokeStyle = "black";
                    ctx.strokeRect(cellX, cellY, this.cellWidth, this.cellHeight);
                    ctx.fillStyle = "white";
                    ctx.fillRect(cellX, cellY, this.cellWidth-2, this.cellHeight-2);
                    ctx.closePath();
                }
            }
        }
    }
//requires player info
    collisionDetection(sprite) {
        for (var c = 0; c < this.columns; c++) {
            for (var r = 0; r < this.rows; r++) {
                var cell = this.cells[c][r];
                if (cell.color == 1) {
                    if (sprite.x > cell.x && sprite.x < cell.x + this.cellWidth && sprite.y > cell.y && sprite.y < cell.y + this.cellHeight) {
                        // sprite.dy *= -1;
                        cell.color = sprite.color;
                    }
                }
            }
        }
    }
}