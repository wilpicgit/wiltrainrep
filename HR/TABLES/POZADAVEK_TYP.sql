--------------------------------------------------------
--  DDL for Table POZADAVEK_TYP
--------------------------------------------------------

  CREATE TABLE "HR"."POZADAVEK_TYP" 
   (	"POZADAVEK_TYP_ID" NUMBER, 
	"POZADAVEK_TYP" VARCHAR2(50 BYTE), 
	"POPIS_TYPU" VARCHAR2(50 BYTE), 
	"DATUM_I" DATE, 
	"DATUM_U" DATE, 
	"UZIV_I" VARCHAR2(30 BYTE), 
	"UZIV_U" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "HR"."POZADAVEK_TYP"."POZADAVEK_TYP_ID" IS 'Primarni klic tabulky.';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_TYP"."POZADAVEK_TYP" IS 'Typ pozadavku';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_TYP"."POPIS_TYPU" IS 'Popis typu pozadavku.';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_TYP"."DATUM_I" IS 'Datum zalozeni typu pozadavku';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_TYP"."DATUM_U" IS 'Datum upravy typu pozadavku.';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_TYP"."UZIV_I" IS 'DB uzivatel, ktery zaznam vlozil.';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_TYP"."UZIV_U" IS 'DB uzivatel, ktery zaznam naposled upravil.';
 
   COMMENT ON TABLE "HR"."POZADAVEK_TYP"  IS 'Typy zadanych pozadavku od klienta';
