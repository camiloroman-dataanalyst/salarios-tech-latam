USE salarios_tech_latam;

CREATE TABLE survey (
    response_id           INT PRIMARY KEY,
    country               VARCHAR(100),
    age                   VARCHAR(50),
    ed_level              VARCHAR(150),
    employment            VARCHAR(150),
    remote_work           VARCHAR(50),
    dev_type              VARCHAR(255),
    years_code            VARCHAR(50),
    language_worked_with  TEXT,
    industry              VARCHAR(150),
    job_sat               VARCHAR(100),
    converted_comp_yearly DECIMAL(15,2)
);