'use strict';

import Player from './player.js';
import Grid from './grid.js';
import db from './dbcommands.js';
import Opponent from './opponent.js';
import Countdown from './countdown.js';
// import work from './worker.js';

export default class Game {
    /**The core game class which imports the various components of the game and renders them onto the canvas
     * the function interval() defines the main program loop and executes real time rendering and updating
     * of player and grid components.
     */
    constructor(userAccount) {
        var canvas = document.querySelector('#canvas');
        // ctx stores the 2d rendering context (actual tool for painting on the canvas)
        var ctx = canvas.getContext("2d");
        //list of opponents, updated and rendered to the canvas with each tick of interval()
        var opponents = [];
        //player colors
        var colorArray = ["red", "orange", "blue", "green", "pink", "purple", "cyan"];
        //The sprite you are in control of
        var player = new Player(canvas.width / 2, canvas.height / 2, userAccount);
        //add yourself to activeplayers in db
        db.addPlayerToGame(player.username, player.x, player.y, getPlayerId);
        //generate the grid
        var grid = new Grid(16, 16, colorArray);
        //incremented with each tick of interval(). Used to attenuate the frequency at which certain processes execute
        var countdown = new Countdown(8, 20);
        this.clock = 0;

        // removes you from activeplayers (db) if you close the window or refresh
        window.onbeforeunload = function () {
            db.removePlayerFromGame(player.username);
        }

        let worker = new Worker('JS/worker.js')
        /** The main program loop. Executes all rendering, retrieves opponent and grid data from server in real time. functions with a dash behind them eg. _getTimeStamp
         * are throttled, meaning they have a minimum wait time between each request they can make to the server. This serves to improve performance and prevent 
         * overloading of browser resources.
         */
        worker.onmessage = () => {
            this.clock++;
            //clear whole canvas before each draw
            ctx.clearRect(0, 0, canvas.width, canvas.height)
            _getTimeStamp(this.clock, 60);
            draw(grid);
            draw(player);
            draw(countdown);
            // drawScoreBoard(opponents, ctx);
            for (var i = 0; i < opponents.length; i++) {
                var color = colorArray[opponents[i].id % colorArray.length]
                drawScoreBoard(opponents, ctx, i, color);
                if (opponents[i].id != player.id)
                    draw(new Opponent(opponents[i], player.radius, color));
            }
            db.updatePlayerStatus(player.username, player.x, player.y, updatePlayerStatus);
            _retrieveGrid(this.clock, 5);
            if (player.upPressed || player.downPressed || player.leftPressed || player.rightPressed)
                grid.collisionDetection(player, player.id);
        };

        /**renders a drawable object onto the canvas using it's stored information to determine it's location and visual attributes
         * @param  {} obj - The object to draw
         */
        function draw(obj) {
            obj.draw(canvas);
        }

        /**Retrieves the current time of the server and uses it to set the countdown timer
         * @param  {} clock reference to global game clock
         * @param  {} minInterval The minimum time interval between each server request. eg. a value of 60 will call the server once every 60 interval() cycles.
         */
        function _getTimeStamp(clock, minInterval) {
            if (clock % minInterval == 0) {
                db.getTimeStamp(getTimeStamp);
            }

            function getTimeStamp(time) {
                countdown.setTime(time);
                // console.log(countdown.time);
                if (countdown.time < 2)
                    newRound();
            }
        }

        /**Starts a new round
         */
        function newRound() {
            //retrieve the name of the winner, increment their wins in the db
            db.setWinner(player.username, updateWinLoss);

            function updateWinLoss(winloss) {
                console.log(winloss);
                player.wins = winloss.wins;
                player.losses = winloss.losses;
            }
        }

        /**Retrieves a JSON representation of the grid from the database
         * @param  {} clock reference to global game clock
         * @param  {} minInterval The minimum time interval between each server request
         */
        function _retrieveGrid(clock, minInterval) {
            if (clock % minInterval == 0) {
                db.retrieveGrid(allocateCells);
            }
        }

        /**Maps the cell information (i.e. ownership) stored in db onto the cells in this game
         * @param  {} dbgrid Grid status returned from db containing information on the state of each cell. Most importantly ownership.
         */
        function allocateCells(dbgrid) {
            // console.log(grid);
            for (var i = 0; i < dbgrid.length; i++) {
                grid.cells[dbgrid[i].col][dbgrid[i].row].owner = dbgrid[i].owner;
            }

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

        function drawScoreBoard(opponents, ctx, i, color) {
            ctx.font = "12px Arial";
            ctx.fillStyle = color;
            ctx.fillText(opponents[i].name + " - Cells: " + opponents[i].cellscontrolled + " Score: " + opponents[i].score, 20, 20 + 10 * i);
        }

    }
}