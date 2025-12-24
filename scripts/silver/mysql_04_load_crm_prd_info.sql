
-- Silver Layer: Load CRM Products

USE silver_db;

TRUNCATE TABLE crm_prd_info;

INSERT INTO crm_prd_info (
    prd_id,
    prd_key,
    product_name,
    cost,
    product_line,
    start_date,
    end_date
)
SELECT
    CAST(NULLIF(b.prd_id, '') AS SIGNED)            AS prd_id,
    b.prd_key                                      AS prd_key,
    TRIM(b.prd_nm)                                 AS product_name,
    CAST(NULLIF(b.prd_cost, '') AS DECIMAL(12,2))  AS cost,
    TRIM(b.prd_line)                               AS product_line,
    STR_TO_DATE(b.prd_start_dt, '%Y-%m-%d')        AS start_date,
    STR_TO_DATE(NULLIF(b.prd_end_dt, ''), '%Y-%m-%d') AS end_date
FROM bronze_db.crm_prd_info b;
