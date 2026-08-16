WITH c AS (
    SELECT
        visited_on,
        SUM(amount) AS amount
    FROM customer
    GROUP BY visited_on
),
d AS (
    SELECT
        visited_on,
        amount,
        SUM(amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS total_amount,
        AVG(amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS average_amount,
        ROW_NUMBER() OVER (
            ORDER BY visited_on
        ) AS rn
    FROM c
)
SELECT
    visited_on,
    total_amount AS amount,
    ROUND(average_amount, 2) AS average_amount
FROM d
WHERE rn >= 7
ORDER BY visited_on;