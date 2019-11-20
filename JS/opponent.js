export default class Opponent {
    /**Class used to render opponents onto canvas for player to see */
    constructor(playerData, radius, color) {
        this.x = playerData.x;
        this.y = playerData.y;
        this.username = playerData.name;
        this.color = color;
        this.radius = radius;
    }

    /**Called by the main program loop to render the opponent onto the screen as a colored circle. (color set by db).
     * @param  {} canvas the canvas on which to draw the opponent
     */
    draw(canvas) {
        // console.log(this.username + " : " + this.x + " : " + this.y)
        var ctx = canvas.getContext("2d");
        ctx.beginPath();
        //circle
        ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        ctx.fillStyle = this.color;
        ctx.strokeStyle = "black";
        ctx.fill();
        ctx.stroke();
        ctx.closePath();
    }
}