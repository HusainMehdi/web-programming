'use strict';
/**Class used to render you the player onto the canvas. Defines a movement system and tracks location coordinates to be sent to the db for other players to see.
 * retrieves id from the db used to define your color
 */
export default class Player {
    constructor(posX, posY, userAccount) {
        this.x = posX;
        this.y = posY;
        this.speed = 7;
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
        var ctx = canvas.getContext("2d");
        ctx.beginPath();
        //circle
        ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        ctx.fillStyle = this.color;
        ctx.strokeStyle = "black";
        ctx.fill();
        ctx.stroke();
        ctx.closePath();
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
}