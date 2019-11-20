import DrawableObject from './drawableobject.js';
export default class Countdown extends DrawableObject {
    /**A countdown timer displaying the time left until the round completes */
    constructor(x, y) {
        super(x, y);
        this.time = 60;
    }
    draw(canvas) {
        super.draw(canvas);
        this.ctx.font = "16px Arial";
        this.ctx.fillStyle = "#0095DD";
        this.ctx.fillText("Time" + (this.time-1), canvas.width - canvas.width / 8, 20);
    }

    setTime(time) {
        this.time = 60 - parseInt(time.slice(-2));
    }
}