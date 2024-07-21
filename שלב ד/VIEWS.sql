-- first view to our DB
drop view donation_system_view
CREATE VIEW donation_system_view AS
SELECT
UNIT_ID, COLLECTION_DATE, EXPIRATION_DATE, LITER, RECIVED_DATE,DONATIONGROUPNAME,bu.DONORID, bu.RECIPIENTID, MEDICAL_CONDITION as recipient_medical_condition,pr.first_name as recipient_firs_name,pr.last_name as recipient_last_name,pd.first_name as donor_first_name,pd.last_name as donor_last_name , PLACECODE, pd.BLOOD_TYPE as donor_blood_type,pr.blood_type as recipient_blood_type,pd.city as donor_city,pr.city as recipient_city
FROM
Blood_Unit bu
LEFT JOIN RECIPIENT r ON r.recipientid=bu.recipientid
LEFT JOIN PERSON pr ON r.recipientid=pr.personid
INNER JOIN DONOR d ON d.donorid=bu.donorid
INNER JOIN PERSON pd ON d.donorid = pd.personid

SELECT * FROM donation_system_view
select count(*) from blood_unit where recipientid is null
select count(*) from donation_system_view where recipientid is null


--query that finds from which city there are the most blood type O+ donors that have bood in the system:
SELECT
    b.DONOR_CITY,
    COUNT(distinct b.DONORID) AS O_PLUS_COUNT
FROM
    donation_system_view b
WHERE
    b.DONOR_BLOOD_TYPE = 'O+'
GROUP BY
    b.DONOR_CITY
ORDER BY
    O_PLUS_COUNT DESC
FETCH FIRST 1 ROW ONLY;

-- query that returns the id's of people who has in the system both blood units that they donated and blood units that they revied
SELECT
    distinct u1.RECIPIENTID
FROM
    donation_system_view u1,donation_system_view u2
WHERE 
    u1.RECIPIENTID=u2.DONORID



-- Second view to recived DB
CREATE VIEW storage_view AS
SELECT
UNIT_ID, COLLECTION_DATE, LITER,d.donorid, BLOOD_TYPE, bu.testresaultid , REFRIGERATORID
FROM
Blood_Unit bu
INNER JOIN DONOR d ON d.donorid=bu.donorid
INNER JOIN PERSON pd ON d.donorid=pd.personid
LEFT JOIN TEST_1 t ON bu.testresaultid=t.testid
LEFT JOIN REFRIGERATOR1 r ON r.donationid=bu.unit_id

SELECT * FROM storage_view

-- query that returns the refrigerator with most blood in it
SELECT
    REFRIGERATORID,
    SUM(LITER) AS TOTAL_LITERS
FROM
   storage_view
WHERE 
    REFRIGERATORID is not null
GROUP BY
    REFRIGERATORID
ORDER BY
    TOTAL_LITERS DESC
FETCH FIRST 1 ROW ONLY;


-- query that returns the blood units that are not refrigerated

SELECT 
   UNIT_ID,COLLECTION_DATE, LITER,donorid, BLOOD_TYPE
FROM
   storage_view
WHERE 
   REFRIGERATORID is null
ORDER BY 
    COLLECTION_DATE
 


