# 🚀 Indian Startup Funding Analysis

An end-to-end **Data Analytics** project that analyzes the **Indian Startup Funding** dataset using **Python (NumPy, Pandas, Matplotlib, Seaborn)** and **SQL**. This project demonstrates the complete data analytics workflow—from data cleaning and preprocessing to exploratory data analysis (EDA), visualization, SQL analysis, and business insight generation.

---

## 📌 Project Overview

The Indian startup ecosystem has witnessed tremendous growth over the years, attracting investments from both domestic and international investors. This project explores funding trends, investor behavior, startup growth, and industry performance by analyzing real-world startup funding data.

The objective is to transform raw, unstructured data into meaningful business insights through data cleaning, visualization, and analytical techniques.

---

## 🎯 Business Problem

Startup funding data often contains missing values, inconsistent formatting, duplicate records, and non-standardized categories, making it difficult to perform accurate analysis.

This project aims to answer key business questions such as:

- Which cities receive the highest startup funding?
- Which industries attract the most investment?
- How has startup funding changed over the years?
- Which investment type is most common?
- Which investors fund the highest number of startups?
- Which startups have received the largest funding rounds?

---

## 🛠️ Tech Stack

- **Python**
- **NumPy**
- **Pandas**
- **Matplotlib**
- **Seaborn**
- **SQL**
- **Jupyter Notebook**

---

## 📂 Project Structure

```text
Indian-Startup-Funding-Analysis
│
├── data
│   ├── startup_funding.csv
│   └── startup_funding_cleaned.csv
│
├── notebooks
│   └── Indian_Startup_Funding.ipynb
│
├── sql
│   └── startup_analysis.sql
│
├── images
│   ├── funding_trend.png
│   ├── top_cities.png
│   ├── top_industries.png
│   └── top_investors.png
│
├── requirements.txt
├── README.md
└── LICENSE
```

---

## 📊 Dataset Information

| Feature | Description |
|---------|-------------|
| Records | 3,044 |
| Columns | 10 |
| Dataset | Indian Startup Funding |
| Data Type | Mixed (Categorical & Numerical) |

### Dataset Columns

- Sr No
- Date
- Startup Name
- Industry Vertical
- SubVertical
- City Location
- Investors Name
- Investment Type
- Amount in USD
- Remarks

---

## 🧹 Data Cleaning

The following preprocessing steps were performed:

- Removed duplicate records
- Renamed columns
- Converted the Date column into datetime format
- Cleaned and converted the Amount in USD column to numeric
- Handled missing values
- Standardized city names, industries, and investment types
- Created new features such as **Year**, **Month**, and **Quarter**

---

## 📈 Exploratory Data Analysis (EDA)

The analysis covers:

- City-wise funding analysis
- Industry-wise investment analysis
- Investor analysis
- Funding trend over the years
- Investment type distribution
- Top funded startups
- Largest funding rounds
- Average and median funding
- Monthly funding trends

---

## ❓ Business Questions

- Which city gets the highest funding?
- Which industry receives the highest investment?
- What is the funding trend over the years?
- Which investment type is the most common?
- Which investor has invested in the maximum number of startups?
- Which startup raised the highest funding?
- Which cities dominate startup investments?
- Which industries are growing the fastest?

---

## 📷 Sample Visualizations

### Funding Trend

> Add screenshot here

### Top Funded Cities

> Add screenshot here

### Top Industries

> Add screenshot here

### Investment Type Distribution

> Add screenshot here

---

## 💡 Key Insights

- Bengaluru, Mumbai, and New Delhi received the highest startup funding.
- Consumer Internet, E-commerce, and FinTech attracted significant investments.
- Private Equity and Seed Funding were the most common investment types.
- Startup funding showed noticeable fluctuations across different years.
- A small number of investors participated in a large share of funding rounds.
- Funding distribution is highly skewed, with a few startups receiving exceptionally large investments.

---

## 🗄️ SQL Analysis

The project also includes SQL queries to answer business questions such as:

- Top funded cities
- Top investors
- Year-wise funding trends
- Highest funded startups
- Industry-wise investments
- Average funding analysis
- Ranking startups using SQL Window Functions

---

## 🚀 How to Run the Project

1. Clone the repository

```bash
git clone https://github.com/<your-username>/Indian-Startup-Funding-Analysis.git
```

2. Navigate to the project directory

```bash
cd Indian-Startup-Funding-Analysis
```

3. Install the required libraries

```bash
pip install -r requirements.txt
```

4. Open the Jupyter Notebook

```bash
jupyter notebook
```

5. Run the notebook `Indian_Startup_Funding.ipynb`.

---

## 📌 Future Improvements

- Build an interactive Power BI dashboard
- Create a Streamlit web application
- Predict funding amounts using Machine Learning
- Perform investor recommendation analysis
- Integrate real-time startup funding data

---

## 👨‍💻 Author

**Dinesh Marothiya**

- GitHub: https://github.com/your-username
- LinkedIn: https://linkedin.com/in/your-profile

---

## ⭐ If you found this project useful, consider giving it a star!
