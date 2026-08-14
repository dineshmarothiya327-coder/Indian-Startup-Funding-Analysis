/* ============================================================
   INDIAN STARTUP FUNDING ANALYSIS
   FILE 02: CREATE TABLE
   ============================================================ */

USE startup_analysis;


/* ------------------------------------------------------------
   Create startup funding table
   ------------------------------------------------------------ */

CREATE TABLE IF NOT EXISTS startup_funding (

    sr_no INT,

    funding_date DATE,

    startup_name VARCHAR(255),

    industry VARCHAR(255),

    subvertical VARCHAR(255),

    city VARCHAR(255),

    investors TEXT,

    investment_type VARCHAR(255),

    amount_usd DECIMAL(20,2),

    remarks TEXT

);