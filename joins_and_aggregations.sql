-- INNER JOIN example
SELECT p.name AS patient_name, d.doctor_name
FROM patients p
INNER JOIN doctors d
ON p.doctor_id = d.doctor_id;

-- LEFT JOIN example
SELECT p.name AS patient_name, d.doctor_name
FROM patients p
LEFT JOIN doctors d
ON p.doctor_id = d.doctor_id;

-- Aggregation with HAVING
SELECT diagnosis, COUNT(*) AS total_patients
FROM patients
GROUP BY diagnosis
HAVING COUNT(*) > 5;

-- Subquery example
SELECT name, age
FROM patients
WHERE age > (
    SELECT AVG(age)
    FROM patients
);

-- Data validation: checking NULL values
SELECT *
FROM patients
WHERE doctor_id IS NULL;
