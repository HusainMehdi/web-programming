# web-programming
Game for Web Programming

-MMO
-Grid based
-Each player starts by claiming a random grid square
-Every x minutes they gain the ability to click and claim an unclaimed grid space next to any of their own square

*Win state: Control more grid spaces than any other person playing

-PvP: Each player has one of three states that universally apply to all of their squares 
-States can be changed after x*100 minutes (longer than the square claiming cooldown)
---(OR some other way? e.g. after a certain number of grid claim? after spending some points?)
-Your state allows you to claim other players squares that are weak to you, 
  and have your squares claimed by players that are strong against you,
  players with identical states won't claim or be claimed by the other one
-(think rock/paper/scissors)

(Additional features: let squares be individially coloured to make pictures/messages [see Reddit Place])
