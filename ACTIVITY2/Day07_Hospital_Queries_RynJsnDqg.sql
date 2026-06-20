/* Scenario 1: ICU Critical Care Report
 - The medical director needs an urgent report of all patients currently in the ICU whose status is 'Critical'.
Show their patient_name, age, diagnosis, doctor_name, and billing_amount. Sort by billing_amount from
highest to lowest. */
SELECT patient_name, age, diagnosis, doctor_name, billing_amount
FROM patients
WHERE room_type = 'ICU' 
AND status = 'Critical'
ORDER BY billing_amount DESC;


/* Scenario 2: Senior Citizen Care Analysis
- The Geriatrics committee is studying admissions of senior patients. Show all patients whose age is
BETWEEN 60 AND 75 AND whose department is in ('Cardiology', 'Oncology', 'Neurology'). Show
patient_name, age, department, diagnosis, and status. Sort by age (oldest first). */
SELECT patient_name, age, department, diagnosis,status
FROM patients
WHERE age BETWEEN 60 AND 75 
AND department IN ('Cardiology', 'Oncology', 'Neurology')
ORDER BY age DESC;

/* Scenario 3: High-Value Billing Review
- The finance department needs to flag high-value admissions for insurance audit. Show all patients whose
billing_amount is BETWEEN ₱100,000 AND ₱250,000 AND whose room_type is 'Private' OR 'ICU'. Show
patient_name, room_type, billing_amount, and department. Sort by billing_amount (highest first), then
LIMIT the results to the TOP 10. */
SELECT patient_name, room_type, billing_amount, department 
FROM patients 
WHERE billing_amount BETWEEN 100000 AND 250000 
AND room_type IN ('Private', 'ICU') 
ORDER BY billing_amount DESC 
LIMIT 10;

/* Scenario 4: Diagnosis Pattern Search
- A research team is studying cancer cases across the hospital. Search the patients table for all patients
whose diagnosis contains the word 'Cancer' (use LIKE). Show patient_name, age, gender, diagnosis, and
billing_amount. Sort the results by age (youngest first).
Write your query and interpretation. */
SELECT patient_name, age, gender, diagnosis, billing_amount
FROM patients
WHERE diagnosis LIKE '%Cancer%'
ORDER BY age ASC;

/* Scenario 5: Recent Admissions Dashboard
- The front-desk supervisor wants a quick dashboard of the most recent admissions from Q3 2025 (July 1 –
September 30). Show all patients admitted in this period whose status is 'Discharged' OR 'Stable'. Display
patient_name, admission_date, department, room_type, and status. Sort by admission_date (newest
first), then LIMIT to 15 records. */

SELECT patient_name, admission_date, department, room_type, status
FROM patients 
WHERE admission_date BETWEEN '2025-07-01' AND '2025-09-30'
AND status IN ('Discharged', 'Stable')
ORDER BY admission_date DESC
LIMIT 15;