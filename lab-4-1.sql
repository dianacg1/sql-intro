-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

-- SELECT players.id, players.first_name, players.last_name, stats.hits, stats.id,
-- FROM stats INNER JOIN id on id.players = id.stats 
-- WHERE first_name.players = "Barry" AND last_name.players = "Bonds";

SELECT SUM(stats.hits)
FROM players INNER JOIN stats ON players.id = stats.player_id
WHERE first_name = "Barry"
AND last_name = "Bonds";
