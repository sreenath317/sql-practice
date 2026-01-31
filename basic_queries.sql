  -- Basic SELECT query
SELECT * FROM patients;

-- Filtering data
SELECT name, age
FROM patients
WHERE age > 40;

-- Aggregation example
SELECT diagnosis, COUNT(*) AS total_cases
FROM patients
GROUP BY diagnosis;

-- Join example
SELECT p.name, d.doctor_name
FROM patients p
JOIN doctors d
ON p.doctor_id = d.doctor_id;
