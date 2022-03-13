-- SELECT e.company_code, 
--         c.founder, 
--         COUNT(DISTINCT e.lead_manager_code), 
--         COUNT(DISTINCT e.senior_manager_code), 
--         COUNT(DISTINCT e.manager_code), 
--         COUNT(DISTINCT e.employee_code)
-- FROM Employee as e 
--     JOIN Company as c on e.company_code = c.company_code
-- GROUP BY e.company_code, c.founder
/*
if manager has no employee
the solution above occurs an error
ex. SM2 has no Manager => omission
*/

SELECT C.company_code, 
        C.founder,
        COUNT(DISTINCT LM.lead_manager_code),
        COUNT(DISTINCT SM.senior_manager_code),
        COUNT(DISTINCT M.manager_code),
        COUNT(DISTINCT E.employee_code)
FROM Company C
    LEFT JOIN Lead_Manager LM ON C.company_code = LM.company_code
    LEFT JOIN Senior_Manager SM ON LM.lead_manager_code = SM.lead_manager_code
    LEFT JOIN Manager M ON SM.senior_manager_code = M.senior_manager_code
    LEFT JOIN Employee E ON M.manager_code = E.manager_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code