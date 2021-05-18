SELECT l.animal_id, l.name
FROM animal_outs AS l
        LEFT JOIN animal_ins AS r ON l.animal_id = r.animal_id
WHERE intake_condition IS NULL