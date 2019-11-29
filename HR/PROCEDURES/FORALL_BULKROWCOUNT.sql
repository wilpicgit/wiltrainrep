--------------------------------------------------------
--  DDL for Procedure FORALL_BULKROWCOUNT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."FORALL_BULKROWCOUNT" 
AS
  TYPE NumList IS TABLE OF NUMBER;
  depts NumList := NumList(30, 50, 60);
BEGIN
  FORALL j IN depts.FIRST..depts.LAST
  DELETE FROM HR.emp_temp WHERE department_id = depts(j);
  FOR i IN depts.FIRST..depts.LAST LOOP
  DBMS_OUTPUT.PUT_LINE (
  'Statement #' || i || ' deleted ' ||
  SQL%BULK_ROWCOUNT(i) || ' rows.'
  );
  END LOOP;
  DBMS_OUTPUT.PUT_LINE('Total rows deleted: ' || SQL%ROWCOUNT);

  ROLLBACK;
END FORALL_BULKROWCOUNT;

/
