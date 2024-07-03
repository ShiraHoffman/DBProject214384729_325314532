create or replace procedure Add_blood_unit(b_liter in integer, b_donor_id in integer,b_placecode integer) is
number_unit integer;
d_name varchar2(20);
begin
  select max(unit_id) into number_unit from blood_unit;
 --the collection dats is set to todats date, and the expiration date is set to next year.
 insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id,  donorid, placecode)
values (trunc(sysdate), trunc(SYSDATE + INTERVAL '1' YEAR), b_liter, number_unit + 1, b_donor_id, b_placecode);
if SQL%ROWCOUNT=1 then
  select p.first_name into d_name
  from donor d , person p
  where d.donorid=p.personid and d.donorid= b_donor_id;
  DBMS_OUTPUT.put_line('blood unit was added successfully');
  DBMS_OUTPUT.put_line(d_name||'s blood units');
  for bu in (select * from blood_unit where donorid = b_donor_id) loop
    DBMS_OUTPUT.put_line(bu.collection_date||','||bu.liter);
  end loop;
end if;
commit;
end Add_blood_unit;
/
create or replace procedure Add_blood_unit(b_liter in integer, b_donor_id in integer,b_placecode integer) is
number_unit integer;
d_name varchar2(20);
begin
  select max(unit_id) into number_unit from blood_unit;
 --the collection dats is set to todats date, and the expiration date is set to next year.
 insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id,  donorid, placecode)
values (trunc(sysdate), trunc(SYSDATE + INTERVAL '1' YEAR), b_liter, number_unit + 1, b_donor_id, b_placecode);
if SQL%ROWCOUNT=1 then
  select p.first_name into d_name
  from donor d , person p
  where d.donorid=p.personid and d.donorid= b_donor_id;
  DBMS_OUTPUT.put_line('blood unit was added successfully');
  DBMS_OUTPUT.put_line(d_name||'s blood units');
  for bu in (select * from blood_unit where donorid = b_donor_id) loop
    DBMS_OUTPUT.put_line(bu.collection_date||','||bu.liter);
  end loop;
end if;
commit;
end Add_blood_unit;
/
