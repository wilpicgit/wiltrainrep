--------------------------------------------------------
--  DDL for Table POZADAVEK_STAV
--------------------------------------------------------

  CREATE TABLE "HR"."POZADAVEK_STAV" 
   (	"POZADAVEK_STAV_ID" NUMBER, 
	"POZADAVEK_STAV" VARCHAR2(50 BYTE), 
	"POPIS_STAVU" VARCHAR2(50 BYTE), 
	"DATUM_I" DATE, 
	"DATUM_U" DATE, 
	"UZIV_I" VARCHAR2(30 BYTE), 
	"UZIV_U" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "HR"."POZADAVEK_STAV"."POZADAVEK_STAV_ID" IS 'Primarni klic tabulky.';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_STAV"."POZADAVEK_STAV" IS 'Stav pozadavku';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_STAV"."POPIS_STAVU" IS 'Popis stavu pozadavku.';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_STAV"."DATUM_I" IS 'Datum zalozeni stavu pozadavku';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_STAV"."DATUM_U" IS 'Datum upravy stavu pozadavku.';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_STAV"."UZIV_I" IS 'DB uzivatel, ktery zaznam vlozil.';
 
   COMMENT ON COLUMN "HR"."POZADAVEK_STAV"."UZIV_U" IS 'DB uzivatel, ktery zaznam naposled upravil.';
 
   COMMENT ON TABLE "HR"."POZADAVEK_STAV"  IS 'Stavy zadanych pozadavku od klienta';
