create or replace procedure Create_new_recipient(R_ID in INTEGER, R_CITY  in VARCHAR2, R_STREET in VARCHAR2 , R_H_NUMBER in INTEGER , R_F_NAME in VARCHAR2, R_L_NAME in VARCHAR2, R_B_DATE in DATE, R_M_NUMBER in VARCHAR2, R_P_NUMBER in VARCHAR2 , R_B_TYPE in VARCHAR2) is
age INTEGER;
R_M_CONDITION VARCHAR2(20);
begin
age := trunc(trunc(months_between(sysdate, R_B_DATE))/12);
if age > 60 then
R_M_CONDITION := 'Critical';
else
   R_M_CONDITION := 'Non-Critical' ;
END IF;
INSERT INTO person (
        PERSONID,
        CITY,
        STREET,
        HOUSE_NUMBER,
        FIRST_NAME,
        LAST_NAME,
        BIRTH_DATE,
        MOBILE_NUMBER,
        PHONE_NUMBER,
        BLOOD_TYPE
    ) VALUES (
        R_ID,
        R_CITY,
        R_STREET,
        R_H_NUMBER,
        R_F_NAME,
        R_L_NAME,
        R_B_DATE,
        R_M_NUMBER,
        R_P_NUMBER,
        R_B_TYPE
    );
INSERT INTO recipient (
        RECIPIENTID,
        MEDICAL_CONDITION
        ) VALUES (
        R_ID,
        R_M_CONDITION
     );
        
    COMMIT;
  
end Create_new_recipient;
/
