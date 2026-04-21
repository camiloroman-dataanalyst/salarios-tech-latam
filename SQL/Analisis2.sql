SELECT 
    country,
    COUNT(*) AS total_encuestados,
    ROUND(AVG(converted_comp_yearly), 0) AS salario_promedio_usd,
    ROUND(MIN(converted_comp_yearly), 0) AS salario_minimo,
    ROUND(MAX(converted_comp_yearly), 0) AS salario_maximo
FROM survey_latam
WHERE converted_comp_yearly IS NOT NULL
GROUP BY country
ORDER BY salario_promedio_usd DESC;


SELECT 
    remote_work,
    COUNT(*) AS total,
    ROUND(AVG(converted_comp_yearly), 0) AS salario_promedio_usd
FROM survey_latam
WHERE converted_comp_yearly IS NOT NULL
AND remote_work IS NOT NULL
GROUP BY remote_work
ORDER BY salario_promedio_usd DESC;

SELECT 
    dev_type,
    COUNT(*) AS total,
    ROUND(AVG(converted_comp_yearly), 0) AS salario_promedio_usd
FROM survey_latam
WHERE converted_comp_yearly IS NOT NULL
AND dev_type IS NOT NULL
GROUP BY dev_type
ORDER BY salario_promedio_usd DESC
LIMIT 10;

SELECT 
    years_code,
    COUNT(*) AS total,
    ROUND(AVG(converted_comp_yearly), 0) AS salario_promedio_usd
FROM survey_latam
WHERE converted_comp_yearly IS NOT NULL
AND years_code IS NOT NULL
GROUP BY years_code
ORDER BY CAST(years_code AS UNSIGNED) ASC;

SELECT 
    ed_level,
    COUNT(*) AS total,
    ROUND(AVG(converted_comp_yearly), 0) AS salario_promedio_usd
FROM survey_latam
WHERE converted_comp_yearly IS NOT NULL
AND ed_level IS NOT NULL
GROUP BY ed_level
ORDER BY salario_promedio_usd DESC;

SELECT 
    country,
    dev_type,
    COUNT(*) AS total,
    ROUND(AVG(converted_comp_yearly), 0) AS salario_promedio_usd
FROM survey_latam
WHERE converted_comp_yearly IS NOT NULL
AND dev_type LIKE '%Data%'
GROUP BY country, dev_type
ORDER BY country, salario_promedio_usd DESC;

SELECT 
    language_worked_with,
    COUNT(*) AS total,
    ROUND(AVG(converted_comp_yearly), 0) AS salario_promedio_usd
FROM survey_latam
WHERE converted_comp_yearly IS NOT NULL
AND language_worked_with IS NOT NULL
GROUP BY language_worked_with
ORDER BY salario_promedio_usd DESC
LIMIT 10;