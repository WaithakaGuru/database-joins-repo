/* The SQL code below fetches patient details alongside 
    some details of their assigned doctor(s)*/

SELECT p.patient_name AS P_Name,
p.dob P_Date_of_Birth,
d.id AS doctor_ID, d.doc_name Doctor_Name
FROM patients p 
LEFT JOIN 
doctors d
ON p.doctor_id = d.id;