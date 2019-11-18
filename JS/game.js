'use strict';

import Player from './player.js';
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
        var player = new Player(canvas.width / 2, canvas.height / 2, 5, 7, userAccount);
        var grid = new Grid(16, 16);

        // remove player from game if they close the window or refresh
        window.onbeforeunload = function () {
            db.removePlayerFromGame(player.username);
        }

        //Sends information about this player to DB and retrieves information about other players
        //executed as callback function in db.updatePlayerStatus
        function updatePlayerStatus(playerData){
            opponents = playerData;
        }

        var interval = () => {
            //clear whole canvas before each draw
            ctx.clearRect(0, 0, canvas.width, canvas.height)
            draw(grid);
            draw(player);
            // console.log("data in game: "+playerData[0].x)
            for (var i = 0; i < opponents.length; i++) {
                draw(new Opponent(opponents[i], 5));
            }
            db.updatePlayerStatus(player.username, player.x, player.y, updatePlayerStatus);
            // for(opponent : opponents)
            //////draw(opponent)
            drawScore();
            grid.collisionDetection(player);
            // gameOverCheck();
            requestAnimationFrame(interval)
        };

        function draw(obj) {
            obj.draw(canvas);
        }

        function gameOverCheck() {
            if (ball.y + ball.dy > canvas.height - ball.radius) {
                if (ball.x > player.x && ball.x < player.x + player.width) {
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
            ctx.fillText("" + player.username, 8, 20);
        }

        interval();
    }


}