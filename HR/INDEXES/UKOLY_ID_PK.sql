--------------------------------------------------------
--  DDL for Index UKOLY_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."UKOLY_ID_PK" ON "HR"."UKOLY" ("UKOLY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
