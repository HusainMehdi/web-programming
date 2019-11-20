'use strict';
import DrawableObject from './drawableobject.js';
export default class Player extends DrawableObject {
    /**Class used to render you the player onto the canvas. Defines a movement system and tracks location coordinates to be sent to the db for other players to see.
     * retrieves id from the db used to define your color
     */
    constructor(posX, posY, userAccount) {
        super(posX, posY);
        this.speed = 4;
        this.leftPressed = false;
        this.rightPressed = false;
        this.upPressed = false;
        this.downPressed = false;
        this.radius = 5;
        this.offsetTop = canvas.height / 8;
        this.userAccount = userAccount;
        this.username = userAccount.username;
        this.color = "black";
        this.id = 0;
        this.wins = userAccount.wins;
        this.losses = userAccount.losses;

        /** Moves the player in the direction corresponding to the arrow key pressed.
         * @param  {} e keypress event which triggers the function
         * @returns this
         */
        this.keyDown = (e) => {
            switch (e.key) {
                case "Right":
                case "ArrowRight":
                    this.rightPressed = true;
                    break;
                case "Left":
                case "ArrowLeft":
                    this.leftPressed = true;
                    break;
                case "Up":
                case "ArrowUp":
                    this.upPressed = true;
                    break;
                case "Down":
                case "ArrowDown":
                    this.downPressed = true;
                    break;
            }
        }
        /** Stops the player when arrow keys are released
         * @param  {} e keypress event which triggers the function
         * @returns this
         */
        this.keyUp = (e) => {
            switch (e.key) {
                case "Right":
                case "ArrowRight":
                    this.rightPressed = false;
                    break;
                case "Left":
                case "ArrowLeft":
                    this.leftPressed = false;
                    break;
                case "Up":
                case "ArrowUp":
                    this.upPressed = false;
                    break;
                case "Down":
                case "ArrowDown":
                    this.downPressed = false;
                    break;
            }

        }

        document.addEventListener("keydown", this.keyDown, false);
        document.addEventListener("keyup", this.keyUp, false);

    }
    /**Called by the main program loop to render the player onto the screen as a colored circle
     * @param  {} canvas the canvas on which to draw the player
     */
    draw(canvas) {
        super.draw(canvas);
        this.drawName(this.ctx, canvas);
        this.drawWinLoss(this.ctx, canvas);
        //circle
        this.ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        this.ctx.fillStyle = this.color;
        this.ctx.strokeStyle = "black";
        this.ctx.fill();
        this.ctx.stroke();
        this.ctx.closePath();
        if (this.rightPressed) {
            this.x += this.speed;
            if (this.x + this.radius > canvas.width)
                this.x = canvas.width - this.radius;
        }
        if (this.leftPressed) {
            this.x -= this.speed;
            if (this.x - this.radius < 0)
                this.x = this.radius;
        }
        if (this.upPressed) {
            this.y -= this.speed;
            if (this.y - this.radius < this.offsetTop)
                this.y = this.radius + this.offsetTop;
        }
        if (this.downPressed) {
            this.y += this.speed;
            if (this.y + this.radius > canvas.height)
                this.y = canvas.height - this.radius;
        }
    }

        /**renders your account name in the top left corner of the canvas
         */
        drawName(ctx, canvas) {
            ctx.font = "16px Arial";
            ctx.fillStyle = "#0095DD";
            ctx.fillText("" + this.username, 8, 20);
        }

        /**renders your account name in the top left corner of the canvas
         */
        drawWinLoss(ctx, canvas) {
            ctx.font = "16px Arial";
            ctx.fillStyle = "#0095DD";
            ctx.fillText("Wins: " + this.wins, canvas.width/16*5, 20);
            ctx.fillText("Losses: " + this.losses,canvas.width/16*9, 20);
        }
}