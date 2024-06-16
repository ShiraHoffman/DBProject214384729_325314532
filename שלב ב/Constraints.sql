alter table blood_unit
add constraint check_liter_less_than_10
check (liter<10);

insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-11-2022', 'dd-mm-yyyy'), to_date('13-03-2026', 'dd-mm-yyyy'), 11, 280, to_date('23-02-2024', 'dd-mm-yyyy'), 304381596, 356899357, 'Daugherty Group', 9);




alter table recipient
modify medical_condition varchar2(20) default 'Non-Critical';

insert into RECIPIENT (recipientid)
values ('210081662');

select *
from recipient
where  recipientid ='210081662'



alter table ambulance
modify license_number varchar2(8) not null;
