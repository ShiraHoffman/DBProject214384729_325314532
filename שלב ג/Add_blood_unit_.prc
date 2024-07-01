create or replace procedure Add_blood_unit(b_liter in integer, b_donor_id in integer,b_placecode integer) is
number_unit integer;
begin
  select max(unit_id) into number_unit from blood_unit;
 --the collection dats is set to todats date, and the expiration date is set to next year.
 insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id,  donorid, placecode)
values (trunc(sysdate), trunc(SYSDATE + INTERVAL '1' YEAR), b_liter, number_unit + 1, b_donor_id, b_placecode);
commit;
end Add_blood_unit;
/
