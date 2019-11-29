--------------------------------------------------------
--  DDL for Procedure FORALL_SAVEEXCEPTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."FORALL_SAVEEXCEPTION" AUTHID DEFINER AS
  TYPE NumList IS TABLE OF NUMBER;
  depts NumList := NumList(10, 20, 30);
  error_message VARCHAR2(100);
  bad_stmt_no PLS_INTEGER;
  bad_deptno emp_temp.deptno%TYPE;
  bad_job emp_temp.job%TYPE;
  dml_errors EXCEPTION;
  PRAGMA EXCEPTION_INIT(dml_errors, -24381);
BEGIN
  -- Populate table:
  INSERT INTO HR.emp_temp (deptno, job) VALUES (10, 'Clerk');
  INSERT INTO HR.emp_temp (deptno, job) VALUES (20, 'Bookkeeper');
  INSERT INTO HR.emp_temp (deptno, job) VALUES (30, 'Analyst');
  COMMIT;
  -- Append 9-character string to each job:
  FORALL j IN depts.FIRST..depts.LAST SAVE EXCEPTIONS
  UPDATE HR.emp_temp SET job = job || ' (Senior)'
  WHERE deptno = depts(j);
EXCEPTION
  WHEN dml_errors THEN
    FOR i IN 1..SQL%BULK_EXCEPTIONS.COUNT LOOP
    error_message := SQLERRM(-(SQL%BULK_EXCEPTIONS(i).ERROR_CODE));
    DBMS_OUTPUT.PUT_LINE (error_message);
    bad_stmt_no := SQL%BULK_EXCEPTIONS(i).ERROR_INDEX;
    DBMS_OUTPUT.PUT_LINE('Bad statement #: ' || bad_stmt_no);
    bad_deptno := depts(bad_stmt_no);
    DBMS_OUTPUT.PUT_LINE('Bad department #: ' || bad_deptno);
    SELECT job INTO bad_job FROM HR.emp_temp WHERE deptno = bad_deptno;
    DBMS_OUTPUT.PUT_LINE('Bad job: ' || bad_job);
    END LOOP;
    COMMIT; -- Commit results of successful updates
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Unrecognized error.');
    RAISE;
END FORALL_SAVEEXCEPTION;

/
