CREATE TABLE xboxgames (
	game VARCHAR(200),
	year DEC,
	genre VARCHAR(200),
	xbox_global DEC,
	platform VARCHAR(30)
);
CREATE TABLE ps4games (
	game VARCHAR(200),
	year DEC,
	genre VARCHAR(200),
	ps4_global DEC,
	platform VARCHAR(30)
);

SELECT * FROM xboxgames 
SELECT * FROM ps4games 

-- compare which platform had the highest unit sales per game when game is on both platforms
SELECT xboxgames.game, xboxgames.xbox_global, ps4games.ps4_global
FROM xboxgames
INNER JOIN ps4games On
ps4games.game=xboxgames.game

-- Find the total game units by year for both platforms when game is on both platforms
SELECT xboxgames.year, SUM(xboxgames.xbox_global) AS "Xbox Game Unit Sales in Millions", SUM(ps4games.ps4_global) AS "PS4 Game Unit Sales in Millions"
FROM xboxgames
INNER JOIN ps4games ON
ps4games.game=xboxgames.game
GROUP BY xboxgames.year
