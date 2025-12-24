-- load info

-- USE silver_db;

-- TRUNCATE TABLE crm_cust_info;

-- INSERT INTO crm_cust_info (
--     cst_id,
--     cst_key,
--     first_name,
--     last_name,
--     marital_status,
--     gender,
--     create_date
-- )
-- SELECT
--     CAST(NULLIF(b.cst_id, '') AS SIGNED)              AS cst_id,
--     b.cst_key                                        AS cst_key,
--     TRIM(b.cst_firstname)                            AS first_name,
--     TRIM(b.cst_lastname)                             AS last_name,
--     TRIM(b.cst_marital_status)                       AS marital_status,
--     CASE
--         WHEN b.cst_gndr IN ('M','F') THEN b.cst_gndr
--         ELSE 'Unknown'
--     END                                              AS gender,
--     STR_TO_DATE(b.cst_create_date, '%Y-%m-%d')       AS create_date
-- FROM bronze_db.crm_cust_info b;
