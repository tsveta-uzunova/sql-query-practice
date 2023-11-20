-- INNER JOIN - Countries with Continents
SELECT 
	c.country_name, 
	co.continent_name
FROM countries c
INNER JOIN continents co ON c.continent_code = co.continent_code;

-- LEFT JOIN - Countries with Currencies (including unmatched countries)
SELECT 
	c.country_name, 
	cu.description
FROM countries c
LEFT JOIN currencies cu ON c.currency_code = cu.currency_code;

-- RIGHT JOIN - Countries with Mountains (including unmatched mountains)
SELECT 
	c.country_name, 
    m.mountain_range
FROM countries c
RIGHT JOIN mountains_countries mc ON c.country_code = mc.country_code
RIGHT JOIN mountains m ON mc.mountain_id = m.id;

-- INNER JOIN with Multiple Tables - Peaks with Mountains, Countries, and Continents
SELECT 
	p.peak_name, 
	m.mountain_range, 
	c.country_name, 
	co.continent_name
FROM peaks p
INNER JOIN mountains m ON p.mountain_id = m.id
INNER JOIN mountains_countries mc ON m.id = mc.mountain_id
INNER JOIN countries c ON mc.country_code = c.country_code
INNER JOIN continents co ON c.continent_code = co.continent_code;

-- LEFT JOIN with Multiple Tables - Rivers with Countries and Continents (including unmatched rivers)
SELECT 
r.river_name, 
c.country_name, 
co.continent_name
FROM rivers r
LEFT JOIN countries_rivers cr ON r.id = cr.river_id
LEFT JOIN countries c ON cr.country_code = c.country_code
LEFT JOIN continents co ON c.continent_code = co.continent_code;

-- RIGHT JOIN with Multiple Tables - Countries with Mountains and Peaks (including unmatched peaks)
SELECT 
	c.country_name, 
	m.mountain_range, 
	p.peak_name
FROM countries c
RIGHT JOIN mountains_countries mc ON c.country_code = mc.country_code
RIGHT JOIN mountains m ON mc.mountain_id = m.id
RIGHT JOIN peaks p ON m.id = p.mountain_id;