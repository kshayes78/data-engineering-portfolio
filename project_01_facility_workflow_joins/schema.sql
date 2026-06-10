DROP TABLE IF EXISTS follow_up_visits;
DROP TABLE IF EXISTS referrals;
DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS facilities;

CREATE TABLE facilities (
    facility_id INTEGER PRIMARY KEY,
    facility_name TEXT,
    city TEXT,
    state TEXT,
    facility_type TEXT
);

CREATE TABLE patients (
    patient_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    date_of_birth TEXT,
    gender TEXT,
    primary_facility_id INTEGER
);

CREATE TABLE referrals (
    referral_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    referral_date TEXT,
    referral_reason TEXT,
    risk_level TEXT,
    referred_to_program TEXT
);

CREATE TABLE follow_up_visits (
    visit_id INTEGER PRIMARY KEY,
    referral_id INTEGER,
    visit_date TEXT,
    visit_status TEXT,
    intervention_completed TEXT,
    notes TEXT
);
