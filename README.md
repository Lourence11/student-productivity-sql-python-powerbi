# 🔄 Project Overview 
#### This project analyzes how lifestyle habits, study behavior, and burnout levels affect students' academic performance.

## Using SQL, Excel, Python (Pandas & Seaborn), and Power BI, the project explores relationships between:
- Study habits
- Sleep duration
- Burnout levels
- Focus index
- Productivity score
- Exam performance

The final output includes statistical analysis and an interactive Power BI dashboard.

# 📑 Table of Contents
1. Dataset
2. Description
3. Column Definition
4. Tools Used
5. Project Workflow
6. Power BI Dashboard
7. Charts & Analysis (Python EDA)
8. Key Insights

# 📂 Dataset
The dataset contains 5,000 student records with 21 columns representing demographic information, lifestyle factors, and academic performance metrics.

Each row represents one student.

# 📝 Description
The dataset was extracted from a structured relational database using SQL and exported as a CSV file for further analysis.

It includes:
- Academic background
- Study behavior
- Screen time habits
- Sleep patterns
- Mental health indicators
- Productivity metrics
- Burnout measurements
- Exam scores

📊 Column Definition
--------------------
| Column | Description |
|--------|-------------|
|student_id|Unique identifier for each student|
|age|Student age|
|gender|Gender category|
|academic_level|High School, Undergraduate, Postgraduate|
|part_time_job|0 = No, 1 = Yes|
|study_hours|Daily study hours|
|self_study_hours|Hours spent studying independently|
|online_classes_hours|Hours spent in online classes|
|upcoming_deadline|Number of pending deadlines|
|sleep_hours|Average sleep per day|
|social_media_hours|Daily social media usage|
|gaming_hours|Daily gaming time|
|screen_time_hours|Total daily screen time|
|exercise_minutes|Daily exercise duration|
|caffeine_intake_mg|Daily caffeine intake|
|internet_quality|Poor / Average / Good|
|productivity_score|Calculated productivity metric|
|exam_score|Final exam score|
|mental_health_score|Mental health index|
|focus_index|Focus performance index|
|burnout_level|Burnout measurement (0–100 scale)|

# 🛠 Tools Used
![Power Bi](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black) ![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white) ![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white) ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

# 🔄 Project Workflow
## 1. Data Extraction (SQL – MySQL Workbench)
- Queried structured student data
- Used filtering, sorting, and ranking logic
- Applied advanced SQL (including window functions)
- Exported clean dataset (5,000 rows) to CSV
## 2. Data Validation & Aggregation (Excel)
- Excel was used for quick validation and summary analysis before dashboard creation.
### Performed:
#### Pivot Tables:
- Average Exam Score by Academic Level
- Exam Score by Burnout Group (0–20, 20–40, etc.)
- Exam Score by Part-Time Job Status
- Grouped Burnout Level into ranges
- Created supporting charts
- Verified averages before loading into Power BI
### Purpose:
- Excel helped validate results and quickly explore aggregated patterns before deeper analysis.
## 3️. Exploratory Data Analysis (Python – Pandas & Seaborn)
- Checked dataset structure (df.info())
- Generated summary statistics (describe())
- Built correlation matrix heatmap
### Created regression plots:
- Sleep vs Exam Score
- Study Hours vs Exam Score
- Burnout vs Exam Score
- Focus vs Productivity
- Identified Top 10 performing students
### Purpose:
- To understand relationships and statistical patterns in the dataset.

## 4. Dashboard Development (Power BI)
- Created interactive dashboard
- Built KPI cards
- Added slicers (filters)
- Created calculated groupings (Burnout Groups)
- Converted binary columns (0/1 → Yes/No)
- Designed layout and color theme
### Purpose:
- To present insights visually and interactively.

# 📊 Power BI Dashboard
![student_data_page-0001](https://github.com/user-attachments/assets/5b8acea5-627f-43f4-94d1-f6257c368fb8)
The dashboard visualizes key relationships:
- Average Exam Score by Academic Level
- Average Exam Score by Burnout Group
- Exam Score by Part-Time Job Status
- Focus Index vs Productivity Score (Scatter with Trend Line)
- Interactive filtering across all visuals

