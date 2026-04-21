Drop table survey_latam;

CREATE TABLE survey_latam AS
SELECT * FROM survey
WHERE country IN (
    'Colombia', 'Mexico', 'Argentina', 
    'Brazil', 'Chile', 'Peru', 
    'Uruguay', 'Venezuela, Bolivarian Republic of...'
);

SELECT COUNT(*) AS total_latam FROM survey_latam;

SELECT 
    COUNT(*) AS total,
    COUNT(converted_comp_yearly) AS con_salario,
    COUNT(*) - COUNT(converted_comp_yearly) AS sin_salario
FROM survey_latam;

SELECT 
    MIN(converted_comp_yearly) AS salario_minimo,
    MAX(converted_comp_yearly) AS salario_maximo,
    AVG(converted_comp_yearly) AS salario_promedio
FROM survey_latam
WHERE converted_comp_yearly IS NOT NULL;