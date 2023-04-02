UPDATE Segment
SET etage = 
    CASE nomSegement
        WHEN '130.120.80' THEN 0
        WHEN '130.120.81' THEN 1
        WHEN '130.120.82' THEN 2
        ELSE NULL
    END;

UPDATE Logiciels
SET prix = prix * 0.9
WHERE type = 'PCNT';





