create or replace PROCEDURE AfiseazaClientiCuBanca AS
BEGIN
    FOR rec IN (SELECT c.Client_Id, c.Nume, c.Prenume, b.Nume_Banca
                FROM CLIENT c
                JOIN BANCA b ON c.Banca_Id = b.Banca_Id)
    LOOP
        DBMS_OUTPUT.PUT_LINE('Client ID: ' || rec.Client_Id ||
                             ', Nume: ' || rec.Nume ||
                             ', Prenume: ' || rec.Prenume ||
                             ', Banca: ' || rec.Nume_Banca);
    END LOOP;
END AfiseazaClientiCuBanca;
/