--------------------------------------------------------
--  Ref Constraints for Table POZADAVKY
--------------------------------------------------------

  ALTER TABLE "HR"."POZADAVKY" ADD CONSTRAINT "POZADAVEK_STAV_ID_FK" FOREIGN KEY ("POZADAVEK_STAV_ID")
	  REFERENCES "HR"."POZADAVEK_STAV" ("POZADAVEK_STAV_ID") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "HR"."POZADAVKY" ADD CONSTRAINT "POZADAVEK_TYP_ID_FK" FOREIGN KEY ("POZADAVEK_TYP_ID")
	  REFERENCES "HR"."POZADAVEK_TYP" ("POZADAVEK_TYP_ID") ON DELETE SET NULL ENABLE;
