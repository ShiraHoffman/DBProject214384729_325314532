create or replace function show_and_count_donors(R_ID in INTEGER) return integer is
  R_blood_type varchar2(20);
  cursor donor_cur is 
    select p.personid, p.city, p.street, p.house_number, p.first_name, p.middle_name, p.last_name, p.birth_date, p.mobile_number, p.phone_number, p.blood_type 
    from person p
    join donor d on p.personid = d.donorid
    where p.blood_type = R_blood_type
    and exists (select 1 from blood_unit b where b.donorid = d.donorid)
    order by p.personid; 

  donor_count integer := 0; -- Initialize counter for donor count
   
begin
  -- Fetch the blood type for the given R_ID
  select blood_type into R_blood_type
  from person
  where personid = R_ID;

  -- Iterate through donors and print details
  for donor_row in donor_cur loop
    dbms_output.put_line(donor_row.first_name || ' ' || donor_row.last_name || ', ' || donor_row.city || ', ' || donor_row.street);
    donor_count := donor_count + 1; -- Increment donor count
  end loop;
  

  return donor_count; -- Return the count of donors found
end show_and_count_donors;
/
