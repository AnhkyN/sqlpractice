-- SELECT * FROM models;

/*
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

SELECT *
FROM models
ORDER BY year
LIMIT 10;


SELECT year, AVG(best_mpge) AS average_mpge
FROM models
GROUP BY year
ORDER BY year;

SELECT * FROM fuels;

SELECT models.model, models.year, fuels.fuel
FROM models
JOIN fuels ON models.fuel_id = fuels.fuel_id
WHERE fuels.fuel = 'electric'

SELECT * FROM manufacturers;

SELECT manufacturers.manufacturer, COUNT(models.model) AS num_hybrid_vehicles
FROM models
JOIN manufacturers ON models.manufacturer_id = manufacturers.manufacturer_id
JOIN fuels ON models.fuel_id = fuels.fuel_id
WHERE fuels.fuel = 'hybrid electric'
GROUP BY manufacturers.manufacturer
ORDER BY num_hybrid_vehicles DESC

SELECT m.manufacturer_id, f.fuel, AVG(mod.best_mpge) AS avg_best_mpge
FROM manufacturers m
JOIN models mod ON m.manufacturer_id = mod.manufacturer_id
JOIN fuels f ON mod.fuel_id = f.fuel_id
GROUP BY m.manufacturer, f.fuel;*/

SELECT m.manufacturer_id, manufacturer, f.fuel, COUNT(*) as model_count
FROM manufacturers m
JOIN models mod ON m.manufacturer_id = mod.manufacturer_id
JOIN fuels f ON mod.fuel_id = f.fuel_id
GROUP BY m.manufacturer, manufacturer, f.fuel
ORDER BY model_count DESC;

