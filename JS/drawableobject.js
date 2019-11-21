export default class DrawableObject {
    /**An object which can be rendered onto the canvas.
     * @param  {} startPosX Starting x coordinate on the canvas
     * @param  {} startPosY Starting y coordinate on the canvas
     */
    constructor(startPosX, startPosY) {
        this.x = startPosX;
        this.y = startPosY;
    }
    /**Called by the main program loop to render the object onto the screen
     * @param  {} canvas the canvas on which to draw the object
     */
    draw(canvas) {
        this.ctx = canvas.getContext("2d");
        this.ctx.beginPath();
    }
}