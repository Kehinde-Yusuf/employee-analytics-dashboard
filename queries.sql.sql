--HEAD - HUMAN RESOURCES
--1. What is the average salary paid to each department in the organization?
SELECT department, AVG(salary) AS average_salary
FROM raw.departments
GROUP BY department;

--2. What are the appraisal scores of the top two paid (in descending order of salary and in ascending order of the employees’ names) employees
SELECT e.name AS Name_of_Employee, a.last_appraisal_score AS Appraisal_score
FROM raw.employees AS e
JOIN raw.departments AS d
ON e.department_id = d._id
JOIN raw.appraisals AS a
ON e._id = a.employee_id
ORDER BY d.salary desc, name asc
LIMIT 2;

--3)What are the appraisal scores of the top two paid (in descending order of salary and in ascending order of the employees names) employee with a PHD
SELECT name AS Name_of_Employees, last_appraisal_score AS Appraisal_Score
FROM raw.employees AS e
JOIN raw.appraisals AS a
ON e._id = a.employee_id
JOIN raw.departments AS d
ON d._id = e.department_id
WHERE highest_education_level = 'PHD'
ORDER BY salary desc, name asc
LIMIT 2;

--HEAD DEPARTMENTS
--1)A list of employees appraised by the Head of Business
SELECT e.name as Name_of_employees, a.appraised_by 
FROM raw.employees AS e
JOIN raw.appraisals AS a
ON e._id = a.employee_id
WHERE appraised_by ='Head of Business'

--2)Who appraised the employees with the highest appraisal score from the Corporate Sales dept
SELECT e._id AS Employee_ID, d.department, a.last_appraisal_score AS Appraisal_Score, a.appraised_by AS Appraiser
FROM raw.departments AS d
JOIN raw.employees as e
ON d._id = e.department_id
JOIN raw.appraisals AS a
ON a.employee_id = e._id
WHERE last_appraisal_score =(
      SELECT MAX(last_appraisal_score)
	  FROM raw.appraisals
);

--3)How many employees have an MSC in the Retails Sales department?
SELECT d.department AS Department, e.highest_education_level AS Degrees, COUNT(*) AS Total_employees
FROM raw.departments AS d
JOIN raw.employees AS e
ON d._id = e.department_id
WHERE highest_education_level ='MSC' AND department ='Retail Sales'
GROUP BY department, Degrees

--HEAD FINANCE
--1)How much is spent on each department on bonuses
SELECT department, SUM(entitled_bonus) AS Total_Bonus_Amount
FROM raw.departments
GROUP BY department

--2)Who are the top 3 salary earners? Order your result by their entitled bonuses
SELECT name AS Employees_Names, highest_education_level AS Degree, salary AS Salary, entitled_bonus AS Bonus
FROM raw.employees AS e
JOIN raw.departments AS d
ON d._id = e.department_id
ORDER BY entitled_bonus desc
LIMIT 3;

--3)How much do the employees with most years of experience earn?
SELECT name AS Employees_Names, department, years_of_experience, salary
FROM raw.employees AS e
JOIN raw.departments AS d
ON d._id = e.department_id
WHERE years_of_experience = ( 
      SELECT MAX(years_of_experience)
	  FROM raw.employees
);

