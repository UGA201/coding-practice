SELECT l.animal_id, l.name
FROM animal_ins AS l
    INNER JOIN animal_outs AS r ON l.animal_id = r.animal_id
WHERE l.datetime > r.datetime
ORDER BY l.datetime