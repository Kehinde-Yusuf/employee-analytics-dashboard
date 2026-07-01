# Employee Analytics Dashboard

## Overview

The **Employee Analytics Dashboard** is an end-to-end Business Intelligence project that combines **PostgreSQL**, **SQL**, and **Microsoft Power BI** to analyze employee, department, appraisal, and travel expense data.

The project demonstrates the complete analytics workflow—from designing and querying a relational database to creating an interactive dashboard that transforms raw data into meaningful business insights.


---

## Project Objectives

The primary objectives of this project were to:

* Design and work with a relational database using PostgreSQL.
* Write SQL queries to answer real business questions.
* Connect multiple datasets through relationships.
* Build an interactive Power BI dashboard.
* Present insights that support business decision-making.
* Demonstrate practical Business Intelligence and Data Analytics skills.

---

## Technologies Used

* PostgreSQL
* SQL
* Microsoft Power BI
* Git
* GitHub

---

## Dataset Description

The project uses four datasets.

### 1. Departments

Contains department-level information, including:

* Department ID
* Department Name
* Salary
* Entitled Bonus

### 2. Employees

Contains employee information, including:

* Employee ID
* Department ID
* Employee Name
* Highest Education Level
* Years of Experience

### 3. Appraisals

Contains employee performance records, including:

* Appraisal ID
* Employee ID
* Last Appraisal Score
* Appraised By

### 4. Travel Expenses

Contains official employee travel information, including:

* Employee
* Destination
* Travel Start Date
* Travel End Date
* Actual Total Expenses
* Purpose of Travel

---

## Data Model

The project was built using relational database principles.

The following relationships were created in Power BI:

* Departments (_id) → Employees (department_id) *(One-to-Many)*
* Employees (_id) → Appraisals (employee_id) *(One-to-Many)*

The Travel Expenses dataset was imported into the model but was intentionally left without a relationship because no reliable unique key was available for establishing a one-to-many relationship.

---

## Business Questions Answered

SQL was used to answer several business questions, including:

* What is the average salary paid to each department?
* What are the appraisal scores of the top two highest-paid employees?
* How many employees with an MSc work in the Retail Sales department?
* Which employees have the most years of experience?
* What are the appraisal scores of the top two highest-paid employees with a PhD?
* How are employees distributed across departments?
* How does salary vary across departments?

---

## Dashboard Features

The Power BI dashboard includes:

* Employee Count KPI
* Average Salary by Department
* Employees by Department
* Salary Distribution by Department
* Education Level Distribution
* Travel Expense Analysis
* Interactive Employee Slicer

Users can interact with the dashboard by selecting an employee from the slicer to dynamically filter the visuals.

---

## Dashboard Preview

### Dashboard Overview

![Dashboard Overview](images/dashboard_overview.png)

---

### Salary Analysis

![Salary Analysis](images/salary_analysis.png)

---

### Interactive Employee Filter

![Employee Filter](images/employee_filter.png)

---

## Key Insights

The dashboard provides insights into:

* Departmental salary comparisons.
* Employee distribution across departments.
* Workforce education levels.
* Employee appraisal performance.
* Travel spending patterns.
* Interactive employee-level analysis.

---

## Skills Demonstrated

This project demonstrates practical experience in:

* SQL Query Writing
* PostgreSQL
* Database Design
* Data Modeling
* Data Cleaning
* Power BI
* Dashboard Design
* Business Intelligence
* Data Visualization
* Git
* GitHub

---

## Repository Structure

```text
employee-analytics-dashboard/
│
├── Employee_Analytics_Dashboard.pbix
├── README.md
├── queries.sql
│
├── data/
│   ├── departments.csv
│   ├── employees.csv
│   ├── appraisals.csv
│   └── travel_expenses.csv
│
└── images/
    ├── dashboard_overview.png
    ├── salary_analysis.png
    └── employee_filter.png
```

---

## Future Improvements

Future enhancements for this project may include:

* DAX measures and calculated columns.
* Executive KPI cards.
* Drill-through pages.
* Department performance scorecards.
* Time-series analysis for travel expenses.
* Publishing the dashboard to the Power BI Service.

---

## Author

**Kehinde Yusuf**

Finance professional transitioning into Data Analytics with practical experience in SQL, PostgreSQL, Power BI, data visualization, and business intelligence.

I am passionate about transforming data into actionable insights that support better business decisions.
