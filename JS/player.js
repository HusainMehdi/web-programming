'use strict';
import db from './dbcommands.js';
export default class Player {
    constructor(posX, posY, radius, speed, userAccount) {
        var colorArray = ["red", "yellow", "blue", "green"];
        var color = "white";
        this.x = posX;
        this.y = posY;
        this.speed = speed;
        this.leftPressed = false;
        this.rightPressed = false;
        this.upPressed = false;
        this.downPressed = false;
        this.radius = radius;
        this.offsetTop = canvas.height / 8;
        this.color = color; //todo
        this.userAccount = userAccount;
        this.username = userAccount.username;
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


        //called when player added to game
        function getPlayerId() {
            db.getPlayerId(userAccount.username, setColor);
        }

        //called when player id found
        function setColor(id) {
            color = colorArray[id % colorArray.length];
        }

        document.addEventListener("keydown", this.keyDown, false);
        document.addEventListener("keyup", this.keyUp, false);

        //adds player to active players table
        db.addPlayerToGame(this.username, this.x, this.y, getPlayerId);
    }


    draw(canvas) {
        var ctx = canvas.getContext("2d");
        ctx.beginPath();
        //circle
        ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        ctx.fillStyle = this.color;
        ctx.fill();
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