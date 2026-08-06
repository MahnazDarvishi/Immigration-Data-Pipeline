# 🌍 Immigration Data Pipeline & Analytics

## 📌 Project Overview
This project is an **End-to-End Data Engineering and Business Intelligence solution** focused on analyzing immigration data. The project demonstrates the complete data lifecycle: from extracting and cleaning raw data using **Python**, building an ETL pipeline with **SSIS**, structuring the data into a Star Schema Data Mart, and finally creating an interactive dashboard in **Power BI**.

## 🛠️ Technology Stack
* **Data Processing & Cleaning:** Python (Pandas, NumPy, Jupyter Notebook)
* **ETL & Orchestration:** SQL Server Integration Services (SSIS)
* **Database & Data Modeling:** SQL Server (Star Schema Design)
* **Data Visualization & Analytics:** Power BI (DAX, Power Query)

## 🏗️ Architecture & Workflow

1. **Data Cleaning (Python):** 
   * Processed raw immigration datasets using `pipeline_transformation.ipynb`.
   * Executed data deduplication, null-handling, and formatting. 
   * *Performance Note:* Successfully processed 3,494 initial rows, removed 285 duplicates, resulting in 3,209 clean, unique records ready for the data warehouse.

2. **ETL Pipeline (SSIS):** 
   * Engineered data flows using `Package.dtsx` to extract the cleaned flat files, apply transformations, and load them into a centralized SQL Server database.
   * Parameterized the project using `Project.params` for dynamic configurations.

3. **Data Modeling (SQL Server):** 
   * Designed a **Star Schema** to optimize query performance, separating quantitative metrics (Fact tables) from descriptive attributes (Dimension tables).

4. **Data Visualization (Power BI):** 
   * Developed `immigration_dashboard.pbix` to provide stakeholders with actionable insights, utilizing interactive slicers, drill-downs, and advanced DAX measures.

## 📊 Dashboard Preview
*(Please replace the link below with actual screenshots of your Power BI dashboard)*

![Immigration Dashboard](https://via.placeholder.com/800x400?text=Insert+Power+BI+Dashboard+Screenshot+Here)

*Key Insights:*
* **Trend 1:** [Insert a key finding from your data, e.g., "The highest volume of immigration was observed in Q3..."]
* **Trend 2:** [Insert another finding, e.g., "Demographic X showed a 15% increase in approvals compared to the previous year."]

## 📂 Repository Structure
* `pipeline_transformation.ipynb` : Python script for initial data extraction and cleaning.
* `Immigration_SSIS_Backup/` : Contains the SSIS solution files (`.dtproj`, `.dtsx`, `.sln`).
* `immigration_dashboard.pbix` : The final Power BI interactive dashboard.

## 🚀 How to Run the Project
1. Clone this repository to your local machine.
2. Run the `pipeline_transformation.ipynb` notebook to generate the cleaned datasets.
3. Open the `.sln` file in Visual Studio (with SSIS extension) to review and execute the data pipeline.
4. Open `immigration_dashboard.pbix` in Power BI Desktop and refresh the data source credentials to view the dashboard.

---
*Developed as part of the Business Intelligence and Analytics program at Collège de Bois-de-Boulogne.*
