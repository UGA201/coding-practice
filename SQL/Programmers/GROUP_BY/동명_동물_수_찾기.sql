SELECT name, count(*) as COUNT
FROM animal_ins
GROUP BY name
HAVING count(name) >= 2  --- GROUP에 적용 시 HAVING 사용
ORDER BY name ASC