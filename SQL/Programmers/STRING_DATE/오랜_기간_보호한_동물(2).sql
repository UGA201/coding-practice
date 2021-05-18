SELECT l.animal_id, l.name
FROM animal_ins AS l
    INNER JOIN animal_outs AS r ON l.animal_id = r.animal_id
ORDER BY r.datetime - l.datetime DESC
LIMIT 2