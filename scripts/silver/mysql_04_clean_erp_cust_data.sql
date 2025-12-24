-- Script to clean and load ERP customer data into Silver layer

INSERT INTO silver_db.erp_cust_az12 (cst_id, birth_date, gender)
SELECT 
    TRIM(SUBSTRING_INDEX(raw_record, ',', 1)) AS cst_id,

    CASE
        WHEN TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(raw_record, ',', 2), ',', -1)) 
             REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
            THEN STR_TO_DATE(TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(raw_record, ',', 2), ',', -1)), '%Y-%m-%d')
        WHEN TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(raw_record, ',', 2), ',', -1)) 
             REGEXP '^[0-9]{8}$'
            THEN STR_TO_DATE(TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(raw_record, ',', 2), ',', -1)), '%Y%m%d')
        ELSE NULL
    END AS birth_date,

    -- Check for empty gender values and set default to 'Unknown'
    CASE
        WHEN TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(raw_record, ',', 3), ',', -1)) IN ('Male', 'Female')
            THEN TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(raw_record, ',', 3), ',', -1))
        ELSE 'Unknown'
    END AS gender

FROM bronze_db.erp_cust_az12_raw;
