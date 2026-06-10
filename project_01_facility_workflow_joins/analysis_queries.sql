--1. View all patients with their primary facility
SELECT
    p.patient_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    f.facility_name,
    f.city,
    f.facility_type
FROM patients AS p
JOIN facilities AS f
    ON p.primary_facility_id = f.facility_id;

-- 2. View referral data
SELECT
    r.referral_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    r.referral_date,
    r.referral_reason,
    r.risk_level,
    r.referred_to_program,
    f.facility_name
FROM referrals AS r
JOIN patients AS p
    ON r.patient_id = p.patient_id
JOIN facilities AS f
    ON p.primary_facility_id = f.facility_id; 