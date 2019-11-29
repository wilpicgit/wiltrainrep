--------------------------------------------------------
--  DDL for Index UZIVATEL_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."UZIVATEL_ID_PK" ON "HR"."UZIVATEL" ("UZIVATEL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
