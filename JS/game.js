'use strict';

import Player from './player.js';
import Grid from './grid.js';
import db from './dbcommands.js';
import Opponent from './opponent.js';
/**The core game class which imports the various components of the game and renders them onto the canvas
 * the function interval() defines the main program loop and executes real time rendering and updating
 * of player and grid components.
 */
export default class Game {
    constructor(userAccount) {
        var canvas = document.querySelector('#canvas');
        // ctx stores the 2d rendering context (actual tool for painting on the canvas)
        var ctx = canvas.getContext("2d");
        //list of opponents, updated and rendered to the canvas with each tick of interval()
        var opponents = [];
        //player colors
        var colorArray = ["red", "orange", "blue", "green"];
        //The sprite you are in control of
        var player = new Player(canvas.width / 2, canvas.height / 2, userAccount);
        //add yourself to activeplayers in db
        db.addPlayerToGame(player.username, player.x, player.y, getPlayerId);
        //generate the grid
        var grid = new Grid(16, 16, colorArray);

        // removes you from activeplayers (db) if you close the window or refresh
        window.onbeforeunload = function () {
            db.removePlayerFromGame(player.username);
        }

        /** The main program loop. Executes all rendering, retrieves opponent and grid data in real time.
         */
        var interval = () => {
            //clear whole canvas before each draw
            ctx.clearRect(0, 0, canvas.width, canvas.height)
            draw(grid);
            draw(player);
            for (var i = 0; i < opponents.length; i++) {
                var color = colorArray[opponents[i].id % colorArray.length]
                draw(new Opponent(opponents[i], player.radius, color));
            }
            db.updatePlayerStatus(player.username, player.x, player.y, updatePlayerStatus);
            db.retrieveGrid(allocateCells);
            drawName();
            grid.collisionDetection(player, player.id);
            //recalls interval() continuously at approximately 60hz.
            requestAnimationFrame(interval)
        };

        //initiate the program loop
        interval();

        /**Maps the cell information (i.e. ownership) stored in db onto the cells in this game
         * @param  {} dbgrid Grid status returned from db containing information on the state of each cell. Most importantly ownership.
         */
        function allocateCells(dbgrid) {
            // console.log(grid);
            for (var i = 0; i < dbgrid.length; i++) {
                grid.cells[dbgrid[i].col][dbgrid[i].row].owner = dbgrid[i].owner;
            }

        }
        /**renders a drawable object onto the canvas using it's stored information to determine it's location and visual attributes
         * @param  {} obj - The object to draw
         */
        function draw(obj) {
            obj.draw(canvas);
        }

        /**Sends information about this player to DB and retrieves information about other players.
         * Called when asynchronous dbcommand updatePlayerStatus() completes.
         * @param  {} playerData Data obtained from the db regarding the number of players in the game, their location and id/playernumber
         */
        function updatePlayerStatus(playerData) {
            opponents = playerData;
        }

        /**retrieves the id of the player (you) from db. This id is effectively a temporary player number set when you join a game.
         * It is used to assign your player color and removed when you leave
         * @param  {} setColor
         */
        function getPlayerId() {
            db.getPlayerId(player.username, setColor);
        }

        /**called when player id found. Uses id to allocate a player color.
         * @param  {} id - player number used to allocate a player color
         */
        function setColor(id) {
            var color = colorArray[id % colorArray.length];
            player.color = color;
            player.id = id;
        }

        /**renders your account name in the top left corner of the canvas
         */
        function drawName() {
            ctx.font = "16px Arial";
            ctx.fillStyle = "#0095DD";
            ctx.fillText("" + player.username, 8, 20);
        }
    }
}