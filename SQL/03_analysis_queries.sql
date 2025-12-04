-- Salary by role
SELECT domain_role, AVG(salary_inr) AS avg_salary
FROM data_careers
GROUP BY domain_role
ORDER BY avg_salary DESC;

-- Salary by experience level
SELECT exp_level, AVG(salary_inr) AS avg_salary
FROM data_careers
GROUP BY exp_level;

-- Popular tools
SELECT 
    SUM(uses_python::int) AS python_users,
    SUM(uses_sql::int) AS sql_users,
    SUM(uses_powerbi::int) AS powerbi_users,
    SUM(uses_excel::int) AS excel_users
FROM data_careers;

-- Certifications vs performance
SELECT certification_count, AVG(performance_score) AS avg_score
FROM data_careers
GROUP BY certification_count;

-- Work-life balance vs hours
SELECT hours_per_week, AVG(work_life_balance) AS avg_wlb
FROM data_careers
GROUP BY hours_per_week;

-- Comments containing "Stressful"
SELECT COUNT(*) AS stressful_count
FROM data_careers
WHERE comments ILIKE '%stressful%';
