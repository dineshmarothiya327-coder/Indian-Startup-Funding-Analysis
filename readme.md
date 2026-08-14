# 🚀 Indian Startup Funding Analysis

An end-to-end **Data Analytics** project that explores the **Indian Startup Funding** ecosystem using **Python (NumPy, Pandas, Matplotlib, Seaborn)** and **SQL**. The project focuses on cleaning real-world data, performing exploratory data analysis (EDA), answering business questions, and generating actionable insights through visualizations.

---

## 📌 Project Overview

India has emerged as one of the world's fastest-growing startup ecosystems, attracting billions of dollars in investments across various industries. Understanding funding trends, investor behavior, and startup growth can help entrepreneurs, investors, and policymakers make informed decisions.

This project analyzes historical startup funding data to uncover meaningful insights about:

- Funding trends over the years
- Top funded cities and industries
- Most active investors
- Investment type distribution
- Largest funding rounds
- Startup ecosystem growth

---

## 🎯 Business Problem

Raw startup funding data contains missing values, inconsistent formatting, duplicate records, and non-standardized categories, making analysis challenging.

The objective of this project is to transform raw startup funding data into meaningful business insights by:

- Cleaning and preprocessing the dataset
- Performing Exploratory Data Analysis (EDA)
- Visualizing investment trends
- Solving business problems using Python and SQL
- Generating actionable insights

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| Python | Data Analysis |
| NumPy | Numerical Computing |
| Pandas | Data Cleaning & Manipulation |
| Matplotlib | Data Visualization |
| Seaborn | Statistical Visualization |
| SQL | Business Query Analysis |
| Jupyter Notebook | Development Environment |

---

## 📂 Project Structure

```
Indian-Startup-Funding-Analysis/
│
├── data/
│   ├── startup_funding.csv
│   └── startup_funding_cleaned.csv
│
├── notebooks/
│   └── Indian_Startup_Funding_Analysis.ipynb
│
├── sql/
│   └── startup_analysis.sql
│
├── images/
│   ├── funding_trend.png
│   ├── top_cities.png
│   ├── top_industries.png
│   ├── investment_types.png
│   └── top_investors.png
│
├── requirements.txt
├── README.md
└── LICENSE
```

---

## 📊 Dataset Information

- **Dataset:** Indian Startup Funding
- **Source:** Kaggle
- **Total Records:** 3,044
- **Total Features:** 10

### Dataset Columns

| Column | Description |
|---------|-------------|
| Sr No | Unique Record ID |
| Date | Funding Date |
| Startup Name | Startup Name |
| Industry Vertical | Startup Industry |
| SubVertical | Business Category |
| City Location | Startup Location |
| Investors Name | Investor(s) |
| Investment Type | Funding Type |
| Amount in USD | Investment Amount |
| Remarks | Additional Information |

---

## 🧹 Data Cleaning & Preprocessing

The following preprocessing steps were performed:

- Renamed columns for consistency
- Converted `Date` to datetime format
- Extracted **Year**, **Month**, and **Quarter**
- Cleaned the `Amount in USD` column
- Converted funding amounts to numeric values
- Removed duplicate records
- Handled missing values
- Standardized categorical values
- Removed unnecessary columns

---

## 📈 Exploratory Data Analysis (EDA)

The project includes:

- Distribution of funding amounts
- City-wise funding analysis
- Industry-wise investment analysis
- Investment type analysis
- Top investors
- Startup funding trends
- Monthly and yearly funding analysis
- Largest funding rounds
- Average and median funding analysis

---

## 📌 Business Questions

The analysis answers the following business questions:

- Which city receives the highest startup funding?
- Which industry attracts the highest investment?
- How has startup funding changed over the years?
- Which investment type is the most common?
- Which investor has funded the maximum number of startups?
- Which startup has raised the highest funding?
- What are the largest funding rounds?
- Which cities dominate startup investments every year?

---

## 📊 Key Insights

- Bengaluru receives the highest startup funding among Indian cities.
- Consumer Internet, FinTech, and E-commerce are among the most funded industries.
- Private Equity and Seed Funding dominate investment activities.
- Startup funding has shown significant fluctuations across different years.
- A small number of investors participate in a large proportion of funding rounds.
- Funding distribution is highly skewed, with a few startups receiving exceptionally large investments.

---

## 🗄️ SQL Analysis

SQL queries were written to answer business questions, including:

- Top funded cities
- Top industries
- Year-wise funding trend
- Top investors
- Largest funding rounds
- Average funding by city
- Median funding by industry
- Top startup in each city
- Window function analysis using `RANK()` and `DENSE_RANK()`

---

## 📷 Sample Visualizations

### Funding Trend



---

### Top Funded Cities

> *(Add your visualization here)*

---

### Industry-wise Funding

> *(Add your visualization here)*

---

### Investment Type Distribution

> *(Add your visualization here)*

---

## 🚀 How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/<your-username>/Indian-Startup-Funding-Analysis.git
```

### 2. Navigate to the Project Directory

```bash
cd Indian-Startup-Funding-Analysis
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Launch Jupyter Notebook

```bash
jupyter notebook
```

### 5. Open

```
Indian_Startup_Funding_Analysis.ipynb
```

Run all notebook cells to reproduce the analysis.

---

## 📌 Future Enhancements

- Build an interactive **Power BI Dashboard**
- Develop a **Streamlit** web application
- Perform predictive analysis using Machine Learning
- Create investor recommendation models
- Integrate real-time startup funding data through APIs

---

## 📚 Learning Outcomes

Through this project, I strengthened my skills in:

- Data Cleaning
- Data Wrangling
- Exploratory Data Analysis (EDA)
- Data Visualization
- Business Intelligence
- SQL Query Writing
- Insight Generation
- Python for Data Analytics

---

## 👨‍💻 Author

**Dinesh Marothiya**
---

## ⭐ Support

If you found this project helpful, please consider **starring ⭐ the repository**. Feedback and suggestions are always welcome!