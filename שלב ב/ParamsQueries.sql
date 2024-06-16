select distinct *
from recipient,person 
where personid= recipientid and medical_condition=&<name="medical condition" type="string" list="Mortal, Critical, Non-Critical, stable">
order by birth_date &<name="show people in des birthday order over asc order?" checkbox="desc,asc">



with ambulancecount as (select count(*) as cnt
                        from blood_unit natural join ambulance
                        where collection_date= &<name="date to check" type="date" hint="format should be DD/MM/YYYY">),
labcount as(select count(*) as cnt
                        from blood_unit natural join lab
                        where collection_date= &<name="date to check" type="date" hint="format should be DD/MM/YYYY">)
select case
           when ambulancecnt.cnt > labcnt.cnt then 'ambulance'
           when ambulancecnt.cnt < labcnt.cnt then 'lab'
           else 'tie'
        end as more_donations_from
from ambulancecount ambulancecnt,labcount labcnt;


select p.personid, p.first_name, p.last_name,TRUNC(TRUNC(MONTHS_BETWEEN(sysdate,birth_date))/12) as age
from blood_unit natural join donor natural join person p
where personid= donorid and donationgroupname= &<name="enter group name to see all donors" type="string">
order by birth_date &<name="show people in des birthday order over asc order?" checkbox="desc,asc">

select p.personid, b.collection_date,b.liter,b.unit_id
from blood_unit b,person p
where b.donorid=p.personid and p.first_name=&<name="first name" type="string"> and p.last_name=&<name="last name" type="string">

