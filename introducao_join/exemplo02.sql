SELECT A.patient_id, A.first_name, B.
province_name FROM patients 
as A RIGHT JOIN province_names AS B
on A.province_id = B.province_id 
WHERE A.first_name is NULL