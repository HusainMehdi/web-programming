import DrawableObject from './drawableobject.js';
export default class Countdown extends DrawableObject {
    /**A countdown timer displaying the time left until the round completes */
    constructor(x, y) {
        super(x, y);
        this.time = "";
    }
    draw(canvas) {
        super.draw(canvas);
        var ctx = canvas.getContext("2d");
        // console.log(this.time);
        ctx.font = "16px Arial";
        ctx.fillStyle = "#0095DD";
        ctx.fillText("" + this.time, canvas.width - canvas.width / 8, 20);
    }

    setTime(time) {
        this.time = 60 - parseInt(time.slice(-2));
    }
}