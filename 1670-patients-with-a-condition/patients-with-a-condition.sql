# Write your MySQL query statement below
select patient_id, patient_name, conditions from Patients
where conditions LIKE 'DIAB1%'
OR conditions LIKE '% DIAB1%'
order by patient_id #no need though

#new functions #Learn
-- 1. At the end: 'DIAB1%'Meaning: Must start with "DIAB1". Anything can follow it.Matches: DIAB100, DIAB199, DIAB1Fails: SADIAB100 (does not start with DIAB1)2. At the beginning: '%DIAB1'Meaning: Must end with "DIAB1". Anything can come before it.Matches: SICKDIAB1, CODEDIAB1Fails: DIAB100 (does not end with DIAB1)
