'use strict';

import Sprite from './sprite.js';
import Grid from './grid.js';
import db from './dbcommands.js';
import Opponent from './opponent.js';

export default class Game {
    constructor(userAccount) {
        //ref to canvas
        var canvas = document.querySelector('#canvas');
        //stores the 2d rendering context (actual tool for painting on the canvas)
        var opponents = [];
        var ctx = canvas.getContext("2d");
        var sprite = new Sprite(canvas.width / 2, canvas.height / 2, 5, 7);
        var grid = new Grid(16, 16);
        var username = userAccount.username;
        //adds player to active players table
        db.addPlayerToGame(username, sprite.x, sprite.y);

        // remove player from game if they close the window or refresh
        window.onbeforeunload = function () {
            db.removePlayerFromGame(username);
        }

        //Sends information about this player to DB and retrieves information about other players
        //executed as callback function in db.updatePlayerStatus
        function updatePlayerStatus(playerData) {
           opponents = playerData;
        }

        var interval = () => {
            //clear whole canvas before each draw
            ctx.clearRect(0, 0, canvas.width, canvas.height)
            draw(grid);
            draw(sprite);
            db.updatePlayerStatus(username, sprite.x, sprite.y, updatePlayerStatus);
             // console.log("data in game: "+playerData[0].x)
             for(var i=0; i<opponents.length; i++){
                draw(new Opponent(opponents[i], 5));
            }
            // for(opponent : opponents)
            //////draw(opponent)
            drawScore();
            grid.collisionDetection(sprite);
            // gameOverCheck();
            requestAnimationFrame(interval)
        };

        function draw(obj) {
            obj.draw(canvas);
        }

        function gameOverCheck() {
            if (ball.y + ball.dy > canvas.height - ball.radius) {
                if (ball.x > sprite.x && ball.x < sprite.x + sprite.width) {
                    ball.dy *= -1;
                } else {
                    //alert("Game Over")
                    //document.location.reload();
                }
            }
        }

        function drawScore() {
            ctx.font = "16px Arial";
            ctx.fillStyle = "#0095DD";
            ctx.fillText("" + username, 8, 20);
        }

        interval();
    }


}