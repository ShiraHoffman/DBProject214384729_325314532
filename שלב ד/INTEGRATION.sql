-- change all the columns in person to be null
-- so we could add the donors from blood donation table to person table
alter table Person modify City null;
alter table Person modify Street null;
alter table Person modify House_number null;
alter table Person modify First_name null;
alter table Person modify Last_name null;
alter table Person modify Birth_date null;
alter table Person modify Mobile_number null;

-- convert the unit id  column from int to varchar2(50)
alter table Blood_Unit add (NewID varchar2(50));
update Blood_Unit set newID = to_char(Unit_ID);
alter table Blood_Unit drop column Unit_ID;
alter table Blood_Unit rename column NewID to Unit_ID;

-- convert the donor id column in Blood unit table from int to varchar2(50)
alter table Blood_Unit add (NewID varchar2(50));
update Blood_Unit set newID = to_char(DonorID);
alter table Blood_Unit drop column DonorID;
alter table Blood_Unit rename column NewID to DonorID;

-- convert the recipient id column in Blood unit table from int to varchar2(50)
alter table Blood_Unit add (NewID varchar2(50));
update Blood_Unit set newID = to_char(RecipientID);
alter table Blood_Unit drop column RecipientID;
alter table Blood_Unit rename column NewID to RecipientID;

-- drop foreign key constraint in order to modify the persondID
alter table Donor drop constraint SYS_C00711628;
alter table Recipient drop constraint SYS_C00711632;
-- convert the person id column in person tablefrom int to varchar2(50)
alter table Person add (NewID varchar2(50));
update Person set newID = to_char(PersonID);
alter table Person drop column PersonID;
alter table Person rename column NewID to PersonID;

-- convert the donor id column in donor table from int to varchar2(50)
alter table Donor add (NewID varchar2(50));
update Donor set newID = to_char(DonorID);
alter table Donor drop column DonorID;
alter table Donor rename column NewID to DonorID;

-- convert the recipient id column in recipient table from int to varchar2(50)
alter table Blood_unit drop constraint SYS_C00711641;
alter table Recipient add (NewID varchar2(50));
update Recipient set newID = to_char(RecipientID);
alter table Recipient drop column RecipientID;
alter table Recipient rename column NewID to RecipientID;

--add all the primary keys
alter table Blood_Unit add constraint PK_recipientID primary key(Unit_ID);
alter table Recipient add constraint PK_recipientIDKey primary key(RecipientID);
alter table Person add constraint PK_PersonID primary key(PersonID);
alter table Donor add constraint PK_DonorID primary key(DonorID);

-- add back the constraint
alter table Blood_unit add constraint FK_RecipientBloodUnit foreign key(RecipientID) references Recipient(Recipientid);
alter table Donor add constraint FK_PersonDonor foreign key(DonorID) references Person(Personid) ;
alter table Recipient add constraint FK_PersonRecipient foreign key(RecipientID) references Person(Personid) ;
alter table Blood_unit add constraint FK_DonorBloodUnit foreign key(DonorID) references Donor(Donorid);

-- convert columns from blood unit table to null
alter table Blood_Unit modify EXPIRATION_DATE null;
alter table Blood_Unit modify PlaceCode null;
alter table Blood_Unit modify Collection_date null;
alter table Blood_unit modify Liter null;

-- add columns from blood donation table to blood unit table, because they wernt exsits.
alter table Blood_Unit add Testresaultid varchar2(50);
alter table Blood_Unit add constraint newForeignKey foreign key(Testresaultid) references test_1(testid);

-- drop the liter constraint
alter table Blood_Unit drop constraint CHECK_LITER_LESS_THAN_10;

-- add donor id and blood type fron blood donation to person
alter table Person modify Blood_Type VARCHAR2(50);
insert into Person (Personid, Blood_Type) select DonorID, BloodType
from Blood_Donation1
select * from Person

-- add donor id from blood donation to donor
insert into Donor (Donorid) select DonorID
from Blood_Donation1
select * from Donor

-- add Blood donation data from blood donation to blood unit
insert into Blood_Unit (Donorid, Unit_Id, Liter, Collection_Date, Testresaultid) select donorID, DonationID, volumedonated, Donationdate, testid
from Blood_Donation1
select * from Blood_Unit

--change the conection between refrigerator and blood donation to blood unit
alter table Refrigerator1 drop constraint SYS_C00721766;
alter table Refrigerator1 add constraint FK_ref_bu foreign key(DONATIONID) references blood_unit(unit_id);

--delete blood donation
drop table BLOOD_DONATION1;



