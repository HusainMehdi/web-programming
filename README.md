# web-programming
Game for Web Programming

Began a new game from scratch. Not sure how to add to the one we had so hopefully this might be something we can make more progress with.

Load the game up with the db installed or check my commit history to see what's been implemented. See HOW TO USE DB.txt for instructions on using the db.

The aim of this game is to control the most squares on the grid by the time a timer runs out (yet to be implemented). I am currently working on a system to highlight the squares with the player colors. At the moment squares are just deleted when you run into them (not implemented in multiplayer yet).

The main file in this project is game.js. This contains the main program loop called interval() which renders everything onto the canvas and performs realtime database operations. All other components of the game (eg. grid, player, opponents) where possible are written in seperate files and imported into game.js. All database (HTTP) functions are written in dbcommands.js. The php files they use are all named after the functions.

Rules:

Do not commit to master anything that:
isn't working with the most up to date version
Generates errors or warnings
Doesn't run
Causes obvious malfunctions to other parts of the game or prevents them working atall
Do not write in game.js unless you have a very good reason to. (i.e. you need to use the program loop, instantiate an object, access data from an object using an asynchronous operation etc). Everything, should be done using JS modules wherever possible (see my other JS files for how to do this). Think of game.js like main() in java. We need to keep this clean.
There's not alot of time left so feel free to work on any of the following when you can.

Jobs that need doing:

Styling the html login system
Replacing the circle sprites with animated characters
Adding sounds / music
Securing the login system (hashing the passwords)
Implement timer / gameover system (multiplayer)
I will hopefully have the grid takeover system implemented by tomorrow or the day after.
Let me know if you have any questions.
Powerup system (Create a power up class which can be used to randomly 
spawn an object on the canvas which gives the player a speed boost or a radius increase etc. when they collide with it.)
