--------------------------------------------------------
--  DDL for Table UKOL_STAV
--------------------------------------------------------

  CREATE TABLE "HR"."UKOL_STAV" 
   (	"UKOL_STAV_ID" NUMBER, 
	"UKOL_STAV" VARCHAR2(50 BYTE), 
	"POPIS_STAVU" VARCHAR2(50 BYTE), 
	"DATUM_I" DATE, 
	"DATUM_U" DATE, 
	"UZIV_I" VARCHAR2(30 BYTE), 
	"UZIV_U" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "HR"."UKOL_STAV"."UKOL_STAV_ID" IS 'Primarni klic tabulky.';
 
   COMMENT ON COLUMN "HR"."UKOL_STAV"."UKOL_STAV" IS 'Stav ukolu';
 
   COMMENT ON COLUMN "HR"."UKOL_STAV"."POPIS_STAVU" IS 'Popis stavu.';
 
   COMMENT ON COLUMN "HR"."UKOL_STAV"."DATUM_I" IS 'Datum zalozeni typu stavu';
 
   COMMENT ON COLUMN "HR"."UKOL_STAV"."DATUM_U" IS 'Datum upravy typu stavu.';
 
   COMMENT ON COLUMN "HR"."UKOL_STAV"."UZIV_I" IS 'DB uzivatel, ktery zaznam vlozil.';
 
   COMMENT ON COLUMN "HR"."UKOL_STAV"."UZIV_U" IS 'DB uzivatel, ktery zaznam naposled upravil.';
 
   COMMENT ON TABLE "HR"."UKOL_STAV"  IS 'Stavy ukolu, v ramci reseni pozadavku od klienta';
