--3a
SET SERVEROUTPUT ON
ACCEPT ANGKA1 PROMPT 'MASUKKAN ANGKA PERTAMA: ';
ACCEPT ANGKA2 PROMPT 'MASUKKAN ANGKA KEDUA: ';
ACCEPT ANGKA3 PROMPT 'MASUKKAN ANGKA KETIGA: ';
ACCEPT ANGKA4 PROMPT 'MASUKKAN ANGKA KEEMPAT: ';

DECLARE 
    V_ANGKA1 NUMBER (9,2) := &ANGKA1;
    V_ANGKA2 NUMBER (9,2) := &ANGKA2;
    V_ANGKA3 NUMBER (9,2) := &ANGKA3;
    V_ANGKA4 NUMBER (9,2) := &ANGKA4;
        HASIL NUMBER (9,2);
BEGIN 
        HASIL := (V_ANGKA1 + V_ANGKA2) / (V_ANGKA3 + V_ANGKA4);
        DBMS_OUTPUT.PUT_LINE(HASIL);
 END;
/

--3b
SET VERIFY OFF 
SET ECHO OFF 
--MENDEKLARASI VARIABEL BIND / SQL*PLUS
VARIABLE HASIL NUMBER;
--MEMBUAT VARIABEL SUBTITUSI
ACCEPT ANGKA1 PROMPT 'MASUKKAN ANGKA PERTAMA: ';
ACCEPT ANGKA2 PROMPT 'MASUKKAN ANGKA KEDUA: ';
ACCEPT ANGKA3 PROMPT 'MASUKKAN ANGKA KETIGA: ';
ACCEPT ANGKA4 PROMPT 'MASUKKAN ANGKA KEEMPAT: ';

--BLOK PROGRAM PL/SQL
DECLARE 
    V_ANGKA1 NUMBER (9,2) := &ANGKA1;
    V_ANGKA2 NUMBER (9,2) := &ANGKA2;
    V_ANGKA3 NUMBER (9,2) := &ANGKA3;
    V_ANGKA4 NUMBER (9,2) := &ANGKA4;
        HASIL NUMBER (9,2);
BEGIN 
        :HASIL := (V_ANGKA1 + V_ANGKA2) / (V_ANGKA3 + V_ANGKA4);
        --DBMS_OUTPUT.PUT_LINE(HASIL);
 END;
/
PRINT HASIL:

--4
SET VERIFY OFF
SET ECHO OFF
SET SERVEROUTPUT ON
ACCEPT GAJI PROMPT 'MASUKKAN GAJI:';
ACCEPT BONUS PROMPT 'MASUKKAN BONUS:';
DECLARE 
V_GAJI NUMBER (9,2):= &GAJI;
V_BONUS NUMBER (9,2):= &BONUS;
HASIL_PAJAK NUMBER (9,2);
TOTAL_GAJI NUMBER (9,2);
BEGIN
HASIL_PAJAK := (((NVL(V_GAJI,0)) - (NVL(V_GAJI,0))*10/100)*12);
TOTAL_GAJI := HASIL_PAJAK +(HASIL_PAJAK *(NVL(V_BONUS,0)/100));
DBMS_OUTPUT.put_line(TOTAL_GAJI);
END;
/
SET SERVEROUTPUT OFF
