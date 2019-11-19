# web-programming
Game for Web Programming

Current Live version: http://www2.macs.hw.ac.uk/~cw78/web-programming/

WARNING! Lags really hard if you're not on a macs pc

Also not secured yet so DO NOT enter passwords you actually use IRL

Began a new game from scratch. Not sure how to add to the one we had so hopefully this might be something we can make more progress with.

Load the game up with the db installed or check my commit history to see what's been implemented. See HOW TO USE DB.txt for instructions on using the db.

The aim of this game is to control the most squares on the grid by the time a timer runs out (yet to be implemented). I am currently working on a system to highlight the squares with the player colors. At the moment squares are just deleted when you run into them (not implemented in multiplayer yet).

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

- Styling the html login system
- Replacing the circle sprites with animated characters
- Adding sounds / music
- Securing the login system (hashing the passwords)
- Implement timer / gameover system (multiplayer)
- Powerup system (Create a power up class which can be used to randomly spawn an object on the canvas which gives the player a speed boost or a radius increase etc. when they collide with it.)

Most of what needs doing will involve some interaction with the server. Please see https://www.youtube.com/watch?v=82hnvUYY6QA on how to set up your own virtual host environment and interact with a database. Basic worflow: implement game mechanic > create http request function > write db queries in php > (if retrieving data) write callback function to bring the data back into the game.
