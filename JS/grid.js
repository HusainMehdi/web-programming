import db from './dbcommands.js';
import DrawableObject from './drawableobject.js';
export default class Grid extends DrawableObject {
    /**
     * Class used to render a grid object and store information pertaining to each cell
     */
    constructor(columns, rows, colorArray) {
        super();
        //data used to draw the grid
        this.rows = rows;
        this.columns = columns;
        this.offsetTop = canvas.height / 8;
        this.cells = [];
        this.colorArray = colorArray;
        //Initial render of the grid
        for (var c = 0; c < this.columns; c++) {
            this.cells[c] = [];
            for (var r = 0; r < this.rows; r++) {
                this.cells[c][r] = {
                    x: 0,
                    y: 0,
                    owner: -1
                };
            }
        }
    }

    /**Renders the grid continuously from the main program loop, setting the color of each cell to correspond with it's owner
     * @param  canvas The canvas on which to draw the grid
     */
    draw(canvas) {
        super.draw(canvas);
        this.cellWidth = canvas.width / this.columns;
        this.cellHeight = (canvas.height - this.offsetTop) / this.rows;
        for (var c = 0; c < this.columns; c++) {
            for (var r = 0; r < this.rows; r++) {
                var cellX = (c * this.cellWidth);
                var cellY = (r * this.cellHeight) + this.offsetTop;
                var cellOwner = this.cells[c][r].owner;
                this.cells[c][r].x = cellX
                this.cells[c][r].y = cellY
                this.ctx.strokeStyle = "black";
                this.ctx.strokeRect(cellX, cellY, this.cellWidth, this.cellHeight);
                if (cellOwner != -1)
                    this.ctx.fillStyle = this.colorArray[cellOwner % this.colorArray.length];
                    else this.ctx.fillStyle = "white";
                this.ctx.fillRect(cellX, cellY, this.cellWidth - 2, this.cellHeight - 2);
                this.ctx.closePath();
            }
        }
    }

    /**checks for overlap between a player and a cell. Updates the database with the new owner of the cell.
     * @param player  colliding player object
     */
    collisionDetection(player) {
        for (var c = 0; c < this.columns; c++) {
            for (var r = 0; r < this.rows; r++) {
                var cell = this.cells[c][r];
                if (player.x > cell.x && player.x < cell.x + this.cellWidth && player.y > cell.y && player.y < cell.y + this.cellHeight) {
                    if (cell.owner != player.id) {
                        console.log(cell.owner);
                        db.updateGrid(player.id, c, r);
                    }
                }
            }
        }
    }
}