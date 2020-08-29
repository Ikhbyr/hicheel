CREATE OR REPLACE VIEW vw_dict_demo_const_2
(
   id,
   name,
   name2,
   extra,
   order_no,
   company_code
)
AS
     SELECT col_value AS id,
            name,
            name2,
            '' AS extra,
            order_no,
            '0' AS company_code
       FROM demo_const
       where table_name = 'DEMO_SCHOOL'
       ORDER BY ORDER_NO;

CREATE OR REPLACE VIEW VW_DEMO_SCHOOL
(
    DEMOID,
    USERID,
    SCHOOLNAME,
    STARTDATE,
    ENDDATE,
    GRADEPOINT,
    SCHOOL_NAME,
    SCHOOL_NAME2,
    ORDER_NO
)
AS
SELECT DEMOID,
    USERID,
    SCHOOLNAME,
    STARTDATE,
    ENDDATE,
    GRADEPOINT,
    NAME AS SCHOOL_NAME,
    NAME2 AS SCHOOL_NAME2,
    ORDER_NO
FROM DEMO_SCHOOL A
LEFT JOIN DEMO_CONST C2
ON A.SCHOOLNAME = C2.COL_VALUE
