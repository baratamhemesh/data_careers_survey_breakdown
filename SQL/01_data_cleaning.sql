-- Remove duplicates
DELETE FROM data_careers t1
USING data_careers t2
WHERE t1.ctid < t2.ctid
  AND t1.respondent_id = t2.respondent_id;

-- Convert 'None' to NULL
UPDATE data_careers
SET tech_secondary = NULL
WHERE tech_secondary = 'None';

-- Standardize remote work values
UPDATE data_careers
SET remote_work = INITCAP(remote_work);
