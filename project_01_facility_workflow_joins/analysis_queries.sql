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

    