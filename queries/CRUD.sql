-- Insert a New Continent
INSERT INTO continents (continent_code, continent_name)
VALUES ('XX', 'North America');

-- Insert a New Country
INSERT INTO countries (country_code, iso_code, country_name, currency_code, continent_code, population, are_in_sq_km, capital)
VALUES ('XX', 'USA', 'United States', 'USD', 'NA', 331002651, 9833517, 'New York');

-- Insert a New Mountain Range
INSERT INTO mountains (mountain_range)
VALUES ('Rocky Mountains');

-- Select All Countries in Europe
SELECT country_name
FROM countries
WHERE continent_code = 'EU';

-- Select Rivers and their Outflow
SELECT river_name, outflow
FROM rivers;

-- Update Population of a Country
UPDATE countries
SET population = 70000000
WHERE country_code = 'GB';

-- Update the Name of a Mountain Range
UPDATE mountains
SET mountain_range = 'Stara Planina'
WHERE id = 1;

-- Update Country code of a Mountain
UPDATE mountains_countries
SET country_code = 'BG'
WHERE mountain_id = 1;

-- Delete the Newly Inserted Continent
DELETE FROM continents
WHERE continent_code = 'XX';

-- Delete the Newly Inserted Country
DELETE FROM countries
WHERE country_code = 'XX'

-- Delete the Newly Inserted Mountain Range
DELETE FROM mountains
WHERE mountain_range = 'Rocky Mountains';
