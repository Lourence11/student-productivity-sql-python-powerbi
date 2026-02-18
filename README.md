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
<p align="left">
  <img src="https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black"/>
  <img src="https://img.shields.io/badge/MySQL-00758F?style=for-the-badge&logo=mysql&logoColor=white"/>
  <img src="https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white"/>
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"/>
  <img src="https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white"/>
</p>


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

# 📈 Charts & Analysis
To better understand the dataset, I performed exploratory data analysis (EDA) using Pandas, Matplotlib, and Seaborn.

Instead of relying only on summary statistics, I created visualizations to explore how lifestyle factors (sleep, study habits, burnout, focus, etc.) relate to academic performance.

The goal was to identify meaningful relationships that explain student productivity and exam outcomes.

## 1. Correlation Matrix
<img width="3133" height="2448" alt="correlation_matrix" src="https://github.com/user-attachments/assets/a384439b-c80a-4fc3-9454-2c3514f37499" />
I started with a correlation heatmap to see how all numerical variables relate to each other. This gave a quick overview of which factors move together and which move in opposite directions.

Highlights:
- Strong positive correlation between focus index and productivity score
- Strong negative correlation between burnout level and exam score
- Moderate positive relationship between study hours and exam score
- Sleep shows a positive but weaker relationship with performance

## 2. Sleep Hours vs Exam Score
<img width="2073" height="1420" alt="sleephours_vs_examscore_trendline" src="https://github.com/user-attachments/assets/40116eaa-6518-40c5-be31-b307d9e4a753" />
This scatter plot shows how sleep duration relates to exam performance. A trend line was added to better visualize the direction of the relationship.

Highlights:
- Slight positive trend between sleep and exam score
- Students with 7–9 hours of sleep tend to perform better
- Sleep alone does not strongly determine performance, but it contributes

## 3. Burnout Level vs Exam Score
<img width="2073" height="1419" alt="burnout_vs_examscore" src="https://github.com/user-attachments/assets/adc1aa01-3caf-43f4-85b9-81b9b97d3227" />
This chart clearly shows the impact of burnout on academic results. The downward trend line indicates a negative relationship.

Highlights:
- Higher burnout levels are associated with lower exam scores
- Burnout appears to be one of the strongest negative factors affecting performance
- Students with low burnout consistently score higher

## 4. Focus Index vs Productivity Score
<img width="2099" height="1420" alt="focusindex_vs_productivityscore" src="https://github.com/user-attachments/assets/d8073b08-dc0a-427d-8d1f-7582ce76d125" />
This visualization reveals a strong linear relationship between focus and productivity.

Highlights:
- Strong positive correlation between focus index and productivity score
- Data points are tightly clustered along the upward trend line
- Focus appears to be a key driver of productivity
## 5. Study Hours vs Exam Score
<img width="2073" height="1420" alt="studyhours_vs_examscore" src="https://github.com/user-attachments/assets/3749671c-2abc-4307-9069-24a91c7707c0" />
This plot explores how study time influences exam performance.

Highlights:
- Clear positive trend between study hours and exam score
- Students who study more tend to achieve higher scores
- Study consistency appears more impactful than small increases

# 🔍 Key Insights
1. Focus Index strongly predicts productivity.
2. Productivity strongly influences exam performance.
3. Higher burnout levels significantly reduce exam scores.
4. Study hours positively affect performance but not as strongly as focus.
5. Students with lower burnout perform significantly better academically.
6. Part-time job students tend to have slightly lower exam averages.

# 🚀 Conclusion
This project demonstrates a complete data analytics workflow:

SQL → Excel → Python → Power BI

It highlights how lifestyle factors and mental health indicators impact academic performance, and presents insights through statistical analysis and interactive visualization.
