SELECT
    NOPEMAIN, NAMA,
    BERGABUNG,
    CASE
        WHEN BERGABUNG < 1995 THEN 'SENIOR'
        WHEN BERGABUNG >= 1995 THEN 'JUNIOR'
    END AS KELOMPOK_PEMAIN
FROM
    pemain
ORDER BY
    BERGABUNG;
    
    
#CASE2

SELECT
    NOPEMAIN,
    NAMA,
    BERGABUNG,
    KOTA,
    CASE
        WHEN BERGABUNG >= 1990
        AND BERGABUNG <= 1995 THEN 'SENIOR'
        WHEN KOTA = 'sIANTAR'
        THEN 'BERASAL DARI SUMUT'
        WHEN NOPEMAIN < 10
        THEN 'PEMAIN UTAMA'
        ELSE 'PEMAIN PENDUKUNG'
        END AS KLASIFIKASI
        FROM pemain;
        
#CASE3
SELECT
    NOTIM,
    DIVISI,
    CASE
        WHEN DIVISI = 'PERTAMA' THEN 'DIVISI PERTAMA'
        ELSE 'DIVISI KEDUA'
        END AS 'KLASIFIKASI DIVISI'
        FROM tim;