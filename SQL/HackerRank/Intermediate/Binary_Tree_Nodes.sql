SELECT DISTINCT BST.N
        , CASE
            WHEN BST.P IS NULL THEN 'Root'
            WHEN BST2.N IS NULL THEN 'Leaf'
            ELSE 'Inner'
          END
FROM BST 
    LEFT JOIN BST AS BST2 ON BST.N = BST2.P
ORDER BY BST.N