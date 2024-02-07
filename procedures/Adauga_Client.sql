create or replace PROCEDURE AdaugaClient(
    v_Nume VARCHAR2,
    v_Prenume VARCHAR2,
    v_Data_Nasterii DATE,
    v_Adrese VARCHAR2,
    v_Nr_Telefon VARCHAR2,
    v_Banca_Id NUMBER
) AS
    v_Client_Id NUMBER;
BEGIN
    -- Generarea ID-ului clientului utilizând secvența
    SELECT SEQ_CLIENT_ID.NEXTVAL INTO v_Client_Id FROM DUAL;

    -- Inserarea noii înregistrări în tabelul CLIENT
    INSERT INTO CLIENT (Client_Id, Banca_Id, Nume, Prenume, Data_Nasterii, Adrese, Nr_Telefon)
    VALUES (v_Client_Id, v_Banca_Id, v_Nume, v_Prenume, v_Data_Nasterii, v_Adrese, v_Nr_Telefon);

    COMMIT;
END AdaugaClient;
/