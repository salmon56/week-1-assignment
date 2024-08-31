-- QUESTION 1--
CREATE TABLE patients(
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(15),
    language VARCHAR(25) NOT NULL
);

-- QUESTION 2--
CREATE TABLE providers(
provider_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(255),
last_name VARCHAR(255),
provider_speciality VARCHAR(25),
email_address varchar(25),
phone_number VARCHAR(50),
date_joined DATE
);

-- QUESTION 3--
CREATE TABLE visits(
visit_id INT NOT NULL,
provider INT NOT NULL,
date_of_visit DATE NOT NULL,
date_scheduled DATE NOT NULL,
visit_department INT NOT NULL,
visit_type VARCHAR(25) NOT NULL,
blood_pressure_systollic INT,
blood_pressure_diastollic DECIMAL,
pulse DECIMAL,
visit_status VARCHAR(50) NOT NULL
);

-- QUESTION 4--
CREATE TABLE ED_VISITS(
ed_visit_id INT PRIMARY KEY AUTO_INCREMENT,
visit_id INT NOT NULL,
patient_id INT NOT NULL,
acuity INT NOT NULL,
reason_of_visit VARCHAR(100) NOT NULL,
disposition VARCHAR(50) NOT NULL
);

-- QUESTION 5--
CREATE TABLE ADMISSION(
admission_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT NOT NULL,
admission_date DATE NOT NULL,
discharge_date DATE NOT NULL,
discharge_disposition VARCHAR(50) NOT NULL,
services VARCHAR(50) NOT NULL,
primary_diagnosis VARCHAR(50) NOT NULL
);

-- QUESTION 6--
CREATE TABLE DISCHARGES (
discharge_id INT NOT NULL,
admission_id INT NOT NULL,
patient_id INT NOT NULL,
discharge_date DATE,
discharge_disposition VARCHAR(50) NOT NULL
);