# web-programming
Game for Web Programming

Current Live version: http://www2.macs.hw.ac.uk/~cw78/web-programming/

WARNING! Lags really hard if you're not on a macs pc

Load the game up with the db installed or check my commit history to see what's been implemented. See HOW TO USE DB.txt for instructions on using the db.

The aim of this game is to aquire points by controlling the most squares on the grid out of all the players. As soon as you take the lead in terms of squares controlled, your score begins to increment. At the end of a 60 second timer, the player with the most points wins and a new win is added to their account. The other players have a loss added to their account and a new round starts. 

The main file in this project is game.js. This contains the main program loop called interval() which renders everything onto the canvas and performs realtime database operations. All other components of the game (eg. grid, player, opponents) where possible are written in seperate files and imported into game.js. All database (HTTP) functions are written in dbcommands.js. The php files they use are all named after the functions.

Rules:

Do not commit to master anything that:
- isn't working with the most up to date version
- Generates errors or warnings
- Doesn't run
- Causes obvious malfunctions to other parts of the game or prevents them working atall
- Do not write in game.js unless you have a very good reason to. (i.e. you need to use the program loop, instantiate an object, access data from an object using an asynchronous operation etc). Everything, should be done using JS modules wherever possible (see my other JS files for how to do this). Think of game.js like main() in java. We need to keep this clean.
There's not alot of time left so feel free to work on any of the following when you can.

Jobs that need doing:

Can be done without writing server side script:

- Styling the html login system
- Replacing the circle sprites with animated characters
- Adding sounds / music
- Adding Captcha box to login page to stop people spamming the db
- Add instructions to the login page on how to play

Requires Serverside Script:

- Powerup system (Create a power up class which can be used to randomly spawn an object on the canvas which gives the player a speed boost or a radius increase etc. when they collide with it.)
- Create new games to add players to if player count exceeds a certain limit
- System for disconnecting inactive players
- System for preventing players from scoring wins if there are no other players in the game

Some of what needs doing will involve some interaction with the database. Please see https://www.youtube.com/watch?v=82hnvUYY6QA on how to set up your own virtual host environment and interact with a database. Basic worflow: implement game mechanic > create http request function in dbcommands.js > write and execute db queries in php > (if retrieving data) write callback function to bring the data back into the game.
