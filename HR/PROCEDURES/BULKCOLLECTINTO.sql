--------------------------------------------------------
--  DDL for Procedure BULKCOLLECTINTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."BULKCOLLECTINTO" IS
  CURSOR c1 IS
  SELECT first_name, last_name, hire_date
  FROM hr.employees;
  TYPE NameSet IS TABLE OF c1%ROWTYPE;
  stock_managers NameSet; -- nested table of records

BEGIN
  -- Assign values to nested table of records:
  SELECT first_name, last_name, hire_date
  BULK COLLECT INTO stock_managers
  FROM hr.employees
  WHERE job_id = 'ST_MAN'
  ORDER BY hire_date;
  -- Print nested table of records:
  FOR i IN stock_managers.FIRST .. stock_managers.LAST LOOP
    DBMS_OUTPUT.PUT_LINE (
    stock_managers(i).hire_date || ' ' ||
    stock_managers(i).last_name || ', ' ||
    stock_managers(i).first_name
    );
  END LOOP;
END BULKCOLLECTINTO;

/
