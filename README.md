## 🏦 Bank Loan Portfolio Analysis | Excel + SQL + Power BI

## OBJECTIVE
To analyze consumer bank loan data end-to-end using Excel → SQL → Power BI and deliver actionable insights on portfolio growth, credit risk, repayment performance, and borrower characteristics for data-driven lending decisions.

---
## 📌 Table of Contents

- [Project Overview](#project-overview)
- [Problem Statement](#problem-statement)
- [Dataset](#dataset)
- [Tools & Technologies](#tools--technologies)
- [Methods & Workflow](#methods--workflow)
- [Dashboards](#dashboards)
- [Business Insights & Key Findings](#business-insights--key-findings)
- [Recommendations](#recommendations)
- [How to Run This Project](#how-to-run-this-project)
- [Result & Conclusion](#result--conclusion)
- [Author](#author)

---

## PROJECT OVERVIEW

This project analyzes a bank loan portfolio using a complete analytics workflow:
This project presents an end-to-end Bank Loan Portfolio Analysis . It delivers actionable insights across the full lending lifecycle — from loan issuance and credit risk to repayment performance and borrower demographics.
The solution is organized into five interactive dashboards, enabling stakeholders to monitor portfolio health, identify risks, track financial performance, and understand customer characteristics.
Five Pages were built:
 -  Index Page — Interactive navigation hub
 -  Overview Analysis — Portfolio summary
 -  Credit Risk Analysis — Default & risk drivers
 -  Loan Performance Analysis — Repayment & collections
 -  Borrower Profile Analysis — Customer demographics

These dashboards provide a comprehensive 360° view of the lending portfolio from loan issuance to repayment outcomes.

---
## PROBLEM STATEMENT

Banks generate large volumes of loan data, but without analysis it is difficult to understand:

• How the loan portfolio is growing  
• Which borrowers are high risk  
• How much money is recovered  
• Which segments drive defaults  
• Who the typical customers are  

This project converts raw loan data into insights for risk management and strategic decision-making.

---

## DATASET

**Dataset:** Consumer Bank Loan Data  
**Domain:** Banking / Financial Services  
**Type:** Loan Portfolio Data  
Includes:
- Consumer loan portfolio dataset
- ~40K loan records
- Multi-year historical data (2007–2011)
- Includes borrower attributes, loan terms, repayment status, and financial indicators
 

---

## TOOLS & TECHNOLOGIES

• Microsoft Excel — Data understanding & validation  
• SQL (MySQL) — Data loading, integration, analysis  
• Power BI — Visualization & dashboard development  

---

## METHODS & WORKFLOW

**Data Understanding (Excel)**  - Explored dataset structure, financial terms, and data distributions.

**Data Preparation (Excel → CSV)**  - Cleaned data and converted files for database import.

**Data Integration (SQL)**  - Loaded multiple files, joined tables, and created a master finance table.

**Data Analysis (SQL)**  - Validated KPIs, calculated aggregates, and identified trends.

**Visualization (Power BI)**  - Built interactive dashboards with KPIs, filters, and navigation.

---

## DASHBOARDS
INDEX / NAVIGATION

![image alt](https://github.com/shailygupta-05/bank_loan_portfolio_analysis_excel_sql_powerbi/blob/6acba4828834ed5628f2af003b1a1d8f7326ae7b/image/Index%20Page.png)
Provides buttons to navigate across all dashboards.

---

### PORTFOLIO OVERVIEW
![image alt](https://github.com/shailygupta-05/bank_loan_portfolio_analysis_excel_sql_powerbi/blob/ccf5fc47699a9827ac8856e0c0380c62d63902bb/image/Overview.png)
Includes:

• KPIs — Total Loan Issued (446M),Total Funded Amount (435M), Loan Applications (40K), Avg Interest Rate (12.02%), Avg Income (68.97K)  
• Loan Issuance Trend (2007–2011)  
• Top States by Loan Amount  
• Loan Amount by Purpose  
• Loans by Credit Grade  
• Interactive slicers  

**Key Insights**
 -  Top lending states: CA, NY, TX dominate issuance volume
 - Loan issuance grew sharply from 2M (2007) → 261M (2011) — over 130× growth
 - Debt consolidation is the primary borrowing reason (~60M)
 - Most borrowers fall in Grade B & A, indicating generally good credit quality
 - Lower grades (F, G) represent a small share of the portfolio

 Business Meaning:
The bank experienced rapid portfolio expansion while maintaining relatively strong borrower quality.

---

## CREDIT RISK ANALYSIS

Includes:

• KPIs — Default Rate (14.17%), Charged-Off Loans (6K), Charged-Off Amount (68M), Avg DTI (13.32%), Avg Revol Util (48.83%)  
• Default Risk by Credit Grade  
• Default Risk by Purpose  
• Default Risk by Loan Term  
• Charged-Off Amount by Grade  
• Loan Status Distribution  

**Insights**
 - Default by Grade: - G: 35.07% | F: 31.08% | A: 6.17%
 - Longer loans riskier:- 60-month loans = 67% of risk exposure
 - High-risk purposes:- Small business, renewable energy, education
 - Loan status mix:- Current 80.83% | Charged-off 16.38%

 Credit quality strongly predicts default probability.
 
---

## LOAN PERFORMANCE ANALYSIS

Includes:

• KPIs — Total Funded Amount (435M), Amount Received (483M), Outstanding Principal (46M), Interest Received (90M), Collection Rate (111%)  
• Principal vs Interest Over Time  
• Funded vs Received Trend  
• Amount Received by Loan Status  
• Outstanding Principal by Grade  

**Performance Insights**
- Portfolio generated returns above principal (interest income)
- Recoveries scaled with growth: 2M → 286M (2007–2011)
- Fully paid loans contribute 86.87% of recovered funds
- Highest remaining exposure in mid-risk grades (B–D)

 Lending strategy produced strong profitability despite defaults.
 
---

## BORROWER PROFILE ANALYSIS

Includes:

• KPIs — Total Customers (40K), Avg Income (68.97K), Avg Interest (12.02%), Avg DTI (13.32%), Avg Revol Util (48.83%)  
• Home Ownership Distribution  
• Verification Status Distribution  
• Loan Purpose Distribution  
• Employment Length Distribution  

**Insights**
- Housing status: - Rent 52.56% | Mortgage 39.4% | Own 7.79%
- Verification: - Not Verified 42.6% | Verified 32.25%
- Purpose: - Debt consolidation dominates demand
- Experience: -Largest group: 10+ years (~9K borrowers) Borrowers skew toward renters consolidating existing debt.
 
---

## BUSINESS INSIGHTS & KEY FINDINGS

• Loan issuance surged from **2M in 2007 to 261M in 2011**, indicating rapid portfolio expansion. Portfolio expanded aggressively with sustained demand.
• Debt consolidation dominates borrowing (~60M), showing customers primarily refinance existing debt. 
• Default risk rises sharply with lower credit grades —   **Grade G (~35%) vs Grade A (~6%)**, over 5× higher risk.  
• Long-term loans (60 months) represent ~67% of exposure and carry higher risk. So, Default risk concentrated in low credit grades & long-term loans  
• Charged-off loans account for ~16% of the portfolio, totaling about 68M in losses.  
• Total amount received (483M) exceeds funded amount (435M), producing a **collection rate of ~111%**, driven by interest income.  
• Fully paid loans contribute ~87% of recovered funds, indicating strong repayment behavior overall.  
• Majority of borrowers are renters (~53%), followed by mortgage holders (~39%).  
• A large share of borrowers are not verified (~43%), representing potential credit risk.So, Significant portion of loans issued without full verification
• Most customers have long employment history (10+ years), indicating a relatively stable borrower base.



## RECOMMENDATIONS

• Strengthen underwriting for lower credit grades (E–G).  
• Closely monitor long-term loans due to higher default exposure.  
• Improve verification processes to reduce risk from unverified borrowers.  
• Diversify lending beyond debt consolidation to reduce concentration risk.  
• Continue leveraging interest income while managing credit losses.  

---

## HOW TO RUN THIS PROJECT

1. Download the Power BI (.pbix) file  
2. Open using Power BI Desktop  
3. Use slicers to filter data dynamically  
4. Navigate dashboards using buttons  
5. Explore interactive visuals  

---

## RESULT & CONCLUSION

This project demonstrates a complete financial analytics pipeline from raw data to executive insights. It enables organizations to:

- Understand portfolio growth  
- Identify high-risk segments  
- Measure repayment performance  
- Evaluate profitability  
- Analyze borrower characteristics  
- Support strategic lending decisions  

---

## AUTHOR

**Name:** Shaily Gupta  
**Email:** shailygupta2529@gmail.com  
**LinkedIn:** https://www.linkedin.com/in/shailygupta05/

---

 Thank you for viewing this project!
