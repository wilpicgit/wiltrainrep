--------------------------------------------------------
--  DDL for Index JEDNACI_CISLO_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."JEDNACI_CISLO_UK" ON "HR"."POZADAVKY" ("JEDNACI_CISLO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
