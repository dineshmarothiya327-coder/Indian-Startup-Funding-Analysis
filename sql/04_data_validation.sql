/* ============================================================
   INDIAN STARTUP FUNDING ANALYSIS
   FILE 04: DATA VALIDATION
   ============================================================ */

USE startup_analysis;


/* ============================================================
   1. CHECK TOTAL RECORDS
   ============================================================ */

SELECT COUNT(*) AS total_records
FROM startup_funding;


/* Expected:
   Approximately 3,044 records
*/


/* ============================================================
   2. VIEW FIRST 10 RECORDS
   ============================================================ */

SELECT *
FROM startup_funding
LIMIT 10;


/* ============================================================
   3. CHECK TABLE STRUCTURE
   ============================================================ */

DESCRIBE startup_funding;


/* ============================================================
   4. CHECK DATE RANGE
   ============================================================ */

SELECT
    MIN(funding_date) AS first_funding_date,
    MAX(funding_date) AS latest_funding_date
FROM startup_funding;


/* ============================================================
   5. COUNT UNIQUE STARTUPS
   ============================================================ */

SELECT
    COUNT(DISTINCT startup_name) AS unique_startups
FROM startup_funding;


/* ============================================================
   6. COUNT UNIQUE CITIES
   ============================================================ */

SELECT
    COUNT(DISTINCT city) AS unique_cities
FROM startup_funding;


/* ============================================================
   7. COUNT UNIQUE INDUSTRIES
   ============================================================ */

SELECT
    COUNT(DISTINCT industry) AS unique_industries
FROM startup_funding;


/* ============================================================
   8. COUNT UNIQUE INVESTMENT TYPES
   ============================================================ */

SELECT
    COUNT(DISTINCT investment_type) AS unique_investment_types
FROM startup_funding;


/* ============================================================
   9. CHECK MISSING VALUES
   ============================================================ */

SELECT

    SUM(
        CASE
            WHEN funding_date IS NULL THEN 1
            ELSE 0
        END
    ) AS missing_dates,

    SUM(
        CASE
            WHEN startup_name IS NULL THEN 1
            ELSE 0
        END
    ) AS missing_startups,

    SUM(
        CASE
            WHEN industry IS NULL THEN 1
            ELSE 0
        END
    ) AS missing_industries,

    SUM(
        CASE
            WHEN city IS NULL THEN 1
            ELSE 0
        END
    ) AS missing_cities,

    SUM(
        CASE
            WHEN investors IS NULL THEN 1
            ELSE 0
        END
    ) AS missing_investors,

    SUM(
        CASE
            WHEN investment_type IS NULL THEN 1
            ELSE 0
        END
    ) AS missing_investment_types,

    SUM(
        CASE
            WHEN amount_usd IS NULL THEN 1
            ELSE 0
        END
    ) AS missing_amounts

FROM startup_funding;


/* ============================================================
   10. CHECK DUPLICATE RECORDS
   ============================================================ */

SELECT
    startup_name,
    funding_date,
    amount_usd,
    COUNT(*) AS duplicate_count

FROM startup_funding

GROUP BY
    startup_name,
    funding_date,
    amount_usd

HAVING COUNT(*) > 1;


/* ============================================================
   11. CHECK FUNDING STATISTICS
   ============================================================ */

SELECT

    MIN(amount_usd) AS minimum_funding,

    MAX(amount_usd) AS maximum_funding,

    ROUND(AVG(amount_usd), 2) AS average_funding,

    SUM(amount_usd) AS total_funding

FROM startup_funding

WHERE amount_usd IS NOT NULL;