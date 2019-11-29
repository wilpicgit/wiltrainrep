--------------------------------------------------------
--  DDL for Index POZADAVKY_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."POZADAVKY_ID_PK" ON "HR"."POZADAVKY" ("POZADAVKY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
