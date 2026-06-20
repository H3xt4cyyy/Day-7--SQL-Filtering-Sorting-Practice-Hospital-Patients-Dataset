-- Part A: AND, OR, NOT (5 queries)

-- Question 1. Show all patients from the Cardiology department where age is greater than 50.
SELECT *
FROM patients
WHERE department = 'Cardiology' AND age > 50;
-- Result: 8 rows returned

-- Question 2. Show all patients who live in Cebu City OR Davao City.
SELECT *
FROM patients
WHERE city IN ('Cebu City', 'Davao City');
-- Result: 18 rows returned

-- Question 3. Show all patients who are NOT in the Pediatrics department.
SELECT *
FROM patients
WHERE department != 'Pediatrics';
-- Result: 42 rows returned

-- Question 4. Show all Female patients whose status is 'Critical'.
SELECT * 
FROM patients
WHERE gender = 'Female' AND status = 'Critical';
-- Result: 3 rows returned

-- Question 5. Show all patients where the room_type is 'ICU' AND billing_amount is greater than ₱150,000.
SELECT * 
FROM patients
WHERE room_type = 'ICU' AND billing_amount > 150000;
-- Result: 9 rows returned