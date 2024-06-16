select distinct personid, first_name, last_name
from recipient r natural join blood_unit bu natural join person
where exists (select *
              from blood_unit
              where donorid= personid and extract(year from collection_date)= extract(year from bu.recived_date))


select collection_date,count(*)
from blood_unit
group by collection_date
having count(*)>= all (select count(collection_date)
                      from blood_unit
                      group by collection_date)
                      
update blood_unit
set recived_date = NULL
where recipientid is NULL;
select * from BLOOD_UNIT t

select blood_type, count(*) 
from blood_unit, person
where donorid=personid and recipientid is NULL
group by blood_type

select placecode,count(*) as numOfDon
from blood_unit
group by placecode
having count(*)>= all (select count(*)
                      from blood_unit
                      group by placecode)



update recipient r
set r.medical_condition= 'stable'
where exists (select 1
              from blood_unit b
              where b.recipientid = r.recipientid
              and TRUNC(b.recived_date) = TRUNC(sysdate));
select * from RECIPIENT t
where medical_condition= 'stable'



select *
from donationgroup dg
where  dg.donationgroupname not in (select distinct b.donationgroupname
                                    from blood_unit b) 
delete from donationgroup dg
where  dg.donationgroupname not in (select distinct b.donationgroupname
                                    from blood_unit b);
select * from donationgroup dg

select * from ambulance

select *
from ambulance a
where  a.placecode in (select distinct l.placecode
                       from lab l);

delete from ambulance a
where  a.placecode in (select distinct l.placecode
                       from lab l);
             
select * from ambulance


