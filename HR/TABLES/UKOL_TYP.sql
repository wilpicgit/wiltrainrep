--------------------------------------------------------
--  DDL for Table UKOL_TYP
--------------------------------------------------------

  CREATE TABLE "HR"."UKOL_TYP" 
   (	"UKOL_TYP_ID" NUMBER, 
	"UKOL_TYP" VARCHAR2(50 BYTE), 
	"POPIS_UKOLU" VARCHAR2(50 BYTE), 
	"DATUM_I" DATE, 
	"DATUM_U" DATE, 
	"UZIV_I" VARCHAR2(30 BYTE), 
	"UZIV_U" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "HR"."UKOL_TYP"."UKOL_TYP_ID" IS 'Primarni klic tabulky.';
 
   COMMENT ON COLUMN "HR"."UKOL_TYP"."UKOL_TYP" IS 'Typ ukolu';
 
   COMMENT ON COLUMN "HR"."UKOL_TYP"."POPIS_UKOLU" IS 'Popis ukolu.';
 
   COMMENT ON COLUMN "HR"."UKOL_TYP"."DATUM_I" IS 'Datum zalozeni typu ukolu';
 
   COMMENT ON COLUMN "HR"."UKOL_TYP"."DATUM_U" IS 'Datum upravy typu ukolu.';
 
   COMMENT ON COLUMN "HR"."UKOL_TYP"."UZIV_I" IS 'DB uzivatel, ktery zaznam vlozil.';
 
   COMMENT ON COLUMN "HR"."UKOL_TYP"."UZIV_U" IS 'DB uzivatel, ktery zaznam naposled upravil.';
 
   COMMENT ON TABLE "HR"."UKOL_TYP"  IS 'Typy ukolu v ramci reseni pozadavku od klienta';
