'use strict';
export default class Paddle {
    constructor(posX, posY, width, height, speed) {
        this.x = posX;
        this.y = posY;
        this.speed = speed;
        this.leftPressed = false;
        this.rightPressed = false;
        this.width = width;
        this.height = height;
        this.keyDown = (e) => {
            if (e.key == "Right" || e.key == "ArrowRight") {
                this.rightPressed = true;
            } else
            if (e.key == "Left" || e.key == "ArrowLeft") {
                this.leftPressed = true;
            }
        }
        this.keyUp = (e) => {
            if (e.key == "Right" || e.key == "ArrowRight") {
                this.rightPressed = false;
            } else
            if (e.key == "Left" || e.key == "ArrowLeft") {
                this.leftPressed = false;
            }
        }
        document.addEventListener("keydown", this.keyDown, false);
        document.addEventListener("keyup", this.keyUp, false);
    }

    draw(canvas) {
        var ctx = canvas.getContext("2d");
        ctx.beginPath();
        //circle
        ctx.rect(this.x, this.y, this.width, this.height, Math.PI * 2);
        ctx.fillStyle = "blue";
        ctx.fill();
        ctx.closePath();
        if (this.rightPressed) {
            this.x += this.speed;
            if (this.x + this.width > canvas.width)
                this.x = canvas.width - this.width;
        }
        if (this.leftPressed) {
            this.x -= this.speed;
            if (this.x < 0)
                this.x = 0;
        }
    }
}