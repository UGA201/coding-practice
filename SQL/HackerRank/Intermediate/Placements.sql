-- SELECT S.name
-- FROM Students S
--     INNER JOIN Packages P ON S.id = P.id
--     INNER JOIN (SELECT F.id, F.friend_id, FP.salary
--                 FROM Friends F
--                     INNER JOIN Packages FP ON F.Friend_id = FP.id) as FS 
--                     ON S.id = FS.id
-- WHERE P.salary < FS.salary
-- ORDER BY FS.salary

-- /*
-- another solution (by datarian)
SELECT S.name
FROM Friends F
     INNER JOIN Students S ON F.id = S.id
     INNER JOIN Packages P1 ON P1.id = F.id
     INNER JOIN Packages P2 ON P2.id = F.friend_id
WHERE P1.salary < P2.salary
ORDER BY P2.salary

-- */