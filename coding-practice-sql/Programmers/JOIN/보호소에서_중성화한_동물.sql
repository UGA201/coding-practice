SELECT l.animal_id, l.animal_type, l.name
FROM animal_ins AS l
    INNER JOIN animal_outs AS r ON l.animal_id = r.animal_id
WHERE l.sex_upon_intake LIKE 'Intact%' 
    AND (r.sex_upon_outcome LIKE 'Spayed%' 
        OR r.sex_upon_outcome LIKE 'Neutered%')