-- KPI: Cantidad total de títulos
SELECT COUNT(*) AS total_titles
FROM Movies;

-- KPI: Distribución por tipo de contenido
SELECT 
    content_type,
    COUNT(*) AS total
FROM Movies
GROUP BY content_type
ORDER BY total DESC;

-- KPI: Evolución temporal del contenido
SELECT 
    release_year,
    COUNT(*) AS total
FROM Movies
GROUP BY release_year
ORDER BY release_year;

-- KPI: Géneros más frecuentes
SELECT 
    listed_in AS genre,
    COUNT(*) AS total
FROM Movies
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

-- KPI: Principales países productores
SELECT 
    country,
    COUNT(*) AS total
FROM Movies
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC
LIMIT 10;

-- KPI: Años con más títulos que el promedio
SELECT 
    release_year,
    COUNT(*) AS total
FROM Movies
GROUP BY release_year
HAVING total > (
    SELECT AVG(year_count)
    FROM (
        SELECT COUNT(*) AS year_count
        FROM Movies
        GROUP BY release_year
    )
)
ORDER BY total DESC;
 