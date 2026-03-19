## SQL Practice Free Notes

Powershell commands to make an sql table and read sql files:
cd "C:\Users\Anhky Nguyen\githubSQL\recreated_tables\models"
sqlite3 models.db
.read schema.sql (SCHEMA SQL CREATES TABLE)
.read seed.sql (INSERTS INTO TABLE)
.read queries.sql (JUST QUERIES)


Example 1:
Which manufacturer has produced the most efficient vehicles on average?

SELECT 
    manufacturer_id, 
    AVG(best_mpge) AS average_efficiency
FROM 
    models
GROUP BY 
    manufacturer_id
ORDER BY 
    average_efficiency DESC
LIMIT 1;

Example 2: 
Top 10 most efficient models

SELECT 
    *
FROM 
    models
ORDER BY 
    best_mpge DESC
LIMIT 10;

Example 3:
10 oldest models

SELECT *
FROM models
ORDER BY year ASC
LIMIT 10;

Example 4:
Average mpge for each year

SELECT year, AVG(best_mpge) AS average_mpge
FROM models
GROUP BY year
ORDER BY year;

Example 5:
Oldest eletric fuel vehicles
SELECT models.model, models.year, fuels.fuel
FROM models
JOIN fuels ON models.fuel_id = fuels.fuel_id
WHERE fuels.fuel = 'electric'