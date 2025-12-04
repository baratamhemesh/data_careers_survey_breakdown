# Data Professional Survey Analysis | SQL & Power BI

This project analyzes 600+ responses from a Data Professionals Survey to understand salary trends, tool usage, learning paths, and job satisfaction.  
SQL was used for data cleaning, feature engineering, and exploratory analysis.  
Power BI was used to build an interactive dashboard highlighting high-paying roles, popular tools, and major skill gaps.

---

## Objective
- Process and clean survey responses using SQL.
- Analyze salary, tools, experience, certifications, and job satisfaction.
- Build a Power BI dashboard to visualize trends and insights.
- Identify high-paying roles, commonly used tools, and areas where professionals lack key skills.

---

## Dataset
The dataset contains 600+ survey responses with fields including:
- Demographics  
- Education  
- Experience  
- Domain Roles  
- Technical Skills  
- Tools Used  
- Salary (INR)  
- Job Satisfaction  
- Certifications  
- Projects  
- Work Hours  
- Comments  

File: `data_careers_medium_dataset.csv`

---

## Tech Stack
- PostgreSQL (SQL)
- Power BI
- Excel / CSV
- GitHub for version control

---

## SQL Workflow

### 1. Data Cleaning
- Removed duplicates
- Standardized null values
- Normalized text fields
- Cleaned tool usage fields
- Added experience-level categories

### 2. Feature Engineering
- Extracted Python/SQL/Power BI/Excel usage from text columns
- Categorized experience into Junior, Mid, Senior
- Created tool usage flags for dashboard

### 3. SQL Analysis Performed
- Salary analysis by role, experience, and city
- Tool popularity metrics
- Certification impact on performance
- Work-life balance vs working hours
- Comments sentiment indicators (e.g., “Stressful”)

SQL scripts are available in the `/sql` folder.

---

## Power BI Dashboard

The dashboard provides:
- Highest Paying Roles
- Salary by Experience Level
- Most Popular Tools (Python, SQL, Power BI, Excel)
- Certifications vs Performance
- Work-Life Balance Metrics
- Skill Gap Identification
- Distribution of Job Satisfaction

Dashboard file: `/powerbi/dashboard.pbix`

Screenshots included in `/powerbi/dashboard_screenshots/`.

---

## Key Insights
- Senior professionals earn significantly more compared to juniors.
- Data Engineers and ML Engineers appear among the highest-paying roles.
- Python, SQL, and Power BI are the most widely used tools.
- Higher certification counts correlate with better performance scores.
- Respondents working more than 48 hours per week reported lower work-life balance.
- Comments containing the word “Stressful” correlated with higher overtime frequency.

---

## How to Run
1. Import `data_careers_medium_dataset.csv` into PostgreSQL.
2. Run SQL scripts in the following order:
   - `01_data_cleaning.sql`
   - `02_feature_engineering.sql`
   - `03_analysis_queries.sql`
3. Load the cleaned dataset into Power BI.
4. Build visuals using fields described in the dashboard section.

---

## Future Improvements
- Add prediction model for salary ranges
- Deploy interactive dashboard online
- Add NLP sentiment analysis on comments

---

## 
Hemesh Baratam  
Data Analytics & Machine Learning Enthusiast




