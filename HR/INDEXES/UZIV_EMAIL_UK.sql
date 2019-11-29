--------------------------------------------------------
--  DDL for Index UZIV_EMAIL_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."UZIV_EMAIL_UK" ON "HR"."UZIVATEL" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
