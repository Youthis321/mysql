# SKALAR-YEAR
SELECT
    NOPEMBAYARAN,
    YEAR(TANGGAL_PEMBAYARAN)
FROM
    hukuman
WHERE
    YEAR(TANGGAL_PEMBAYARAN) > 1995;
#SKALAR-CONCAT
SELECT
    NOPEMAIN,
    CONCAT(LEFT(INISIAL, 1), '.', NAMA) AS NAMA_BARU
FROM
    pemain
WHERE
    LEFT(NAMA, 1) = 'R';