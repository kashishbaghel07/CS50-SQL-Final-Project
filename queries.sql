-- Insert hospital departments
INSERT INTO "departments" ("name")
VALUES
('Cardiology'),
('Orthopaedics'),
('Paediatrics'),
('Neurology'),
('Psychiatry'),
('Dermatology'),
('Oncology'),
('Gastroenterology'),
('Ophthalmology'),
('Obstetrics and Gynecology'),
('Dentistry');

-- Insert patient records
INSERT INTO "patients"("first_name", "last_name", "gender", "date_of_birth", "blood_group","contact_number", "email", "address")
VALUES
('Rahul','Yadav','M','1988-05-14','B+','7012345601','rahulyadav@gmail.com','Flat 302, Shree Ganesh Residency, Manish Nagar, Nagpur'),
('Pooja','Sharma','F','1995-09-22','A+','7012345602','poojasharma@gmail.com','H.No. 45, Shivaji Nagar, Wardha'),
('Kabir','Ali','M','2018-03-10','O+','7012345603','kabirali@gmail.com','Flat 12, Noor Apartment, Mominpura, Nagpur'),
('Meera','Iyer','F','1976-11-08','AB+','7012345604','meeraiyer@gmail.com','B-204, Sai Orchid Heights, Dharampeth, Nagpur'),
('Dev','Pawar','M','1965-01-30','A-','7012345605','devpawar@gmail.com','H.No. 118, Rajendra Nagar, Hingna'),
('Nisha','Bhosale','F','2016-07-18','AB-','7012345606','nishabhosale@gmail.com','Flat 505, Lotus Enclave, Trimurti Nagar, Nagpur'),
('Aryan','Chaudhary','M','2012-02-25','A+','7012345607','aryanc@gmail.com','Flat 103, Om Sai Residency, Pratap Nagar, Nagpur'),
('Farah','Mirza','F','1984-08-16','O-','7012345608','farahmirza@gmail.com','H.No. 27, Green Park Colony, Kamptee'),
('Sanjay','Thakur','M','1972-12-03','AB+','7012345609','sanjaythakur@gmail.com','Flat 401, Gokul Heights, Civil Lines, Nagpur'),
('Kavya','Rao','F','1999-06-28','B+','7012345610','kavyarao@gmail.com','Bungalow 9, Shanti Vihar, Sadar, Nagpur'),
('Om','Jadhav','M','2008-10-09','A+','7012345611','omjadhav@gmail.com','Flat 207, Tulsi Residency, Beltarodi, Nagpur'),
('Ritika','Paul','F','1993-04-12','O+','7012345612','ritikapaul@gmail.com','Flat 601, Blue Bells Apartment, Jaripatka, Nagpur'),
('Mohit','Saxena','M','1981-09-01','B-','7012345613','mohitsaxena@gmail.com','H.No. 56, Laxmi Nagar, Nagpur'),
('Aisha','Khan','F','2001-01-20','A+','7012345614','aishakhan@gmail.com','Flat 305, Crystal Palace, Seminary Hills, Nagpur'),
('Vikram','Rathod','M','1958-03-17','O+','7012345615','vikramrathod@gmail.com','H.No. 92, New Colony, Butibori'),
('Sneha','Chopra','F','1987-07-05','AB-','7012345616','snehachopra@gmail.com','Flat 402, Royal Heights, Narendra Nagar, Nagpur'),
('Ibrahim','Sheikh','M','1990-11-27','B+','7012345617','ibrahimsheikh@gmail.com','Flat 15, Al-Huda Residency, Itwari, Nagpur'),
('Tanvi','Joshi','F','2014-05-11','A+','7012345618','tanvijoshi@gmail.com','Flat 101, Park View Apartments, Ramdaspeth, Nagpur'),
('Ramesh','Patil','M','1969-08-23','AB+','7012345619','rameshpatil@gmail.com','H.No. 14, Vivekanand Nagar, Wardha'),
('Kashish','Baghel','F','2004-02-14','O-','7012345620','kashishbaghel@gmail.com','Flat 506, Khushal Paradise Apartments, Godhani, Nagpur'),
('Gauri','Naidu','F','1992-10-18','A+','7012345621','gaurinaidu@gmail.com','Flat 208, Harmony Towers, Wardhaman Nagar, Nagpur'),
('Pranav','Kulshrestha','M','1985-12-09','B+','7012345622','pranavk@gmail.com','H.No. 33, Ashok Chowk, Amravati'),
('Zoya','Pathan','F','2019-06-02','O+','7012345623','zoyapathan@gmail.com','Flat 8, Crescent Homes, Nandanvan, Nagpur'),
('Mahesh','Agrawal','M','1955-04-26','A-','7012345624','maheshagrawal@gmail.com','Bungalow 18, Palm Residency, Friends Colony, Nagpur'),
('Shruti','Desai','F','2003-09-30','AB+','7012345625','shrutidesai@gmail.com','Flat 303, Emerald Residency, Medical Square, Nagpur');

-- Insert doctors and their department assignments
INSERT INTO "doctors"("department_id","first_name","last_name","gender","specialization","years_experience","blood_group","is_blood_donor","contact_number","email")
VALUES
(1,'Amit','Singh','M','Interventional Cardiology',5,'B+',0,'7596245459','amitsingh@gmail.com'),
(1,'Sumita','Sen','F','Electrophysiology',3,'AB+',1,'8796244359','sumita01@gmail.com'),
(1,'Neha','Verma','F','Pediatric Cardiology',8,'O+',1,'9812345678','nehaverma@gmail.com'),
(2,'Ravi','Baghel','M','Spine Surgery',8,'O+',1,'8809624431','ravibaghel15@gmail.com'),
(2,'Sarbuland','Khan','M','Joint Replacement Surgery',4,'A-',1,'9053648321','sarbuland0@gmail.com'),
(3,'Cristin','Dsouza','F','Pediatric Intensive Care',6,'AB-',1,'9953154741','cristin11@gmail.com'),
(3,'Simran','Rajput','F','Pediatric Endocrinology',2,'A+',0,'7755431682','simranrajput@gmail.com'),
(4,'Arjun','Mehta','M','Neurosurgery',12,'A+',1,'6282534391','arjun62@gmail.com'),
(4,'Iqra','Qureshi','F','Epilepsy',9,'O-',1,'9456374154','iqraa0@gmail.com'),
(5,'Ananya','Kulkarni','F','Clinical Psychiatry',5,'AB+',1,'6745892148','ananyakulkarni@gmail.com'),
(5,'Ethan','Dsouza','M','Child and Adolescent Psychiatry',7,'A+',0,'9909475642','ethannn@gmail.com'),
(6,'Vihaan','Joshi','M','Dermatopathology',6,'B+',0,'8264573192','vihaan13@gmail.com'),
(6,'Maria','Fernandes','F','Cosmetic Dermatology',4,'AB-',1,'7459684242','mariaaa@gmail.com'),
(7,'Harleen','Gill','M','Medical Oncology',10,'O+',1,'9145242174','harleen00@gmail.com'),
(7,'Karan','Malhotra','M','Radiation Oncology',9,'A-',0,'9823456789','karanmalhotra@gmail.com'),
(7,'Rehaan','Siddiqui','M','Surgical Oncology',11,'B+',1,'7462475143','rehaan18@gmail.com'),
(8,'Alina','Thomas','F','Hepatology',4,'A+',0,'6541248792','alinaathomass@gmail.com'),
(8,'Aarav','Sharma','M','Digestive Endoscopy',6,'B+',1,'8877446241','aaravsharma@gmail.com'),
(9,'Diya','Patel','F','Retina Specialist',9,'AB+',1,'6655412783','diya20@gmail.com'),
(9,'Swati','Tiwari','F','Cornea Specialist',14,'A-',1,'9765397662','swatiitiwari01@gmail.com'),
(10,'Fatima','Ansari','F','Gynecologic Oncology',5,'A+',1,'8082167541','fatimaansari001@gmail.com'),
(10,'Rohan','Deshmukh','M','Maternal and Fetal Medicine',7,'O+',1,'7445186471','rohaaan99@gmail.com'),
(11,'Priya','Nair','F','Orthodontics',5,'B+',1,'9834567890','priyanair@gmail.com'),
(11,'Yuvraj','Chawla','M','General Dentistry',6,'B+',0,'6973125402','yuvchawla22@gmail.com'),
(11,'Ishita','Banerjee','F','Endodontics',3,'O-',1,'9284102188','ishitaabanrjee8@gmail.com');

-- Insert patient appointments
INSERT INTO "appointments" ("patient_id","doctor_id","appointment_date","appointment_time", "reason_for_visit","status")
VALUES
(1, 1, '2026-08-21', '09:00', 'Chest pain', 'Completed'),
(2, 2, '2026-08-26', '09:30', 'Irregular heartbeat', 'Completed'),
(3, 3, '2026-08-28', '10:00', 'Heart murmur checkup', 'Scheduled'),
(4, 4, '2026-08-28', '10:30', 'Back pain', 'Completed'),
(5, 5, '2026-09-02', '11:00', 'Knee replacement consultation', 'Cancelled'),
(6, 6, '2026-09-05', '11:30', 'Child fever', 'Completed'),
(7, 7, '2026-09-15', '12:00', 'Growth assessment', 'Scheduled'),
(8, 8, '2026-09-17', '14:00', 'Seizure evaluation', 'Completed'),
(9, 9, '2026-09-27', '14:30', 'Migraine treatment', 'Completed'),
(10, 10, '2026-10-01', '15:00', 'Anxiety counseling', 'Scheduled'),
(11, 11, '2026-10-06', '09:00', 'Behavioral therapy', 'Completed'),
(12, 12, '2026-10-21', '09:30', 'Skin rash', 'Completed'),
(13, 13, '2026-10-24', '10:00', 'Acne treatment', 'Scheduled'),
(14, 14, '2026-11-13', '10:30', 'Cancer consultation', 'Completed'),
(15, 15, '2026-11-16', '11:00', 'Radiotherapy follow-up', 'Completed'),
(16, 16, '2026-11-22', '11:30', 'Tumor review','Completed' ),
(17, 17, '2026-12-14', '12:00', 'Liver function evaluation', 'Scheduled'),
(18, 18, '2026-12-24', '14:00', 'Digestive discomfort', 'Completed'),
(19, 19, '2026-12-26', '14:30', 'Blurred vision', 'Completed'),
(20, 20, '2026-12-31', '15:00', 'Eye infection', 'Scheduled'),
(21, 21, '2027-01-23', '09:00', 'Prenatal checkup', 'Completed'),
(22, 22, '2027-01-28', '09:30', 'High-risk pregnancy review', 'Completed'),
(23, 23, '2027-02-09', '10:00', 'Braces consultation', 'Scheduled'),
(24, 24, '2027-02-15', '10:30', 'Tooth cavity','Cancelled'),
(25, 25, '2027-02-21', '11:00', 'Root canal pain', 'Completed');

-- Insert diagnoses for completed appointments
INSERT INTO "diagnoses"("appointment_id","diagnosis_name","description","diagnosis_date")
VALUES
(1,'Hypertension','Elevated blood pressure confirmed after examination','2026-08-21'),
(2,'Cardiac Arrhythmia','Irregular heart rhythm detected during monitoring','2026-08-26'),
(4,'Lumbar Disc Herniation','Lower back disc injury causing pain','2026-08-28'),
(6,'Viral Fever','Acute viral infection with fever','2026-09-05'),
(8,'Epilepsy','Seizure disorder confirmed by EEG','2026-09-17'),
(9,'Chronic Migraine','Recurring migraine headaches diagnosed','2026-09-27'),
(11,'Generalized Anxiety Disorder','Persistent anxiety symptoms observed','2026-10-06'),
(12,'Allergic Dermatitis','Skin allergy causing inflammation','2026-10-21'),
(14,'Breast Cancer','Malignant breast tumor diagnosed','2026-11-13'),
(15,'Lung Cancer','Cancer affecting lung tissue','2026-11-16'),
(16,'Benign Brain Tumor','Non-cancerous brain tumor identified','2026-11-22'),
(18,'Gastritis','Inflammation of stomach lining','2026-12-24'),
(19,'Refractive Error','Vision impairment diagnosed','2026-12-26'),
(21,'Normal Pregnancy','Healthy prenatal examination','2027-01-23'),
(22,'Gestational Hypertension','Pregnancy-related high blood pressure','2027-01-28'),
(25,'Dental Pulp Infection','Tooth nerve infection diagnosed','2027-02-21');

-- Insert treatments performed during appointments
INSERT INTO "treatments"("appointment_id","treatment_type","description","treatment_date","cost")
VALUES
(1,'Lifestyle Management','Dietary advice and blood pressure monitoring','2026-08-21',1500.00),
(2,'Cardiac Observation','Holter monitor fitted for rhythm assessment','2026-08-26',2800.00),
(4,'Physical Rehabilitation','Spinal mobility and posture therapy','2026-08-28',1200.00),
(6,'Supportive Care','Hydration therapy and fever management','2026-09-05',900.00),
(8,'Neurological Evaluation','EEG procedure and seizure counseling','2026-09-17',3500.00),
(9,'Pain Management','Migraine trigger counseling and therapy','2026-09-27',1100.00),
(11,'Psychological Therapy','Cognitive behavioral therapy session','2026-10-06',1800.00),
(12,'Dermatology Care','Skin care treatment and allergy counseling','2026-10-21',950.00),
(14,'Oncology Planning','Chemotherapy treatment planning session','2026-11-13',8500.00),
(15,'Radiation Therapy','External beam radiation procedure','2026-11-16',7200.00),
(16,'MRI Consultation','Specialist review of MRI findings','2026-11-22',2500.00),
(18,'Therapeutic Endoscopy','Endoscopic examination with gastric care','2026-12-24',4500.00),
(19,'Vision Correction','Eye examination and corrective lens fitting','2026-12-26',1300.00),
(21,'Antenatal Care','Routine maternal health assessment','2027-01-23',1600.00),
(22,'Maternal Monitoring','Blood pressure monitoring during pregnancy','2027-01-28',3200.00),
(25,'Root Canal Procedure','Removal of infected pulp and tooth restoration','2027-02-21',6000.00);

-- Insert prescribed medications
INSERT INTO "medications"("medication_name","dosage_form")
VALUES
('Amlodipine 5 mg', 'Tablet'),
('Metoprolol 50 mg', 'Tablet'),
('Paracetamol 500 mg', 'Tablet'),
('Amoxicillin 500 mg', 'Capsule'),
('Levetiracetam 500 mg', 'Tablet'),
('Sumatriptan 50 mg', 'Tablet'),
('Sertraline 50 mg', 'Tablet'),
('Cetirizine 10 mg', 'Tablet'),
('Hydrocortisone 1%', 'Cream'),
('Omeprazole 20 mg', 'Capsule'),
('Folic Acid 5 mg', 'Tablet'),
('Labetalol 100 mg', 'Tablet'),
('Artificial Tears', 'Eye Drops'),
('Ibuprofen 400 mg', 'Tablet'),
('Chlorhexidine 0.2%', 'Mouthwash'),
('Vitamin D3 60000 IU', 'Tablet');

-- Insert patient prescriptions
INSERT INTO "prescriptions"("treatment_id","medication_id","dosage","frequency","duration")
VALUES
(1, 1, '1 tablet', 'Once daily', '30 days'),
(2, 2, '1 tablet', 'Twice daily', '14 days'),
(3, 14, '1 tablet', 'Twice daily', '7 days'),
(4, 3, '1 tablet', 'Three times daily', '5 days'),
(5, 5, '1 tablet', 'Twice daily', '30 days'),
(6, 6, '1 tablet', 'As needed', '15 days'),
(7, 7, '1 tablet', 'Once daily', '30 days'),
(8, 8, '1 tablet', 'Once daily', '7 days'),
(8, 9, 'Apply thin layer', 'Twice daily', '10 days'),
(9, 16, '1 tablet', 'Once weekly', '8 weeks'),
(12, 10, '1 capsule', 'Before breakfast', '14 days'),
(13, 13, '2 drops', 'Three times daily', '14 days'),
(14, 11, '1 tablet', 'Once daily', '90 days'),
(15, 12, '1 tablet', 'Twice daily', '30 days'),
(16, 15, '10 ml', 'Twice daily', '7 days');

-- Insert patient billing records
INSERT INTO "bills"("patient_id","appointment_id","bill_date","amount","payment_method","payment_status")
VALUES
(1, 1, '2026-08-21', 1500.00, 'UPI', 'Paid'),
(2, 2, '2026-08-26', 2800.00, 'Card', 'Paid'),
(3, 3, '2026-08-28', 500.00, 'Cash', 'Pending'),
(4, 4, '2026-08-28', 1200.00, 'UPI', 'Paid'),
(5, 5, '2026-09-02', 0.00, 'Cash', 'Paid'),
(6, 6, '2026-09-05', 900.00, 'UPI', 'Paid'),
(7, 7, '2026-09-15', 600.00, 'Card', 'Pending'),
(8, 8, '2026-09-17', 3500.00, 'Insurance', 'Paid'),
(9, 9, '2026-09-27', 1100.00, 'Cash', 'Paid'),
(10, 10, '2026-10-01', 800.00, 'UPI', 'Pending'),
(11, 11, '2026-10-06', 1800.00, 'Card', 'Paid'),
(12, 12, '2026-10-21', 950.00, 'Cash', 'Paid'),
(13, 13, '2026-10-24', 700.00, 'UPI', 'Pending'),
(14, 14, '2026-11-13', 8500.00, 'Insurance', 'Paid'),
(15, 15, '2026-11-16', 7200.00, 'Insurance', 'Paid'),
(16, 16, '2026-11-22', 2500.00, 'Card', 'Paid'),
(17, 17, '2026-12-14', 900.00, 'UPI', 'Pending'),
(18, 18, '2026-12-24', 4500.00, 'Card', 'Paid'),
(19, 19, '2026-12-26', 1300.00, 'Cash', 'Paid'),
(20, 20, '2026-12-31', 750.00, 'UPI', 'Pending'),
(21, 21, '2027-01-23', 1600.00, 'Insurance', 'Paid'),
(22, 22, '2027-01-28', 3200.00, 'Insurance', 'Paid'),
(23, 23, '2027-02-09', 1000.00, 'Card', 'Pending'),
(24, 24, '2027-02-15', 0.00, 'Cash', 'Paid'),
(25, 25, '2027-02-21', 6000.00, 'UPI', 'Paid');

-------------------------------------------------------------------------------

---Display all doctors with their department names
SELECT doctors.first_name AS "doctor_first_name",
doctors.last_name AS "doctor_last_name",
departments.name AS "department_name"
FROM doctors
JOIN departments ON departments.department_id = doctors.department_id ;

---List all cancelled appointments with patient and doctor names.
SELECT doctors.first_name AS "doctor_first_name",
doctors.last_name AS "doctor_last_name",
patients.first_name AS "patient_first_name",
patients.last_name AS "patient_last_name",
appointments.appointment_date AS "appointment_date",
appointments.status
FROM doctors
JOIN appointments ON appointments.doctor_id = doctors.doctor_id
JOIN patients ON patients.patient_id = appointments.patient_id
WHERE appointments.status = 'Cancelled' ;

---Find patients who visited the Cardiology department.
SELECT patients.first_name AS "patient_first_name",
patients.last_name AS "patient_last_name",
departments.name AS "department_name"
FROM patients
JOIN appointments ON appointments.patient_id = patients.patient_id
JOIN doctors ON doctors.doctor_id = appointments.doctor_id
JOIN departments ON departments.department_id = doctors.department_id
WHERE departments.name = 'Cardiology'
ORDER BY appointments.appointment_date ASC ;

---Display each patient's diagnosis along with the diagnosis date, ordered by the most recent diagnosis.
SELECT patients.first_name AS "patient_first_name",
patients.last_name AS "patient_last_name",
diagnoses.diagnosis_name AS "diagnosis_name",
diagnoses.diagnosis_date AS "diagnosis_date"
FROM patients
JOIN appointments ON appointments.patient_id = patients.patient_id
JOIN diagnoses ON diagnoses.appointment_id = appointments.appointment_id
ORDER BY diagnoses.diagnosis_date DESC;

---Display all prescribed medications along with the patient name, dosage, frequency, and duration.
SELECT patients.first_name AS "patient_first_name",
patients.last_name AS "patient_last_name",
medications.medication_name AS "medication_name",
prescriptions.dosage AS "dosage",
prescriptions.frequency AS "frequency",
prescriptions.duration AS "duration"
FROM patients
JOIN appointments ON appointments.patient_id = patients.patient_id
JOIN treatments ON treatments.appointment_id = appointments.appointment_id
JOIN prescriptions ON prescriptions.treatment_id = treatments.treatment_id
JOIN medications ON medications.medication_id = prescriptions.medication_id
ORDER BY patients.first_name ASC , patients.last_name ASC;

---Display the total number of appointments for each appointment status.
SELECT status, COUNT(*) AS total_appointments
FROM appointments
GROUP BY status;

---Find patients born between 1985 and 2005 whose blood group is O+ or A+.
SELECT first_name, last_name,date_of_birth,blood_group
FROM patients
WHERE date_of_birth BETWEEN '1985-01-01' AND '2005-12-31'
AND (blood_group = 'O+' OR blood_group = 'A+');

---Display doctors with 5–10 years of experience who are registered blood donors, ordered by experience.
SELECT doctors.first_name AS "doctor_first_name",
doctors.last_name AS "doctor_last_name",
doctors.years_experience AS "years_experience",
departments.name AS "department_name"
FROM doctors
JOIN departments ON departments.department_id = doctors.department_id
WHERE doctors.years_experience BETWEEN 5 AND 10
AND doctors.is_blood_donor = 1
ORDER BY doctors.years_experience DESC;

---Search for all patients whose address contains "Wardha".
SELECT patients.first_name AS "patient_first_name",
patients.last_name AS "patient_last_name"
FROM patients
WHERE address LIKE '%Wardha%';

---Update Bill ID 3 after the patient pays via UPI by changing the payment status to Paid.
UPDATE bills
SET payment_status = 'Paid',
payment_method = 'UPI'
WHERE bill_id = 3 ;

---Mark the discontinued medication "Vitamin D3 60000 IU" as inactive instead of deleting it from the hospital medication inventory.
ALTER TABLE medications
ADD COLUMN "is_active" INTEGER NOT NULL DEFAULT 1
CHECK (is_active IN (0,1));    ---0 NOT ACTIVE -- 1 ACTIVE

UPDATE medications
SET is_active = 0
WHERE medication_name = 'Vitamin D3 60000 IU';   --- SOFT DELETE

---Find the department with the highest average treatment cost.
SELECT departments.name AS department_name,
       ROUND(AVG(treatments.cost), 2) AS highest_average_treatment_cost
FROM treatments
JOIN appointments ON appointments.appointment_id = treatments.appointment_id
JOIN doctors ON doctors.doctor_id = appointments.doctor_id
JOIN departments ON departments.department_id = doctors.department_id
GROUP BY departments.department_id, departments.name
HAVING AVG(treatments.cost) = (
    SELECT MAX(avg_cost)
    FROM (
        SELECT AVG(cost) AS avg_cost
        FROM treatments
        JOIN appointments ON appointments.appointment_id = treatments.appointment_id
        JOIN doctors ON doctors.doctor_id = appointments.doctor_id
        GROUP BY doctors.department_id
    )
);   -- Other way instead of having use--- ORDER BY highest_average_treatment_cost DESC LIMIT 1;


---Generate a department-wise revenue report showing only paid bills, sorted from highest to lowest revenue.
SELECT departments.name AS "department_name",
ROUND(SUM(bills.amount), 2) AS "total_revenue"
FROM bills
JOIN appointments ON appointments.appointment_id = bills.appointment_id
JOIN doctors ON doctors.doctor_id = appointments.doctor_id
JOIN departments ON departments.department_id = doctors.department_id
WHERE bills.payment_status = 'Paid'
GROUP BY departments.department_id,departments.name
ORDER BY total_revenue DESC;

--- Display the complete medical history of all patients
SELECT * FROM patient_medical_history
ORDER BY patient_id;
