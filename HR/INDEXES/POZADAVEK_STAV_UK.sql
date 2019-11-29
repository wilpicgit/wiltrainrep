--------------------------------------------------------
--  DDL for Index POZADAVEK_STAV_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."POZADAVEK_STAV_UK" ON "HR"."POZADAVEK_STAV" ("POZADAVEK_STAV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
