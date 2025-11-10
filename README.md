# Strava-Fitness-User-Analysis

This project is a complete end-to-end data analysis of the Strava Fitness Tracker dataset. The goal is to identify user behavior patterns and health trends by analyzing 18 different CSVs containing data on daily activity, sleep, weight, etc.

The project follows a full data analysis workflow, from raw data extraction and cleaning (SQL) to exploratory analysis (Python) and the final creation of an interactive dashboard (Power BI).

## Live Dashboard Screenshot:
<img width="1323" height="743" alt="image" src="https://github.com/user-attachments/assets/5115408f-e1ad-40e8-adbf-abc9170dfff3" />

## Project Workflow :

### Phase 1: Data ETL & Cleaning (MySQL)
Extract: 18 raw CSV files were loaded into a MySQL database.

Transform: Data types were corrected (STR_TO_DATE for dates, booleans converted from text to integers).

Clean: The database was systematically cleaned by removing duplicates, validating participant groups, and filtering for illogical or "non-wear" data.

### Phase 2: Exploratory Analysis & Visualization (Python)
The cleaned MySQL database was connected to a Python script.

Using Pandas, Matplotlib, and Seaborn, key business questions were answered and visualized to find initial trends.

### Phase 3: Interactive Dashboard (Power BI)
The final cleaned data was imported into Power BI.

Power Query was used to replicate the SQL cleaning steps (due to a connection issue).

DAX was used to create new calculated columns for analysis (DayOfWeekName, WeekPart).

A final, interactive dashboard was built to consolidate all findings.

## Tools Used :

Database: MySQL

Data Loading & Cleaning: SQL (MySQL Workbench), Power Query

Analysis & Visualization: Python (Pandas, Matplotlib, Seaborn, SQLAlchemy)

Dashboarding & Report: Power BI

Version Control: Git & GitHub


## -Sumit Sinha

