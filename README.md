# Shift Performance Analytics & Optimization

### Manufacturing Operations Data Science Project

## Project Summary

Manufacturing plants operate around the clock using multiple production shifts. Even with automated systems and standardized processes, operational performance often varies significantly across shifts due to differences in workforce composition, machine availability, maintenance patterns, and operational supervision.

This project investigates production performance at NorDex Manufacturing AS, a precision parts manufacturer operating three automated plants. The company observed persistent productivity imbalances across its morning, evening, and night shifts.

The objective of this project was to build an end-to-end data analytics pipeline that identifies the drivers of shift performance and predicts shift efficiency using machine learning. By integrating SQL data engineering, exploratory analytics, predictive modeling, and dashboard visualization, the project demonstrates how manufacturing organizations can transition from intuition-based decision making to data-driven operational optimization.

---

# Problem Statement

Despite operating automated production facilities, NorDex Manufacturing experienced the following operational challenges:

• Significant productivity imbalance between shifts
• Higher machine downtime during evening and night shifts
• Increased product defects during later production cycles
• Inconsistent operator performance across shifts
• Declining overall equipment effectiveness (OEE)

Production managers lacked detailed analytics that could explain the root causes of these differences or support data-driven scheduling decisions.

The goal of this project was to analyze operational data and build predictive tools capable of identifying the key drivers of shift performance.

---

# Project Objectives

• Identify operational factors affecting shift productivity
• Quantify productivity differences between shifts
• Build a predictive model for shift efficiency
• Develop an analytical dataset from relational manufacturing data
• Provide operational insights for workforce scheduling and machine utilization
• Demonstrate an end-to-end industrial analytics workflow

---

# Technology Stack

Data Engineering
Microsoft SQL Server
SQL Server Management Studio

Data Analysis
Python
Pandas
NumPy

Data Visualization
Matplotlib
Seaborn

Machine Learning
Scikit-learn

Application Layer
Streamlit

Development Environment
Jupyter Notebook

---

# Project Architecture

Business Problem
↓
SQL Data Engineering
↓
Feature Dataset Creation
↓
Python Data Extraction
↓
Exploratory Data Analysis
↓
Machine Learning Modeling
↓
Operational Dashboard

This architecture mirrors the workflow used in real industrial analytics and manufacturing intelligence projects.

---

# Data Pipeline

The project began with restoring the operational database in SQL Server. The database contained multiple relational tables capturing different aspects of manufacturing operations.

Key tables included:

Shift_Master
Production_Log
Machine_Log
Operator_Assignment
Maintenance_Records
Quality_Control
Environmental_Data

To simplify analysis, a consolidated analytical dataset was created using a SQL view that joined production, machine, and operator information into a single structured dataset.

The dataset was then extracted into Python using a database connection pipeline and loaded into a Pandas DataFrame for further analysis.

---

# Exploratory Data Analysis

EDA revealed clear operational differences across production shifts.

### Production Output by Shift

Morning shift produced the highest output, significantly outperforming evening and night shifts.

### Machine Downtime

Night shifts experienced the highest average downtime, suggesting operational disruptions during later production cycles.

### Product Quality

Defect rates increased during evening and night shifts.

### Operator Skill Levels

Experienced operators produced significantly higher output than junior operators.

### Correlation Analysis

Strong relationships were observed between:

• Machine runtime and production output
• Machine downtime and reduced productivity
• Operator experience and production performance

These findings provided early evidence of the factors influencing shift performance.

---

# Machine Learning Model

A Linear Regression model was developed to predict shift efficiency using key operational variables:

runtime_hours
downtime_minutes
experience_level
units_produced
defect_count
cycle_time_avg

The dataset was split into training and testing subsets and evaluated using standard regression metrics.

### Model Performance

R² Score: 0.87
Mean Absolute Error: 3.68

The model explains approximately 87% of the variance in shift efficiency, demonstrating strong predictive capability.

---

# Key Drivers of Shift Efficiency

Feature analysis revealed the following operational drivers:

Machine Runtime
Longer machine runtime strongly improves shift efficiency.

Machine Downtime
Higher downtime significantly reduces production performance.

Operator Skill Level
More experienced operators consistently produce higher output.

Product Defects
Higher defect rates negatively impact overall efficiency.

These insights confirm that both machine reliability and workforce composition influence manufacturing productivity.

---

# Business Impact

The analytical insights generated by this project enable production managers to make more informed operational decisions.

Potential improvements include:

• Optimizing operator assignments across shifts
• Improving machine maintenance scheduling
• Reducing machine downtime during night shifts
• Monitoring production performance in real time

These improvements can lead to higher production throughput, improved quality, and reduced operational costs.

---

# Dashboard Application

A lightweight dashboard was developed using Streamlit to visualize operational metrics and support real-time monitoring.

The dashboard provides:

• Production output by shift
• Machine downtime metrics
• Operator productivity insights
• Shift efficiency predictions

This interface transforms the analytical insights into a decision-support tool for production managers.

---

# Project Outcomes

This project demonstrates how data science can be applied to manufacturing operations to uncover performance bottlenecks and optimize production processes.

Key outcomes include:

• End-to-end data pipeline from SQL to machine learning
• Identification of operational drivers affecting shift productivity
• Predictive model for estimating shift efficiency
• Interactive dashboard for operational monitoring

---

# Future Enhancements

Several extensions could further improve the analytical capabilities of this project:

• Implement advanced models such as Random Forest or Gradient Boosting
• Integrate real-time production data streams
• Expand the dashboard for predictive scheduling simulations
• Incorporate environmental factors such as temperature and humidity

---

# Repository Structure

01_BRD
Business requirements documentation

02_SQL
Database restoration scripts
Exploratory SQL queries
Consolidated dataset view

03_Modeling
Jupyter Notebook containing EDA and machine learning workflow

04_Dashboard
Streamlit application for interactive visualization

README.md
Project documentation

---

# Key Takeaways

This project highlights the value of combining data engineering, analytics, and machine learning to improve operational decision-making in manufacturing environments.

By transforming raw operational data into predictive insights, organizations can improve efficiency, reduce downtime, and create a culture of data-driven performance optimization.

---

# Author

Data Analytics Project

Tools Used: Python, SQL, Machine Learning, Data Visualization
