USE silver_db;

TRUNCATE TABLE crm_sales_details;

INSERT INTO crm_sales_details (
    order_number,
    prd_key,
    cst_id,
    order_date,
    ship_date,
    due_date,
    sales_amount,
    quantity,
    price
)
SELECT
    b.sls_ord_num AS order_number,
    b.sls_prd_key AS prd_key,
    CAST(NULLIF(b.sls_cust_id, '') AS SIGNED) AS cst_id,

    CASE
        WHEN b.sls_order_dt REGEXP '^[0-9]{8}$'
            THEN STR_TO_DATE(b.sls_order_dt, '%Y%m%d')
        WHEN b.sls_order_dt REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
            THEN STR_TO_DATE(b.sls_order_dt, '%Y-%m-%d')
        ELSE NULL
    END AS order_date,

    CASE
        WHEN b.sls_ship_dt REGEXP '^[0-9]{8}$'
            THEN STR_TO_DATE(b.sls_ship_dt, '%Y%m%d')
        WHEN b.sls_ship_dt REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
            THEN STR_TO_DATE(b.sls_ship_dt, '%Y-%m-%d')
        ELSE NULL
    END AS ship_date,

    CASE
        WHEN b.sls_due_dt REGEXP '^[0-9]{8}$'
            THEN STR_TO_DATE(b.sls_due_dt, '%Y%m%d')
        WHEN b.sls_due_dt REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
            THEN STR_TO_DATE(b.sls_due_dt, '%Y-%m-%d')
        ELSE NULL
    END AS due_date,

    CAST(NULLIF(b.sls_sales, '') AS DECIMAL(14,2)) AS sales_amount,
    CAST(NULLIF(b.sls_quantity, '') AS SIGNED)     AS quantity,
    CAST(NULLIF(b.sls_price, '') AS DECIMAL(14,2)) AS price
FROM bronze_db.crm_sales_details b;
