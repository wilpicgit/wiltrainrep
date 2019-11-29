--------------------------------------------------------
--  DDL for Index POSLEDNI_UKOL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."POSLEDNI_UKOL_PK" ON "HR"."POSLEDNI_UKOL_POZADAVKU" ("UKOLY_ID", "POZADAVKY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
