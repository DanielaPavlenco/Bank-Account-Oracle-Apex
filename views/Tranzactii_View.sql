  CREATE OR REPLACE FORCE EDITIONABLE VIEW "TRANZACTII_VIEW" ("TRANZACTIE_ID", "DATA_TRANZACTIEI", "SUMA", "TIP_TRANZACTIE", "CLIENT_ID") AS 
  SELECT Tranzactie_Id, Data_Tranzactiei, Suma, Tip_Tranzactie, Client_Id
FROM TRANZACTIE;