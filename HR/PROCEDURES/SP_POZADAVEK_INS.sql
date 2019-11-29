--------------------------------------------------------
--  DDL for Procedure SP_POZADAVEK_INS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SP_POZADAVEK_INS" (
I_TYP_POZADAVKU   IN VARCHAR2,
I_POPIS_POZADAVKU IN VARCHAR2
)
AUTHID DEFINER
IS
  v_typ_pozadavku_id HR.POZADAVEK_TYP.POZADAVEK_TYP_ID%TYPE := 1;
  v_jednaci_cislo    HR.POZADAVKY.JEDNACI_CISLO%TYPE; 
  v_datum            DATE := SYSDATE;
  v_zalozit_typ      BOOLEAN := TRUE;
  e_invalid_typ      EXCEPTION;

  PROCEDURE SP_GENEROVAT_JEDNACI_CISLO
  IS
  BEGIN
    SELECT 'JC'||TO_CHAR(NVL(MAX(POZADAVKY_ID),0) + 1)  INTO v_jednaci_cislo FROM HR.POZADAVKY;
  END SP_GENEROVAT_JEDNACI_CISLO;

BEGIN
  --Kontrola existence typu pozadavku
  BEGIN
    SELECT POZADAVEK_TYP_ID INTO v_typ_pozadavku_id
    FROM HR.POZADAVEK_TYP
    WHERE UPPER(POZADAVEK_TYP) = UPPER(I_TYP_POZADAVKU);
  EXCEPTION 
    WHEN NO_DATA_FOUND THEN
      IF v_zalozit_typ THEN
         null;
        --Zalozeni noveho typu pozadavku
        INSERT INTO HR.POZADAVEK_TYP
        (POZADAVEK_TYP_ID, POZADAVEK_TYP, POPIS_TYPU, DATUM_I)
        VALUES 
        (HR.SEQ_POZADAVEK_TYP_ID.NEXTVAL, UPPER(I_TYP_POZADAVKU), NULL, v_datum)
        RETURNING POZADAVEK_TYP_ID INTO v_typ_pozadavku_id;
      ELSE
        RAISE e_invalid_typ;
      END IF;
  END;

  --Generovat jednaci cislo
  SP_GENEROVAT_JEDNACI_CISLO;

  --Zalozeni pozadavku
  INSERT INTO HR.POZADAVKY
  (POZADAVKY_ID, POZADAVEK_TYP_ID, 
   POZADAVEK_STAV_ID, JEDNACI_CISLO,   
   POPIS_POZADAVKU,	DATUM_I 
  )
  VALUES 
  (HR.SEQ_POZADAVKY_ID.NEXTVAL, v_typ_pozadavku_id, 
   NULL, v_jednaci_cislo,
   I_POPIS_POZADAVKU, v_datum);

   COMMIT; 

EXCEPTION 
   WHEN e_invalid_typ THEN
     RAISE_APPLICATION_ERROR(-20001, 'Typ zadaneho pozadavku je neplatny!');
   WHEN OTHERS THEN
     RAISE;
END SP_POZADAVEK_INS;

/
