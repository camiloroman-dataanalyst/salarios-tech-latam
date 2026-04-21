SELECT COUNT(*) AS total_registros FROM survey;

SELECT 
    COUNT(*) AS total_registros,
    COUNT(converted_comp_yearly) AS con_salario,
    COUNT(*) - COUNT(converted_comp_yearly) AS sin_salario
FROM survey;

SELECT country, COUNT(*) AS total
FROM survey
WHERE country IN (
    'Colombia', 'Mexico', 'Argentina', 
    'Brazil', 'Chile', 'Peru', 
    'Uruguay', 'Venezuela, Bolivarian Republic of...'
)
GROUP BY country
ORDER BY total DESC;

SELECT dev_type, COUNT(*) AS total
FROM survey
GROUP BY dev_type
ORDER BY total DESC
LIMIT 15;

SELECT converted_comp_yearly 
FROM survey 
WHERE converted_comp_yearly IS NOT NULL 
LIMIT 20;

SELECT converted_comp_yearly 
FROM survey 
WHERE converted_comp_yearly > 0 
LIMIT 10;
