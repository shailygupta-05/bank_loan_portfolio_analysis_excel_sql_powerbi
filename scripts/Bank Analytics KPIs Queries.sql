
select * from finance_master ;

                                                        # Total Portfolio Summary
SELECT
    COUNT(*) AS total_loans,
    SUM(loan_amnt) AS total_loan_amount,
    SUM(funded_amnt) AS total_funded_amount,
    SUM(total_pymnt) AS total_amount_received
FROM finance_master;

# Collection Rate
SELECT
    ROUND(SUM(total_pymnt) * 100.0 / SUM(funded_amnt), 2)
    AS collection_rate_percent
FROM finance_master;

# Loan Distribution by State (Top 10)
SELECT
    addr_state,
    COUNT(*) AS loan_count,
    SUM(loan_amnt) AS total_loan_amount
FROM finance_master
GROUP BY addr_state
ORDER BY total_loan_amount DESC
LIMIT 10;

# Loan Distribution by Purpose
SELECT
    purpose,
    COUNT(*) AS loan_count,
    SUM(loan_amnt) AS total_loan_amount
FROM finance_master
GROUP BY purpose
ORDER BY total_loan_amount DESC;


# Charged-Off Amount by Grade
SELECT
    grade,
    SUM(loan_amnt) AS charged_off_amount
FROM finance_master
WHERE loan_status = 'Charged Off'
GROUP BY grade
ORDER BY charged_off_amount DESC;

# Charged-Off Amount by Loan Term
SELECT
   term,
    SUM(loan_amnt) AS charged_off_amount
FROM finance_master
WHERE loan_status = 'Charged Off'
GROUP BY  term
ORDER BY charged_off_amount DESC;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                                      # PERFORMANCE ANALYSIS
# Funded vs Received Comparison
SELECT
    SUM(funded_amnt) AS total_funded,
   round( SUM(total_pymnt),2) AS total_received ,
    round(SUM(total_pymnt) - SUM(funded_amnt),2) AS net_gain
FROM finance_master;

# Principal vs Interest Received
SELECT
    round(SUM(total_rec_prncp),2) AS principal_repaid,
    round(SUM(total_rec_int),2) AS interest_received
FROM finance_master;

# Outstanding Principal Amount
 SELECT
    round(SUM(funded_amnt) - SUM(total_rec_prncp),2) AS outstanding_principal
FROM finance_master;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
												# CUSTOMER / BORROWER ANALYSIS
# Total Customers
  SELECT
       COUNT(*) AS Total_customers
FROM finance_master ;

# Customer Distribution by Home Ownership
SELECT
    home_ownership,
    COUNT(*) AS customer_count
FROM finance_master
GROUP BY home_ownership
ORDER BY customer_count DESC;                                             
   
   # Average Annual Income by Home Ownership                                                
 SELECT
    home_ownership,
    AVG(annual_inc) AS avg_income
FROM finance_master
GROUP BY home_ownership
ORDER BY avg_income DESC;  

# Verification Status Distribution
SELECT
    verification_status,
    COUNT(*) AS loan_count
FROM finance_master
GROUP BY verification_status
ORDER BY loan_count DESC;

# Loan Status Distribution
SELECT
    loan_status,
    COUNT(*) AS loan_count
FROM finance_master
GROUP BY loan_status
ORDER BY loan_count DESC;

