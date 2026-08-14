/* ============================================================
   INDIAN STARTUP FUNDING ANALYSIS
   FILE 03: IMPORT DATA
   ============================================================ */

USE startup_analysis;


/*
   IMPORTANT:
   Replace the path below with the actual path of your CSV.
*/


LOAD DATA LOCAL INFILE '/YOUR/PATH/startup_funding_cleaned.csv'

INTO TABLE startup_funding

FIELDS TERMINATED BY ','

ENCLOSED BY '"'

LINES TERMINATED BY '\n'

IGNORE 1 ROWS

(
    sr_no,
    funding_date,
    startup_name,
    industry,
    subvertical,
    city,
    investors,
    investment_type,
    amount_usd,
    remarks
);