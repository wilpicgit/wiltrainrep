--------------------------------------------------------
--  DDL for Index POZADAVKY_ID_IX
--------------------------------------------------------

  CREATE INDEX "HR"."POZADAVKY_ID_IX" ON "HR"."UKOLY" ("POZADAVKY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
