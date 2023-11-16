-- Select All Columns for a Specific River
SELECT *
FROM rivers
WHERE river_name = 'Nile';

-- Select Rivers with Outflow to Atlantic Ocean
SELECT *
FROM rivers
WHERE outflow LIKE '%Atlantic Ocean%';

-- Select Rivers Sorted by Average Discharge in Descending Order
SELECT *
FROM rivers
ORDER BY average_discharge DESC;

-- Select Rivers with a Lenght Between 1000 and 6000 Kilometers
SELECT *
FROM rivers
WHERE length BETWEEN 1000 AND 6000;

-- Select Rivers with Outflow Containing 'Sea' and Sorted by Length in Ascending Order
SELECT *
FROM rivers
WHERE outflow LIKE '%Sea%'
ORDER BY length ASC;

-- Select Rivers with Drainage Areas Greater Than the Average Drainage Area
SELECT *
FROM rivers
WHERE drainage_area > (SELECT AVG(drainage_area) FROM rivers);

-- Select the Top 3 Longest Rivers
SELECT *
FROM rivers
ORDER BY length DESC
LIMIT 3;

-- Select Rivers with Names Starting with 'M' and Length Greater Than 4000 and Sorted by Length in Ascending Order
SELECT *
FROM rivers
WHERE river_name LIKE 'M%' AND length > 4000
ORDER BY length ASC;

-- Select Rivers with length greater than 2000 and an average discharge greater than 15000 Sorted by rivers name in Descending Order
SELECT *
FROM rivers
WHERE length > 2000 OR average_discharge > 15000
order by river_name DESC;

-- Select Rivers with Outflow In 'Black sea' and 'Atlantic ocean'
SELECT * 
FROM rivers
WHERE outflow IN ('Black sea', 'Atlantic Ocean');

-- Select the River with the Maximum Length
SELECT *
FROM rivers
WHERE length = (SELECT MAX(length) FROM rivers);

-- Select the River with the Minimum Average Discharge
SELECT *
FROM rivers
WHERE average_discharge = (SELECT MIN(average_discharge) FROM rivers);

-- Select the Maximum Length Among All Rivers
SELECT MAX(length) AS max_length
FROM rivers;

-- Select the Minimum Average Discharge Among All Rivers
SELECT MIN(average_discharge) AS min_avg_discharge
FROM rivers;
