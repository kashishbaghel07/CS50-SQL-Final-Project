-- Represents Patient Information
CREATE TABLE "patients" (
    "patient_id" INTEGER PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "gender" TEXT NOT NULL CHECK("gender" IN ('M', 'F', 'Other')),
    "date_of_birth" TEXT NOT NULL ,
    "blood_group" TEXT NOT NULL CHECK(blood_group IN ('A+','A-','B+','B-','AB+','AB-','O+','O-')),
    "contact_number" TEXT NOT NULL,
    "email" TEXT  ,
    "address" TEXT NOT NULL
);

-- Represents Departments
CREATE TABLE "departments" (
    "department_id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE
);

-- Represents Doctor Information
CREATE TABLE "doctors" (
    "doctor_id" INTEGER PRIMARY KEY,
    "department_id" INTEGER NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "gender" TEXT NOT NULL CHECK("gender" IN ('M', 'F', 'Other')),
    "specialization" TEXT NOT NULL,
    "years_experience" INTEGER NOT NULL CHECK("years_experience" >= 0),
    "blood_group" TEXT NOT NULL CHECK("blood_group" IN ('A+','A-','B+','B-','AB+','AB-','O+','O-')),
    "is_blood_donor" INTEGER NOT NULL CHECK("is_blood_donor"IN (0,1)),  --0 means 'No' 1 means 'Yes'
    "contact_number" TEXT NOT NULL UNIQUE,
    "email" TEXT NOT NULL UNIQUE,
    FOREIGN KEY ("department_id") REFERENCES "departments" ("department_id")
);

-- Represents Appointments Between Patients and Doctors
CREATE TABLE "appointments" (
    "appointment_id" INTEGER PRIMARY KEY,
    "patient_id" INTEGER NOT NULL,
    "doctor_id" INTEGER NOT NULL ,
    "appointment_date" TEXT NOT NULL,
    "appointment_time" TEXT NOT NULL,
    "reason_for_visit" TEXT NOT NULL,
    "status" TEXT NOT NULL CHECK("status" IN ('Scheduled', 'Completed', 'Cancelled')),
    UNIQUE ("doctor_id", "appointment_date", "appointment_time"),
    FOREIGN KEY ("patient_id") REFERENCES "patients" ("patient_id"),
    FOREIGN KEY ("doctor_id") REFERENCES "doctors" ("doctor_id")
);

-- Represents Patient Diagnoses
CREATE TABLE "diagnoses" (
    "diagnosis_id" INTEGER PRIMARY KEY,
    "appointment_id" INTEGER NOT NULL UNIQUE,
    "diagnosis_name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "diagnosis_date" TEXT NOT NULL,
    FOREIGN KEY ("appointment_id") REFERENCES "appointments" ("appointment_id")
);

-- Represents Treatment Records for Appointments
CREATE TABLE "treatments" (
    "treatment_id" INTEGER PRIMARY KEY,
    "appointment_id" INTEGER NOT NULL UNIQUE,
    "treatment_type" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "treatment_date" TEXT NOT NULL,
    "cost" REAL NOT NULL CHECK("cost" >= 0),
    FOREIGN KEY ("appointment_id") REFERENCES "appointments" ("appointment_id")
);

-- Represents Patient Medications
CREATE TABLE "medications" (
    "medication_id" INTEGER PRIMARY KEY,
    "medication_name"  TEXT NOT NULL UNIQUE,
    "dosage_form" TEXT NOT NULL
);

-- Represents Patient Prescriptions
CREATE TABLE "prescriptions" (
    "prescription_id" INTEGER PRIMARY KEY,
    "treatment_id" INTEGER  NOT NULL,
    "medication_id" INTEGER NOT NULL,
    "dosage" TEXT NOT NULL,
    "frequency" TEXT NOT NULL,
    "duration" TEXT NOT NULL,
    UNIQUE ("treatment_id", "medication_id"),
    FOREIGN KEY ("treatment_id") REFERENCES "treatments" ("treatment_id"),
    FOREIGN KEY ("medication_id") REFERENCES "medications" ("medication_id")
);

-- Represents Patient Billing Information
CREATE TABLE "bills" (
    "bill_id" INTEGER PRIMARY KEY,
    "patient_id" INTEGER NOT NULL,
    "appointment_id" INTEGER NOT NULL UNIQUE,
    "bill_date" TEXT NOT NULL,
    "amount" REAL NOT NULL CHECK("amount" >= 0),
    "payment_method" TEXT NOT NULL CHECK("payment_method" IN ('Cash', 'Card', 'UPI', 'Insurance')),
    "payment_status" TEXT NOT NULL CHECK("payment_status" IN ('Pending', 'Paid', 'Overdue')),
    FOREIGN KEY ("appointment_id") REFERENCES "appointments" ("appointment_id"),
    FOREIGN KEY ("patient_id") REFERENCES "patients" ("patient_id")
);

------------------------------------------------------------------------------------
-- Create a complete patient medical history
CREATE VIEW patient_medical_history AS
SELECT patients.patient_id,
    patients.first_name AS "patient_first_name",
    patients.last_name AS "patient_last_name",
    doctors.first_name AS "doctor_first_name",
    doctors.last_name AS "doctor_last_name",
    appointments.appointment_date,
    diagnoses.diagnosis_name,
    diagnoses.description,
    treatments.treatment_type,
    medications.medication_name
FROM patients
JOIN appointments ON appointments.patient_id = patients.patient_id
JOIN doctors ON doctors.doctor_id = appointments.doctor_id
JOIN diagnoses ON diagnoses.appointment_id = appointments.appointment_id
JOIN treatments ON treatments.appointment_id = appointments.appointment_id
LEFT JOIN prescriptions ON prescriptions.treatment_id = treatments.treatment_id
LEFT JOIN medications ON medications.medication_id = prescriptions.medication_id;

-------------------------------------------------------------------------------------
-- Speeds up searching a doctor's schedule by doctor and date
CREATE INDEX idx_appointments_doctor
ON appointments(doctor_id, appointment_date);

-- Speeds up searching a patient's appointment history
CREATE INDEX idx_appointments_patient
ON appointments(patient_id);

-- Speeds up filtering paid and pending bills
CREATE INDEX idx_bills_payment_status
ON bills(payment_status);

