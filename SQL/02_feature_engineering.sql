ALTER TABLE data_careers ADD COLUMN exp_level TEXT;

UPDATE data_careers
SET exp_level = CASE
    WHEN years_experience < 3 THEN 'Junior'
    WHEN years_experience BETWEEN 3 AND 8 THEN 'Mid'
    ELSE 'Senior'
END;

ALTER TABLE data_careers
ADD COLUMN uses_python BOOL,
ADD COLUMN uses_sql BOOL,
ADD COLUMN uses_powerbi BOOL,
ADD COLUMN uses_excel BOOL;

UPDATE data_careers
SET uses_python = tools_used ILIKE '%python%',
    uses_sql = tools_used ILIKE '%sql%',
    uses_powerbi = tools_used ILIKE '%power bi%',
    uses_excel = tools_used ILIKE '%excel%';
