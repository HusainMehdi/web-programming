import DrawableObject from './drawableobject.js';
export default class Opponent extends DrawableObject {
    /**Class used to render opponents onto canvas for player to see */
    constructor(playerData, radius, color) {
        super();
        this.x = playerData.x;
        this.y = playerData.y;
        this.username = playerData.name;
        this.color = color;
        this.radius = radius;
        this.cellsControlled = playerData.cellscontrolled;
        this.score = playerData.score;
    }

    /**Called by the main program loop to render the opponent onto the screen as a colored circle. (color set by db).
     * @param  {} canvas the canvas on which to draw the opponent
     */
    draw(canvas) {
        // console.log(this.username + " : " + this.x + " : " + this.y)
        super.draw(canvas);
        // this.ctx.beginPath();
        //circle
        this.ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        this.ctx.fillStyle = this.color;
        this.ctx.strokeStyle = "black";
        this.ctx.fill();
        this.ctx.stroke();
        this.ctx.closePath();
    }
}