select
    nopemain,
    kota,
    tanggal_lahir,
    CASE
        kota
        WHEN 'Siantar' THEN 0
        WHEN 'Medan' THEN 1
        WHEN 'Bandung' THEN 2
        ELSE 3
    end as p,
    CASE kota
    WHEN 'siantar' THEN
    CASE tanggal_lahir
    WHEN '1981-06-25' THEN 'robert'
    ELSE 'tidak ada' end
    WHEN 'bandung' THEN
    CASE tanggal_lahir
    WHEN '1988-03-19' THEN 'rini'
    ELSE 'tidak ada' end
    ELSE 'istirahat'
    end as Kondisi
    FROM pemain;