--------------------------------------------------------
--  DDL for Index POZADAVEK_TYP_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."POZADAVEK_TYP_UK" ON "HR"."POZADAVEK_TYP" ("POZADAVEK_TYP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
