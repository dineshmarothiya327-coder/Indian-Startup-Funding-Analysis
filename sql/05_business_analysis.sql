/* ============================================================
   INDIAN STARTUP FUNDING ANALYSIS
   FILE 05: BUSINESS ANALYSIS
   ============================================================ */

USE startup_analysis;


/* ============================================================
   SECTION 1: BASIC ANALYSIS
   ============================================================ */


/* ------------------------------------------------------------
   Q1. How many funding records are present?
   ------------------------------------------------------------ */

SELECT
    COUNT(*) AS total_funding_records
FROM startup_funding;


/* ------------------------------------------------------------
   Q2. How many unique startups received funding?
   ------------------------------------------------------------ */

SELECT
    COUNT(DISTINCT startup_name) AS unique_startups
FROM startup_funding;


/* ------------------------------------------------------------
   Q3. What is the total funding recorded?
   ------------------------------------------------------------ */

SELECT
    SUM(amount_usd) AS total_funding
FROM startup_funding
WHERE amount_usd IS NOT NULL;


/* ------------------------------------------------------------
   Q4. What is the average funding per round?
   ------------------------------------------------------------ */

SELECT
    ROUND(AVG(amount_usd), 2) AS average_funding
FROM startup_funding
WHERE amount_usd IS NOT NULL;


/* ------------------------------------------------------------
   Q5. What is the largest funding round?
   ------------------------------------------------------------ */

SELECT
    startup_name,
    city,
    industry,
    investment_type,
    amount_usd
FROM startup_funding
WHERE amount_usd IS NOT NULL
ORDER BY amount_usd DESC
LIMIT 1;


/* ============================================================
   SECTION 2: CITY ANALYSIS
   ============================================================ */


/* ------------------------------------------------------------
   Q6. Which cities have the most funding rounds?
   ------------------------------------------------------------ */

SELECT
    city,
    COUNT(*) AS funding_rounds
FROM startup_funding
WHERE city IS NOT NULL
GROUP BY city
ORDER BY funding_rounds DESC
LIMIT 10;


/* ------------------------------------------------------------
   Q7. Which cities receive the highest total funding?
   ------------------------------------------------------------ */

SELECT
    city,
    SUM(amount_usd) AS total_funding
FROM startup_funding
WHERE city IS NOT NULL
  AND amount_usd IS NOT NULL
GROUP BY city
ORDER BY total_funding DESC
LIMIT 10;


/* ------------------------------------------------------------
   Q8. What is the average funding by city?
   ------------------------------------------------------------ */

SELECT
    city,
    ROUND(AVG(amount_usd), 2) AS average_funding
FROM startup_funding
WHERE city IS NOT NULL
  AND amount_usd IS NOT NULL
GROUP BY city
ORDER BY average_funding DESC
LIMIT 10;


/* ------------------------------------------------------------
   Q9. Which cities have more than 100 funding rounds?
   ------------------------------------------------------------ */

SELECT
    city,
    COUNT(*) AS funding_rounds
FROM startup_funding
WHERE city IS NOT NULL
GROUP BY city
HAVING COUNT(*) > 100
ORDER BY funding_rounds DESC;


/* ============================================================
   SECTION 3: INDUSTRY ANALYSIS
   ============================================================ */


/* ------------------------------------------------------------
   Q10. Which industries receive the highest funding?
   ------------------------------------------------------------ */

SELECT
    industry,
    SUM(amount_usd) AS total_funding
FROM startup_funding
WHERE industry IS NOT NULL
  AND amount_usd IS NOT NULL
GROUP BY industry
ORDER BY total_funding DESC
LIMIT 10;


/* ------------------------------------------------------------
   Q11. Which industries have the most funding rounds?
   ------------------------------------------------------------ */

SELECT
    industry,
    COUNT(*) AS funding_rounds
FROM startup_funding
WHERE industry IS NOT NULL
GROUP BY industry
ORDER BY funding_rounds DESC
LIMIT 10;


/* ------------------------------------------------------------
   Q12. What is the average funding by industry?
   ------------------------------------------------------------ */

SELECT
    industry,
    ROUND(AVG(amount_usd), 2) AS average_funding
FROM startup_funding
WHERE industry IS NOT NULL
  AND amount_usd IS NOT NULL
GROUP BY industry
ORDER BY average_funding DESC
LIMIT 10;



/* ============================================================
   SECTION 4: INVESTMENT TYPE ANALYSIS
   ============================================================ */


/* ------------------------------------------------------------
   Q13. Which investment type is most common?
   ------------------------------------------------------------ */

SELECT
    investment_type,
    COUNT(*) AS funding_rounds
FROM startup_funding
WHERE investment_type IS NOT NULL
GROUP BY investment_type
ORDER BY funding_rounds DESC;


/* ------------------------------------------------------------
   Q14. Which investment type has the highest total funding?
   ------------------------------------------------------------ */

SELECT
    investment_type,
    SUM(amount_usd) AS total_funding
FROM startup_funding
WHERE investment_type IS NOT NULL
  AND amount_usd IS NOT NULL
GROUP BY investment_type
ORDER BY total_funding DESC;


/* ------------------------------------------------------------
   Q15. Average funding by investment type
   ------------------------------------------------------------ */

SELECT
    investment_type,

    COUNT(*) AS funding_rounds,

    ROUND(AVG(amount_usd), 2) AS average_funding,

    SUM(amount_usd) AS total_funding

FROM startup_funding

WHERE amount_usd IS NOT NULL

GROUP BY investment_type

ORDER BY total_funding DESC;


/* ============================================================
   SECTION 5: STARTUP ANALYSIS
   ============================================================ */


/* ------------------------------------------------------------
   Q16. Which startups received the highest total funding?
   ------------------------------------------------------------ */

SELECT
    startup_name,
    SUM(amount_usd) AS total_funding
FROM startup_funding
WHERE startup_name IS NOT NULL
  AND amount_usd IS NOT NULL
GROUP BY startup_name
ORDER BY total_funding DESC
LIMIT 20;


/* ------------------------------------------------------------
   Q17. Which startups received the most funding rounds?
   ------------------------------------------------------------ */

SELECT
    startup_name,
    COUNT(*) AS funding_rounds
FROM startup_funding
WHERE startup_name IS NOT NULL
GROUP BY startup_name
ORDER BY funding_rounds DESC
LIMIT 20;


/* ------------------------------------------------------------
   Q18. What are the 20 largest individual funding rounds?
   ------------------------------------------------------------ */

SELECT

    startup_name,

    city,

    industry,

    investors,

    investment_type,

    funding_date,

    amount_usd

FROM startup_funding

WHERE amount_usd IS NOT NULL

ORDER BY amount_usd DESC

LIMIT 20;


/* ============================================================
   SECTION 6: INVESTOR ANALYSIS
   ============================================================ */


/*
IMPORTANT:

The investors column can contain multiple investors
in a single row.

Example:

Investor A, Investor B, Investor C

Therefore, grouping directly by "investors" does not
represent perfect investor-level analysis.

These queries analyze the investor field as stored.
*/


/* ------------------------------------------------------------
   Q19. Which investor entries appear most frequently?
   ------------------------------------------------------------ */

SELECT
    investors,
    COUNT(*) AS funding_records
FROM startup_funding
WHERE investors IS NOT NULL
GROUP BY investors
ORDER BY funding_records DESC
LIMIT 20;


/* ------------------------------------------------------------
   Q20. Which investor entries are associated with
        the highest total funding?
   ------------------------------------------------------------ */

SELECT
    investors,
    SUM(amount_usd) AS total_funding
FROM startup_funding
WHERE investors IS NOT NULL
  AND amount_usd IS NOT NULL
GROUP BY investors
ORDER BY total_funding DESC
LIMIT 20;


/* ============================================================
   SECTION 7: TIME-SERIES ANALYSIS
   ============================================================ */


/* ------------------------------------------------------------
   Q21. What is the year-wise total funding?
   ------------------------------------------------------------ */

SELECT

    YEAR(funding_date) AS year,

    SUM(amount_usd) AS total_funding

FROM startup_funding

WHERE funding_date IS NOT NULL
  AND amount_usd IS NOT NULL

GROUP BY YEAR(funding_date)

ORDER BY year;


/* ------------------------------------------------------------
   Q22. How many funding rounds occurred each year?
   ------------------------------------------------------------ */

SELECT

    YEAR(funding_date) AS year,

    COUNT(*) AS funding_rounds

FROM startup_funding

WHERE funding_date IS NOT NULL

GROUP BY YEAR(funding_date)

ORDER BY year;


/* ------------------------------------------------------------
   Q23. How many unique startups received funding each year?
   ------------------------------------------------------------ */

SELECT

    YEAR(funding_date) AS year,

    COUNT(DISTINCT startup_name) AS unique_startups

FROM startup_funding

WHERE funding_date IS NOT NULL

GROUP BY YEAR(funding_date)

ORDER BY year;


/* ------------------------------------------------------------
   Q24. What is the average funding by year?
   ------------------------------------------------------------ */

SELECT

    YEAR(funding_date) AS year,

    ROUND(AVG(amount_usd), 2) AS average_funding

FROM startup_funding

WHERE funding_date IS NOT NULL
  AND amount_usd IS NOT NULL

GROUP BY YEAR(funding_date)

ORDER BY year;


/* ------------------------------------------------------------
   Q25. What is the month-wise funding trend?
   ------------------------------------------------------------ */

SELECT

    MONTH(funding_date) AS month_number,

    MONTHNAME(funding_date) AS month_name,

    SUM(amount_usd) AS total_funding

FROM startup_funding

WHERE funding_date IS NOT NULL
  AND amount_usd IS NOT NULL

GROUP BY
    MONTH(funding_date),
    MONTHNAME(funding_date)

ORDER BY month_number;



/* ============================================================
   SECTION 8: SUBQUERIES
   ============================================================ */


/* ------------------------------------------------------------
   Q26. Which funding rounds are above the overall
        average funding?
   ------------------------------------------------------------ */

SELECT

    startup_name,

    amount_usd

FROM startup_funding

WHERE amount_usd >
(
    SELECT AVG(amount_usd)
    FROM startup_funding
    WHERE amount_usd IS NOT NULL
)

ORDER BY amount_usd DESC;


/* ------------------------------------------------------------
   Q27. Which cities have funding above the average
        city-level funding?
   ------------------------------------------------------------ */

SELECT

    city,

    SUM(amount_usd) AS total_funding

FROM startup_funding

WHERE amount_usd IS NOT NULL

GROUP BY city

HAVING SUM(amount_usd) >
(
    SELECT AVG(city_total)
    FROM
    (
        SELECT
            city,
            SUM(amount_usd) AS city_total
        FROM startup_funding
        WHERE amount_usd IS NOT NULL
        GROUP BY city
    ) AS city_summary
)

ORDER BY total_funding DESC;



/* ============================================================
   SECTION 9: COMMON TABLE EXPRESSIONS (CTEs)
   ============================================================ */


/* ------------------------------------------------------------
   Q28. Create a city-level funding summary
   ------------------------------------------------------------ */

WITH city_funding AS (

    SELECT

        city,

        SUM(amount_usd) AS total_funding,

        COUNT(*) AS funding_rounds

    FROM startup_funding

    WHERE amount_usd IS NOT NULL

    GROUP BY city

)

SELECT *

FROM city_funding

ORDER BY total_funding DESC;


/* ------------------------------------------------------------
   Q29. Find top 10 cities using a CTE
   ------------------------------------------------------------ */

WITH city_funding AS (

    SELECT

        city,

        SUM(amount_usd) AS total_funding

    FROM startup_funding

    WHERE amount_usd IS NOT NULL

    GROUP BY city

)

SELECT *

FROM city_funding

ORDER BY total_funding DESC

LIMIT 10;


/* ============================================================
   SECTION 10: WINDOW FUNCTIONS
   ============================================================ */


/* ------------------------------------------------------------
   Q30. Rank all funding rounds by amount
   ------------------------------------------------------------ */

SELECT

    startup_name,

    amount_usd,

    RANK() OVER (
        ORDER BY amount_usd DESC
    ) AS funding_rank

FROM startup_funding

WHERE amount_usd IS NOT NULL;


/* ------------------------------------------------------------
   Q31. Rank startups within each city
   ------------------------------------------------------------ */

SELECT

    city,

    startup_name,

    amount_usd,

    RANK() OVER (

        PARTITION BY city

        ORDER BY amount_usd DESC

    ) AS city_rank

FROM startup_funding

WHERE amount_usd IS NOT NULL;


/* ------------------------------------------------------------
   Q32. Find the highest-funded startup in every city
   ------------------------------------------------------------ */

WITH ranked_startups AS (

    SELECT

        city,

        startup_name,

        amount_usd,

        ROW_NUMBER() OVER (

            PARTITION BY city

            ORDER BY amount_usd DESC

        ) AS rn

    FROM startup_funding

    WHERE amount_usd IS NOT NULL

)

SELECT

    city,

    startup_name,

    amount_usd

FROM ranked_startups

WHERE rn = 1;


/* ------------------------------------------------------------
   Q33. Find top 5 cities by funding for every year
   ------------------------------------------------------------ */

WITH city_year_funding AS (

    SELECT

        YEAR(funding_date) AS year,

        city,

        SUM(amount_usd) AS total_funding

    FROM startup_funding

    WHERE funding_date IS NOT NULL
      AND amount_usd IS NOT NULL

    GROUP BY

        YEAR(funding_date),

        city

),

ranked_cities AS (

    SELECT

        year,

        city,

        total_funding,

        DENSE_RANK() OVER (

            PARTITION BY year

            ORDER BY total_funding DESC

        ) AS city_rank

    FROM city_year_funding

)

SELECT

    year,

    city,

    total_funding,

    city_rank

FROM ranked_cities

WHERE city_rank <= 5

ORDER BY year, city_rank;



/* ============================================================
   SECTION 11: YEAR-WISE INDUSTRY RANKING
   ============================================================ */


/* ------------------------------------------------------------
   Q34. Find the top-funded industry for every year
   ------------------------------------------------------------ */

WITH industry_year_funding AS (

    SELECT

        YEAR(funding_date) AS year,

        industry,

        SUM(amount_usd) AS total_funding

    FROM startup_funding

    WHERE funding_date IS NOT NULL
      AND amount_usd IS NOT NULL
      AND industry IS NOT NULL

    GROUP BY

        YEAR(funding_date),

        industry

),

ranked_industries AS (

    SELECT

        year,

        industry,

        total_funding,

        RANK() OVER (

            PARTITION BY year

            ORDER BY total_funding DESC

        ) AS industry_rank

    FROM industry_year_funding

)

SELECT

    year,

    industry,

    total_funding

FROM ranked_industries

WHERE industry_rank = 1

ORDER BY year;


/* ============================================================
   SECTION 12: LARGEST FUNDING ROUND EACH YEAR
   ============================================================ */


/* ------------------------------------------------------------
   Q35. Find the largest individual funding round
        in each year
   ------------------------------------------------------------ */

WITH yearly_ranked AS (

    SELECT

        YEAR(funding_date) AS year,

        startup_name,

        city,

        industry,

        amount_usd,

        RANK() OVER (

            PARTITION BY YEAR(funding_date)

            ORDER BY amount_usd DESC

        ) AS funding_rank

    FROM startup_funding

    WHERE amount_usd IS NOT NULL

)

SELECT

    year,

    startup_name,

    city,

    industry,

    amount_usd

FROM yearly_ranked

WHERE funding_rank = 1

ORDER BY year;


/* ============================================================
   SECTION 13: FUNDING CONTRIBUTION
   ============================================================ */


/* ------------------------------------------------------------
   Q36. What percentage of total funding comes from
        each city?
   ------------------------------------------------------------ */

WITH city_funding AS (

    SELECT

        city,

        SUM(amount_usd) AS total_funding

    FROM startup_funding

    WHERE amount_usd IS NOT NULL

    GROUP BY city

)

SELECT

    city,

    total_funding,

    ROUND(

        100 * total_funding /
        SUM(total_funding) OVER (),

        2

    ) AS funding_percentage

FROM city_funding

ORDER BY total_funding DESC;



/* ============================================================
   SECTION 14: YEAR-OVER-YEAR FUNDING GROWTH
   ============================================================ */


/* ------------------------------------------------------------
   Q37. Calculate year-over-year funding growth
   ------------------------------------------------------------ */

WITH yearly_funding AS (

    SELECT

        YEAR(funding_date) AS year,

        SUM(amount_usd) AS total_funding

    FROM startup_funding

    WHERE funding_date IS NOT NULL
      AND amount_usd IS NOT NULL

    GROUP BY YEAR(funding_date)

),

previous_year AS (

    SELECT

        year,

        total_funding,

        LAG(total_funding) OVER (

            ORDER BY year

        ) AS previous_year_funding

    FROM yearly_funding

)

SELECT

    year,

    total_funding,

    previous_year_funding,

    ROUND(

        (
            (total_funding - previous_year_funding)
            / previous_year_funding
        ) * 100,

        2

    ) AS yoy_growth_percentage

FROM previous_year

ORDER BY year;


/* ============================================================
   SECTION 16: FUNDING CONCENTRATION
   ============================================================ */


/* ------------------------------------------------------------
   Q39. What percentage of total funding comes from
        the top 10 startups?
   ------------------------------------------------------------ */

WITH startup_totals AS (

    SELECT

        startup_name,

        SUM(amount_usd) AS total_funding

    FROM startup_funding

    WHERE amount_usd IS NOT NULL

    GROUP BY startup_name

),

ranked_startups AS (

    SELECT

        startup_name,

        total_funding,

        ROW_NUMBER() OVER (

            ORDER BY total_funding DESC

        ) AS rn

    FROM startup_totals

),

top_10 AS (

    SELECT

        SUM(total_funding) AS top_10_funding

    FROM ranked_startups

    WHERE rn <= 10

),

overall AS (

    SELECT

        SUM(amount_usd) AS overall_funding

    FROM startup_funding

    WHERE amount_usd IS NOT NULL

)

SELECT

    top_10_funding,

    overall_funding,

    ROUND(

        100 * top_10_funding / overall_funding,

        2

    ) AS top_10_percentage

FROM top_10

CROSS JOIN overall;

/* ============================================================
   SECTION 17: ADVANCED BUSINESS ANALYSIS
   ============================================================ */


/* ------------------------------------------------------------
   Q40. Find funding rounds above their city's
        average funding
   ------------------------------------------------------------ */

WITH city_average AS (

    SELECT

        city,

        AVG(amount_usd) AS avg_city_funding

    FROM startup_funding

    WHERE amount_usd IS NOT NULL

    GROUP BY city

)

SELECT

    s.city,

    s.startup_name,

    s.amount_usd,

    ROUND(c.avg_city_funding, 2) AS city_average

FROM startup_funding s

JOIN city_average c

    ON s.city = c.city

WHERE s.amount_usd > c.avg_city_funding

ORDER BY s.amount_usd DESC;

/* ============================================================
   SECTION 18: TOP STARTUP BY CITY AND YEAR
   ============================================================ */


/* ------------------------------------------------------------
   Q41. Find the highest-funded startup in each city
        for each year
   ------------------------------------------------------------ */

WITH startup_year_funding AS (

    SELECT

        YEAR(funding_date) AS year,

        city,

        startup_name,

        SUM(amount_usd) AS total_funding

    FROM startup_funding

    WHERE funding_date IS NOT NULL
      AND amount_usd IS NOT NULL

    GROUP BY

        YEAR(funding_date),

        city,

        startup_name

),

ranked_startups AS (

    SELECT

        year,

        city,

        startup_name,

        total_funding,

        ROW_NUMBER() OVER (

            PARTITION BY year, city

            ORDER BY total_funding DESC

        ) AS rn

    FROM startup_year_funding

)

SELECT

    year,

    city,

    startup_name,

    total_funding

FROM ranked_startups

WHERE rn = 1

ORDER BY year, city;