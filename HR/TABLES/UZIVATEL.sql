--------------------------------------------------------
--  DDL for Table UZIVATEL
--------------------------------------------------------

  CREATE TABLE "HR"."UZIVATEL" 
   (	"UZIVATEL_ID" NUMBER, 
	"PRIJMENI" VARCHAR2(50 BYTE), 
	"JMENO" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"DATUM_I" DATE, 
	"DATUM_U" DATE, 
	"UZIV_I" VARCHAR2(30 BYTE), 
	"UZIV_U" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "HR"."UZIVATEL"."UZIVATEL_ID" IS 'Primarni klic tabulky.';
 
   COMMENT ON COLUMN "HR"."UZIVATEL"."PRIJMENI" IS 'Prijmeni uzivatele.';
 
   COMMENT ON COLUMN "HR"."UZIVATEL"."JMENO" IS 'Jmeno uzivatele.';
 
   COMMENT ON COLUMN "HR"."UZIVATEL"."EMAIL" IS 'Pracovni Email uzivatele';
 
   COMMENT ON COLUMN "HR"."UZIVATEL"."DATUM_I" IS 'Datum zalozeni uzivatele';
 
   COMMENT ON COLUMN "HR"."UZIVATEL"."DATUM_U" IS 'Datum upravy uzivatele.';
 
   COMMENT ON COLUMN "HR"."UZIVATEL"."UZIV_I" IS 'DB uzivatel, ktery zaznam vlozil.';
 
   COMMENT ON COLUMN "HR"."UZIVATEL"."UZIV_U" IS 'DB uzivatel, ktery zaznam naposled upravil.';
 
   COMMENT ON TABLE "HR"."UZIVATEL"  IS 'Uzivatele, kteri se podili na reseni pozadavku od klienta';
