--------------------------------------------------------
--  DDL for Table UKOLY
--------------------------------------------------------

  CREATE TABLE "HR"."UKOLY" 
   (	"UKOLY_ID" NUMBER, 
	"POZADAVKY_ID" NUMBER, 
	"UKOL_TYP_ID" NUMBER, 
	"UKOL_STAV_ID" NUMBER, 
	"UZIVATEL_ID" NUMBER, 
	"UKOL_ZAHAJEN" DATE, 
	"UKOL_UKONCEN" DATE, 
	"UKOL_POSLENDI" CHAR(1 BYTE) DEFAULT 'N', 
	"DATUM_I" DATE, 
	"DATUM_U" DATE, 
	"UZIV_I" VARCHAR2(30 BYTE), 
	"UZIV_U" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "HR"."UKOLY"."UKOLY_ID" IS 'Primarni klic tabulky.';
 
   COMMENT ON COLUMN "HR"."UKOLY"."POZADAVKY_ID" IS 'Cizi klic na POZADAVKY.POZADAVKY_ID';
 
   COMMENT ON COLUMN "HR"."UKOLY"."UKOL_TYP_ID" IS 'Cizi klic na UKOL_TYP.UKOL_TYP_ID';
 
   COMMENT ON COLUMN "HR"."UKOLY"."UKOL_STAV_ID" IS 'Cizi klic na UKOL_STAV.UKOL_STAV_ID';
 
   COMMENT ON COLUMN "HR"."UKOLY"."UZIVATEL_ID" IS 'Cizi klic na UZIVATEL.UZIVATEL_ID';
 
   COMMENT ON COLUMN "HR"."UKOLY"."UKOL_ZAHAJEN" IS 'Datum zahajeni ukolu';
 
   COMMENT ON COLUMN "HR"."UKOLY"."UKOL_UKONCEN" IS 'Datum ukonceni ukolu';
 
   COMMENT ON COLUMN "HR"."UKOLY"."UKOL_POSLENDI" IS 'Priznak urcujici, ze tento ukol byl posledni v ramci daneho pozadavku';
 
   COMMENT ON COLUMN "HR"."UKOLY"."DATUM_I" IS 'Datum zalozeni ukolu';
 
   COMMENT ON COLUMN "HR"."UKOLY"."DATUM_U" IS 'Datum upravy ukolu.';
 
   COMMENT ON TABLE "HR"."UKOLY"  IS 'Ukoly uzivatelu, v ramci reseni pozadavku od klienta';
