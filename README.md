# 🏥 Hospital Management Database

**Harvard CS50 SQL Final Project**

A relational database designed to manage hospital operations, including patients, doctors, appointments, diagnoses, treatments, prescriptions, and billing. This project demonstrates database design, normalization, SQL queries, views, indexes, and data integrity using SQLite.

---

## 📖 Project Overview

The Hospital Management Database provides a structured way to store and retrieve medical records while maintaining relationships between different entities. The system allows hospitals to organize patient information, schedule appointments, record diagnoses and treatments, generate prescriptions, and manage billing records efficiently.

---

## ✨ Features

* Manage patient and doctor records
* Schedule and track appointments
* Record diagnoses and treatments
* Generate prescriptions with medications
* Manage hospital billing and payment status
* Retrieve complete patient medical history using SQL views

---

## 🛠 Technologies Used

* **SQL (SQLite)**
* Relational Database Design
* ER Modeling
* Views & Indexes
* Git & GitHub

---

## 🗃 Database Schema

The database contains **9 interconnected tables**:

* Patients
* Departments
* Doctors
* Appointments
* Diagnoses
* Treatments
* Medications
* Prescriptions
* Bills

---

## 🔗 Entity Relationship Diagram

![ER Diagram](ER Diagram.png)

---

## ⚡ Database Optimizations

### View

* `patient_medical_history` – Combines patients, appointments, doctors, diagnoses, treatments, prescriptions, and medications into a single virtual table for simplified reporting.

### Indexes

* `idx_appointments_doctor`
* `idx_appointments_patient`
* `idx_bills_payment_status`

These indexes improve the performance of frequently executed hospital queries.

---

## 📁 Project Structure

```text
CS50-SQL-Final-Project/
│
├── DESIGN.md
├── schema.sql
├── queries.sql
├── hospital.db
├── ER Diagram.png
├── README.md
└── LICENSE
```

---

## 🎥 Project Demonstration

YouTube: https://youtu.be/EbZqOgX7ZiU

---

## 👩‍💻 Author

**Kashish Baghel**

Harvard CS50 SQL Final Project • 2026
