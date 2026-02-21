
create database bank;

use bank ;

select * from finance1;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bank Analytics/finance1.csv'
INTO TABLE finance1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

select * from finance1;

-- -----------------------------------------------------------------------------------------------
select * from finance2;

alter table finance2
modify column revol_util varchar(20) ;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bank Analytics/finance2.csv'
INTO TABLE finance2
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- ----------------------------------------------------------------------------------------------------------------------


CREATE TABLE finance_master AS
SELECT
    f1.id,
    f1.member_id,
    f1.loan_amnt,
    f1.funded_amnt,
    f1.term,
    f1.int_rate,
    f1.installment,
    f1.grade,
    f1.sub_grade,
    f1.emp_length,
    f1.home_ownership,
    f1.annual_inc,
    f1.verification_status,
    f1.issue_d,
    f1.loan_status,
    f1.purpose,
    f1.addr_state,
    f1.dti,

    f2.delinq_2yrs,
    f2.earliest_cr_line,
    f2.inq_last_6mths,
    f2.open_acc,
    f2.pub_rec,
    f2.revol_bal,
    f2.revol_util,
    f2.total_acc,
    f2.total_pymnt,
    f2.total_rec_prncp,
    f2.total_rec_int,
    f2.recoveries,
    f2.out_prncp,
    f2.last_pymnt_d,
    f2.next_pymnt_d

FROM finance1 f1
INNER JOIN finance2 f2
ON f1.id = f2.id;

SELECT * FROM finance_master ;

SELECT COUNT(*) FROM finance1;
SELECT COUNT(*) FROM finance2;
SELECT COUNT(*) FROM finance_master;
