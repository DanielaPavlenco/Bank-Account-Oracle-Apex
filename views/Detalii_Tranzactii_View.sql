  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DETALII_TRANZACTII_VIEW" ("DETALIU_ID", "CONT_ID", "TRANZACTIE_ID", "SUMA_TRANZACTIONALA", "DATA_TRANZACTIEI", "SUMA", "TIP_TRANZACTIE", "CLIENT_ID", "NUME_CLIENT", "PRENUME_CLIENT", "NUME_BANCA") AS 
  SELECT
    D.Detaliu_Id,
    D.Cont_Id,
    D.Tranzactie_Id,
    D.Suma_Tranzactionala,
    T.Data_Tranzactiei,
    T.Suma,
    T.Tip_Tranzactie,
    T.Client_Id,
    C.Nume AS Nume_Client,
    C.Prenume AS Prenume_Client,
    B.Nume_Banca
FROM DETALIU_TRANZACTII D
JOIN TRANZACTIE T ON D.Tranzactie_Id = T.Tranzactie_Id
JOIN CLIENT C ON T.Client_Id = C.Client_Id
JOIN BANCA B ON C.Banca_Id = B.Banca_Id;