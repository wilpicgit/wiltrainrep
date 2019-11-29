--------------------------------------------------------
--  DDL for Index UZIVATEL_ID_IX
--------------------------------------------------------

  CREATE INDEX "HR"."UZIVATEL_ID_IX" ON "HR"."UKOLY" ("UZIVATEL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
