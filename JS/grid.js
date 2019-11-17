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
                    status: 1
                };
            }
        }
    }

    draw(canvas) {
        this.cellWidth = canvas.width/this.columns;
        this.cellHeight = (canvas.height-this.offsetTop)/this.rows;
        var ctx = canvas.getContext("2d");
        for (var c = 0; c < this.columns; c++) {
            for (var r = 0; r < this.rows; r++) {
                if (this.cells[c][r].status == 1) {
                    var cellX = (c * (this.cellWidth + this.cellPadding)) + this.offsetLeft;
                    var cellY = (r * (this.cellHeight + this.cellPadding)) + this.offsetTop;
                    this.cells[c][r].x = cellX
                    this.cells[c][r].y = cellY
                    ctx.beginPath();
                    ctx.strokeStyle = "#0095DD";
                    ctx.strokeRect(cellX, cellY, this.cellWidth, this.cellHeight);
                    ctx.closePath();
                }
            }
        }
    }

    collisionDetection(obj) {
        for (var c = 0; c < this.columns; c++) {
            for (var r = 0; r < this.rows; r++) {
                var cell = this.cells[c][r];
                if (cell.status == 1) {
                    if (obj.x > cell.x && obj.x < cell.x + this.cellWidth && obj.y > cell.y && obj.y < cell.y + this.cellHeight) {
                        obj.dy *= -1;
                        cell.status = 0;
                    }
                }
            }
        }
    }
}