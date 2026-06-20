-- Part C: ORDER BY and LIMIT (5 queries)

-- Question 11. Show all patients sorted by billing_amount from highest to lowest (DESC).
SELECT *
FROM patients
ORDER BY billing_amount DESC;
-- Result: 50 rows returned

-- Question 12. Show the TOP 5 most expensive admissions (highest billing_amount). Use LIMIT.
SELECT *
FROM patients
ORDER BY billing_amount DESC LIMIT 5;
-- Result: 5 rows returned

-- Question 13. Show all Pediatrics patients sorted by admission_date oldest first (ASC).
SELECT *
FROM patients
WHERE department = 'Pediatrics'
ORDER BY admission_date ASC;
-- Result: 8 rows returned

-- Question 14. Show the 10 most recent admissions (sort by admission_date newest first, then LIMIT 10).
SELECT *
FROM patients
ORDER BY admission_date DESC LIMIT 10;
-- Result: 10 rows returned

-- Question 15. Show all patients from Metro Manila cities (Manila, Makati, Quezon City, Pasig), sorted by department A–Z, then by billing_amount highest first.
SELECT *
FROM patients
WHERE city IN ('Manila', 'Makati', 'Quezon City', 'Pasig')
ORDER BY department ASC, billing_amount DESC;
-- Result: 28 rows returned