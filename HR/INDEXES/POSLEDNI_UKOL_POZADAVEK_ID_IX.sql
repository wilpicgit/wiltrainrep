--------------------------------------------------------
--  DDL for Index POSLEDNI_UKOL_POZADAVEK_ID_IX
--------------------------------------------------------

  CREATE INDEX "HR"."POSLEDNI_UKOL_POZADAVEK_ID_IX" ON "HR"."POSLEDNI_UKOL_POZADAVKU" ("POZADAVKY_ID", "UKOLY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
