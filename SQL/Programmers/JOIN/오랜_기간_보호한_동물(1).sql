SELECT l.name, l.datetime
FROM animal_ins AS l
    LEFT JOIN animal_outs AS r ON l.animal_id = r.animal_id
WHERE r.animal_type IS NULL
ORDER BY l.datetime ASC
LIMIT 3