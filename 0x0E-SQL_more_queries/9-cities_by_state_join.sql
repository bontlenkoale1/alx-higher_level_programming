-- Lists all cities of CA in the database hbtn_0d_usa.
-- Results are sorted in ascending ordered by cities.id.
SELECT cities.id, cities.name, states.name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;
