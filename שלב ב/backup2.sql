prompt Creating PLACE...
create table PLACE
(
  placecode INTEGER not null
)
;
alter table PLACE
  add primary key (PLACECODE);

prompt Creating AMBULANCE...
create table AMBULANCE
(
  license_number VARCHAR2(8) not null,
  placecode      INTEGER not null
)
;
alter table AMBULANCE
  add primary key (PLACECODE);
alter table AMBULANCE
  add foreign key (PLACECODE)
  references PLACE (PLACECODE);

prompt Creating DONATIONGROUP...
create table DONATIONGROUP
(
  donationgroupname     VARCHAR2(30) not null,
  donationgroupsize     INTEGER not null,
  donationgrouplocation VARCHAR2(40) not null,
  donationgrouptype     VARCHAR2(20) not null
)
;
alter table DONATIONGROUP
  add primary key (DONATIONGROUPNAME);

prompt Creating PERSON...
create table PERSON
(
  personid      INTEGER not null,
  city          VARCHAR2(50) not null,
  street        VARCHAR2(50) not null,
  house_number  INTEGER not null,
  first_name    VARCHAR2(50) not null,
  middle_name   VARCHAR2(50),
  last_name     VARCHAR2(50) not null,
  birth_date    DATE not null,
  mobile_number VARCHAR2(10) not null,
  phone_number  VARCHAR2(9),
  blood_type    VARCHAR2(3) not null
)
;
alter table PERSON
  add primary key (PERSONID);

prompt Creating DONOR...
create table DONOR
(
  donorid INTEGER not null
)
;
alter table DONOR
  add primary key (DONORID);
alter table DONOR
  add foreign key (DONORID)
  references PERSON (PERSONID);

prompt Creating RECIPIENT...
create table RECIPIENT
(
  medical_condition VARCHAR2(20) default 'Non-Critical' not null,
  recipientid       INTEGER not null
)
;
alter table RECIPIENT
  add primary key (RECIPIENTID);
alter table RECIPIENT
  add foreign key (RECIPIENTID)
  references PERSON (PERSONID);

prompt Creating BLOOD_UNIT...
create table BLOOD_UNIT
(
  collection_date   DATE not null,
  expiration_date   DATE not null,
  liter             INTEGER not null,
  unit_id           INTEGER not null,
  recived_date      DATE,
  donorid           INTEGER not null,
  recipientid       INTEGER,
  donationgroupname VARCHAR2(20),
  placecode         INTEGER not null
)
;
alter table BLOOD_UNIT
  add primary key (UNIT_ID);
alter table BLOOD_UNIT
  add foreign key (DONORID)
  references DONOR (DONORID);
alter table BLOOD_UNIT
  add foreign key (RECIPIENTID)
  references RECIPIENT (RECIPIENTID);
alter table BLOOD_UNIT
  add foreign key (DONATIONGROUPNAME)
  references DONATIONGROUP (DONATIONGROUPNAME);
alter table BLOOD_UNIT
  add foreign key (PLACECODE)
  references PLACE (PLACECODE);
alter table BLOOD_UNIT
  add constraint CHECK_LITER_LESS_THAN_10
  check (liter<10);

prompt Creating LAB...
create table LAB
(
  city         VARCHAR2(20) not null,
  street       VARCHAR2(20) not null,
  house_number INTEGER not null,
  placecode    INTEGER not null
)
;
alter table LAB
  add primary key (PLACECODE);
alter table LAB
  add foreign key (PLACECODE)
  references PLACE (PLACECODE);

prompt Disabling triggers for PLACE...
alter table PLACE disable all triggers;
prompt Disabling triggers for AMBULANCE...
alter table AMBULANCE disable all triggers;
prompt Disabling triggers for DONATIONGROUP...
alter table DONATIONGROUP disable all triggers;
prompt Disabling triggers for PERSON...
alter table PERSON disable all triggers;
prompt Disabling triggers for DONOR...
alter table DONOR disable all triggers;
prompt Disabling triggers for RECIPIENT...
alter table RECIPIENT disable all triggers;
prompt Disabling triggers for BLOOD_UNIT...
alter table BLOOD_UNIT disable all triggers;
prompt Disabling triggers for LAB...
alter table LAB disable all triggers;
prompt Disabling foreign key constraints for AMBULANCE...
alter table AMBULANCE disable constraint SYS_C00711195;
prompt Disabling foreign key constraints for DONOR...
alter table DONOR disable constraint SYS_C00711356;
prompt Disabling foreign key constraints for RECIPIENT...
alter table RECIPIENT disable constraint SYS_C00711360;
prompt Disabling foreign key constraints for BLOOD_UNIT...
alter table BLOOD_UNIT disable constraint SYS_C00711368;
alter table BLOOD_UNIT disable constraint SYS_C00711369;
alter table BLOOD_UNIT disable constraint SYS_C00711370;
alter table BLOOD_UNIT disable constraint SYS_C00711371;
prompt Disabling foreign key constraints for LAB...
alter table LAB disable constraint SYS_C00711201;
prompt Deleting LAB...
delete from LAB;
commit;
prompt Deleting BLOOD_UNIT...
delete from BLOOD_UNIT;
commit;
prompt Deleting RECIPIENT...
delete from RECIPIENT;
commit;
prompt Deleting DONOR...
delete from DONOR;
commit;
prompt Deleting PERSON...
delete from PERSON;
commit;
prompt Deleting DONATIONGROUP...
delete from DONATIONGROUP;
commit;
prompt Deleting AMBULANCE...
delete from AMBULANCE;
commit;
prompt Deleting PLACE...
delete from PLACE;
commit;
prompt Loading PLACE...
insert into PLACE (placecode)
values (1);
insert into PLACE (placecode)
values (2);
insert into PLACE (placecode)
values (3);
insert into PLACE (placecode)
values (4);
insert into PLACE (placecode)
values (5);
insert into PLACE (placecode)
values (6);
insert into PLACE (placecode)
values (7);
insert into PLACE (placecode)
values (8);
insert into PLACE (placecode)
values (9);
insert into PLACE (placecode)
values (10);
insert into PLACE (placecode)
values (11);
insert into PLACE (placecode)
values (12);
insert into PLACE (placecode)
values (13);
insert into PLACE (placecode)
values (14);
insert into PLACE (placecode)
values (15);
insert into PLACE (placecode)
values (16);
insert into PLACE (placecode)
values (17);
insert into PLACE (placecode)
values (18);
insert into PLACE (placecode)
values (19);
insert into PLACE (placecode)
values (20);
insert into PLACE (placecode)
values (21);
insert into PLACE (placecode)
values (22);
insert into PLACE (placecode)
values (23);
insert into PLACE (placecode)
values (24);
insert into PLACE (placecode)
values (25);
insert into PLACE (placecode)
values (26);
insert into PLACE (placecode)
values (27);
insert into PLACE (placecode)
values (28);
insert into PLACE (placecode)
values (29);
insert into PLACE (placecode)
values (30);
insert into PLACE (placecode)
values (31);
insert into PLACE (placecode)
values (32);
insert into PLACE (placecode)
values (33);
insert into PLACE (placecode)
values (34);
insert into PLACE (placecode)
values (35);
insert into PLACE (placecode)
values (36);
insert into PLACE (placecode)
values (37);
insert into PLACE (placecode)
values (38);
insert into PLACE (placecode)
values (39);
insert into PLACE (placecode)
values (40);
insert into PLACE (placecode)
values (41);
insert into PLACE (placecode)
values (42);
insert into PLACE (placecode)
values (43);
insert into PLACE (placecode)
values (44);
insert into PLACE (placecode)
values (45);
insert into PLACE (placecode)
values (46);
insert into PLACE (placecode)
values (47);
insert into PLACE (placecode)
values (48);
insert into PLACE (placecode)
values (49);
insert into PLACE (placecode)
values (50);
commit;
prompt 50 records loaded
prompt Loading AMBULANCE...
insert into AMBULANCE (license_number, placecode)
values ('76393026', 18);
insert into AMBULANCE (license_number, placecode)
values ('77190677', 43);
insert into AMBULANCE (license_number, placecode)
values ('11659485', 13);
insert into AMBULANCE (license_number, placecode)
values ('97757293', 9);
insert into AMBULANCE (license_number, placecode)
values ('36580663', 8);
insert into AMBULANCE (license_number, placecode)
values ('38512829', 5);
insert into AMBULANCE (license_number, placecode)
values ('90980023', 22);
insert into AMBULANCE (license_number, placecode)
values ('53200870', 35);
insert into AMBULANCE (license_number, placecode)
values ('43867912', 37);
insert into AMBULANCE (license_number, placecode)
values ('59717917', 21);
insert into AMBULANCE (license_number, placecode)
values ('38500534', 40);
insert into AMBULANCE (license_number, placecode)
values ('20968096', 41);
insert into AMBULANCE (license_number, placecode)
values ('34956641', 10);
insert into AMBULANCE (license_number, placecode)
values ('65809857', 48);
insert into AMBULANCE (license_number, placecode)
values ('22834659', 1);
insert into AMBULANCE (license_number, placecode)
values ('69989959', 30);
insert into AMBULANCE (license_number, placecode)
values ('96782869', 26);
insert into AMBULANCE (license_number, placecode)
values ('61040062', 15);
insert into AMBULANCE (license_number, placecode)
values ('86662519', 20);
insert into AMBULANCE (license_number, placecode)
values ('55324051', 25);
insert into AMBULANCE (license_number, placecode)
values ('91799242', 50);
commit;
prompt 21 records loaded
prompt Loading DONATIONGROUP...
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ortiz Group', 1000, '64 Delaware Hill', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Shields-Effertz', 500, '8138 Rowland Trail', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Luettgen-Purdy', 1000, '6624 Meadow Vale Center', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kshlerin LLC', 1000, '356 Logan Drive', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Mills, Cronin and Blick', 500, '04519 Lawn Way', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Legros-Swaniawski', 50, '41 Village Pass', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Nikolaus, Graham and Waelchi', 100, '88 Loftsgordon Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Torp-Thiel', 500, '0352 Esch Street', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Wisozk-Mertz', 5000, '05036 Mosinee Way', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schamberger LLC', 500, '684 Schiller Crossing', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Wunsch, MacGyver and Lynch', 500, '6925 Swallow Pass', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ratke-Maggio', 500, '1 Weeping Birch Park', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bauch, Gerlach and Metz', 500, '80 Lunder Point', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lehner-Kub', 2000, '0 Crownhardt Court', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Haley-Larson', 50, '27106 Charing Cross Parkway', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bins-Hand', 5000, '2 Northview Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gerlach and Sons', 1000, '413 Division Trail', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Casper, Ledner and Gulgowski', 500, '6196 Redwing Street', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Berge Group', 5000, '56818 Hintze Crossing', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lang and Sons', 50, '8020 Novick Junction', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rutherford-Howell', 100, '3423 Anhalt Lane', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Abernathy-Kub', 5000, '5 Merchant Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Stamm-Ebert', 100, '244 Jana Hill', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Torphy, Stracke and O''Reilly', 2000, '98831 Judy Lane', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kuhic, Pfannerstill and Green', 50, '7 Independence Lane', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lemke, Leannon and Kemmer', 100, '9174 Toban Center', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Watsica, Lebsack and Borer', 1000, '98 Hanover Circle', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rosenbaum, Hagenes and Sawayn', 2000, '7117 Fulton Way', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Wehner, Johns and Ruecker', 5000, '31000 Surrey Hill', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jenkins-Stiedemann', 100, '65770 Commercial Place', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Cronin-Koepp', 5000, '92274 Cherokee Place', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Keefe-Kilback', 500, '1 Upham Street', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Will-Fisher', 5000, '72083 Merchant Point', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hammes, Lemke and Kling', 1000, '05913 Arapahoe Point', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gottlieb, Douglas and Kilback', 1000, '83790 Vermont Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ledner-Jaskolski', 2000, '10 Macpherson Drive', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Baumbach-Kautzer', 50, '201 Spaight Park', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Christiansen and Sons', 1000, '951 Farwell Center', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Spinka, Schowalter and Corwin', 2000, '6515 Russell Street', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('McGlynn and Sons', 500, '06 Cherokee Road', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schowalter Group', 500, '5013 Cambridge Trail', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schuster, Deckow and Beer', 50, '9 Dovetail Road', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gusikowski and Sons', 1000, '20826 Marcy Street', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Roberts, Bartoletti and Mohr', 1000, '77 Coleman Way', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Stoltenberg-Connelly', 50, '079 Kennedy Point', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hirthe LLC', 1000, '6 Esch Circle', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kuhic and Sons', 5000, '16575 Graceland Junction', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rolfson Inc', 500, '949 Mesta Crossing', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('White-Borer', 100, '95722 Melody Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Collier Inc', 500, '5 Lillian Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Oberbrunner and Sons', 500, '52 Burrows Street', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Abbott-Hoppe', 500, '09538 Barby Street', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ritchie-Goyette', 1000, '4 Oriole Terrace', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ankunding and Sons', 50, '6923 Rieder Pass', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Marks Group', 100, '3 Reinke Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Shields-Howe', 100, '5149 Derek Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Cartwright-Morissette', 1000, '2678 Thackeray Junction', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lindgren, Shanahan and Reichel', 50, '902 Michigan Road', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bergstrom-Dach', 5000, '488 Macpherson Hill', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Huel, O''Kon and Hand', 50, '3 Hovde Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Champlin-Collins', 5000, '93201 Trailsway Drive', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Homenick LLC', 100, '9 Crescent Oaks Pass', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gleason, Robel and Legros', 50, '7213 Sage Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Leannon LLC', 100, '97993 Bowman Hill', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jacobson LLC', 100, '2024 Randy Junction', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Keeling, Botsford and Conroy', 1000, '67 Duke Trail', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Legros Inc', 5000, '247 Mcbride Hill', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rogahn-Collier', 5000, '66 Little Fleur Drive', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bechtelar, Olson and Lynch', 50, '1 Charing Cross Place', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gerhold, Smith and Blick', 50, '42578 Vermont Parkway', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Zulauf, Halvorson and Wyman', 5000, '927 Knutson Street', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Daugherty Group', 1000, '73981 Iowa Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Murazik Group', 5000, '56 Fairview Lane', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Daugherty-Sauer', 500, '85 Atwood Lane', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schaefer, Rutherford and Rau', 1000, '1 Heffernan Junction', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Boehm-Sawayn', 50, '4 Mcbride Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Walter LLC', 5000, '948 Prairie Rose Parkway', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Smitham, Gorczany and Swift', 5000, '9719 Ridgeview Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('McKenzie, Wolf and Mertz', 100, '805 Derek Street', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Dicki Group', 50, '3 Reinke Hill', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jaskolski, Boehm and Carter', 100, '1 Carey Way', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Upton LLC', 100, '7995 Evergreen Way', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Harris, Okuneva and Williamson', 500, '82413 Golf Point', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schinner and Sons', 1000, '02096 Farmco Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hessel Inc', 100, '3297 Victoria Drive', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Reilly, Ondricka and Kautzer', 2000, '07913 Bashford Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Doyle, Upton and Barton', 500, '06 Mayer Way', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schumm-DuBuque', 500, '3543 Hazelcrest Pass', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Nicolas-Schmidt', 1000, '3560 Alpine Park', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Beatty, Hamill and Pouros', 500, '1 Veith Road', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bradtke-Feeney', 1000, '26599 Evergreen Lane', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Streich and Sons', 5000, '956 Parkside Junction', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Medhurst Group', 5000, '76 Mockingbird Way', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gottlieb Group', 100, '63 Pankratz Parkway', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Vandervort Inc', 100, '4 Dennis Hill', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rolfson LLC', 2000, '3386 Derek Road', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Carroll, Beer and Bogisich', 500, '4562 Kennedy Way', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Reichert Group', 5000, '725 Springview Alley', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Sipes-D''Amore', 5000, '0905 East Court', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Stark Inc', 100, '5622 Laurel Park', 'workplace');
commit;
prompt 100 records committed...
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Christiansen-Bogisich', 2000, '13580 Swallow Way', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Boyer and Sons', 1000, '99872 Rowland Drive', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jacobs-Ebert', 2000, '03350 Homewood Lane', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hilll LLC', 2000, '768 Eastwood Plaza', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Baumbach-Lowe', 500, '9 Kipling Place', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Sawayn, Bayer and Rempel', 5000, '694 Knutson Street', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hermiston-Nader', 5000, '9 Carioca Center', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Goodwin, Gorczany and Hansen', 500, '91749 Walton Pass', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Maggio-Emmerich', 5000, '91858 Westridge Pass', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Tremblay, MacGyver and Hane', 1000, '14 Prairie Rose Center', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schulist and Sons', 50, '6 Daystar Court', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kessler-Douglas', 50, '1739 Hansons Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Toy, Deckow and Wisozk', 100, '07 Westend Crossing', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kuvalis-Krajcik', 5000, '93208 Carpenter Plaza', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Nikolaus Group', 5000, '65667 Maryland Street', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bauch LLC', 100, '834 Linden Drive', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Leffler Inc', 50, '86917 Vahlen Place', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bechtelar LLC', 5000, '8787 Tomscot Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gusikowski LLC', 5000, '1 Scofield Terrace', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jones, Ankunding and Ortiz', 100, '1678 Golden Leaf Trail', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Torp-Leffler', 1000, '0216 Lyons Center', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Runolfsdottir-Murazik', 1000, '6 Monument Court', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hettinger, Rath and Jakubowski', 2000, '7550 Charing Cross Crossing', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schinner Inc', 50, '65151 Stone Corner Trail', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ritchie-Deckow', 5000, '2 Spohn Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hagenes, Kertzmann and Boyer', 50, '792 Glendale Drive', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bosco, Romaguera and Thompson', 2000, '846 Packers Park', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Harvey LLC', 500, '957 Comanche Terrace', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Klein-Nikolaus', 50, '062 Arapahoe Trail', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kuhic, Bartoletti and White', 5000, '74 Scoville Park', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Torp, Reynolds and Runte', 2000, '87341 Holmberg Park', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Mills Inc', 100, '74 Farwell Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rosenbaum-Predovic', 100, '6613 Logan Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schmidt-Kuhlman', 1000, '5 Lerdahl Terrace', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Smith-Kemmer', 5000, '3 Prairie Rose Place', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ebert Inc', 5000, '3 Service Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Von, Stark and Hermiston', 500, '2 Northview Drive', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Yost-Stanton', 2000, '9 Muir Crossing', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Osinski-Mohr', 500, '8 Everett Street', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Toy, Kautzer and Blick', 2000, '1 Clove Drive', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Flatley and Sons', 500, '45 Transport Road', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ryan-Considine', 2000, '78705 Mallory Point', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Haag, Torphy and Bradtke', 2000, '2757 Oneill Park', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Heller-Price', 2000, '71685 Magdeline Way', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Marks, Hackett and Trantow', 2000, '02 Esch Avenue', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Romaguera, Hagenes and Bins', 2000, '3062 Kennedy Hill', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Skiles and Sons', 50, '293 Bayside Court', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bosco, Blick and Weissnat', 1000, '393 8th Trail', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Murphy-Gorczany', 2000, '077 Oriole Place', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Cole, Dietrich and Kuhn', 500, '6557 Randy Avenue', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Runte Inc', 5000, '37034 Sundown Way', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bashirian-Pfeffer', 2000, '18939 Manitowish Hill', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hahn Group', 1000, '41 Superior Way', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Stehr, Wiza and Wiegand', 2000, '017 Glendale Hill', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Okuneva, Ernser and Nader', 100, '320 Montana Junction', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Klein, Gibson and Barrows', 100, '6 Green Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ryan-Hammes', 100, '52 Orin Street', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Conner, Kunde and Wilkinson', 1000, '10758 Parkside Place', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Wyman-Johnson', 1000, '1 Bayside Park', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Tillman-Bernier', 2000, '70 Eagle Crest Park', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Harvey and Sons', 5000, '66 Elmside Park', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Marks-Bartell', 50, '950 Mcguire Junction', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bernhard LLC', 1000, '0859 Superior Point', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Parker, Lang and Wolf', 2000, '8656 Granby Center', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('McGlynn-Kling', 500, '9255 Homewood Point', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('McKenzie, Adams and Koelpin', 2000, '173 Oak Avenue', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Dietrich, Bahringer and Lesch', 50, '5 Corscot Circle', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bogan, Mante and McClure', 2000, '4038 Kinsman Center', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lueilwitz Group', 500, '6204 Lakeland Point', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rippin, Feest and Lakin', 2000, '6 Meadow Valley Drive', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jakubowski-Hackett', 100, '86140 Spenser Point', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ferry, Grimes and Gorczany', 500, '59 Bartillon Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Reynolds-Weber', 5000, '94 Jackson Court', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kunde and Sons', 5000, '36202 Hoard Park', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Zemlak-Cartwright', 5000, '00 Center Trail', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Farrell-Windler', 50, '42925 Walton Crossing', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Grimes Inc', 1000, '5872 Pierstorff Drive', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Keefe, Williamson and Fisher', 500, '117 Laurel Drive', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Zulauf and Sons', 100, '53 Claremont Street', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Maggio, Wolff and Corkery', 50, '6171 Anhalt Place', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gorczany Inc', 500, '5 Village Avenue', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Stamm, Simonis and Becker', 500, '1693 Burrows Drive', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lubowitz LLC', 2000, '397 Stang Lane', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schuppe, Hills and Hessel', 1000, '2277 Rockefeller Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schimmel-Dooley', 500, '0531 Elgar Way', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bruen-Moore', 2000, '2 Northfield Lane', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Hara-Pfannerstill', 500, '3 Iowa Lane', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Trantow, Corkery and Skiles', 50, '406 Forest Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hauck LLC', 100, '6813 Park Meadow Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Beier and Sons', 5000, '53098 Little Fleur Parkway', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bayer, Conroy and Trantow', 1000, '058 Packers Crossing', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Shanahan-Funk', 50, '746 Lyons Park', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Daugherty, Marvin and Blick', 2000, '03936 Hermina Crossing', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rice, Trantow and Ziemann', 500, '6 Rowland Terrace', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Braun, Block and Auer', 100, '83080 Surrey Junction', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Powlowski, Borer and Dibbert', 2000, '9 Sheridan Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Welch, Cassin and Lowe', 50, '1 Michigan Terrace', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Dooley Group', 500, '78150 Waxwing Alley', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Abbott Inc', 50, '99392 Norway Maple Hill', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Connelly-Bogan', 100, '72697 Larry Park', 'school');
commit;
prompt 200 records committed...
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rippin, White and Lindgren', 1000, '9096 Glacier Hill Plaza', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jaskolski-Quigley', 1000, '2 Texas Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Wintheiser, Rau and Conn', 5000, '07507 Orin Pass', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Shields Inc', 100, '166 School Street', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kunze Group', 1000, '98905 Tennessee Avenue', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Buckridge and Sons', 500, '1078 Huxley Terrace', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Upton and Sons', 2000, '51 Ludington Point', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jacobi and Sons', 500, '400 Buhler Crossing', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gutkowski and Sons', 2000, '0951 Ohio Road', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rutherford Inc', 5000, '81 Surrey Parkway', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jacobson Group', 500, '7 Charing Cross Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Stroman, Weimann and Pacocha', 100, '9890 Dwight Crossing', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Wintheiser Inc', 2000, '61370 Scoville Terrace', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Greenholt-Hauck', 100, '895 North Point', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gibson, Goldner and Ernser', 2000, '6 Graedel Road', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Marquardt-Roob', 500, '2 Gateway Court', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Wilkinson-Kiehn', 500, '7228 Myrtle Park', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Crist Inc', 1000, '4 Havey Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schultz, Hauck and Rippin', 100, '55233 South Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Haag-Bahringer', 50, '8320 Ridgeway Terrace', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Champlin Inc', 5000, '296 American Ash Terrace', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rutherford Group', 100, '74 Trailsway Lane', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Koelpin Inc', 500, '1975 Carioca Way', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Klein Group', 1000, '02 Emmet Drive', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jaskolski and Sons', 500, '05060 Golf Plaza', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Mayer, Willms and Lindgren', 1000, '08 Holy Cross Junction', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Osinski-Schoen', 50, '1954 Hoard Junction', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Goyette, Mayert and Kutch', 5000, '1 Hovde Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Pollich and Sons', 2000, '107 Stoughton Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kessler LLC', 5000, '52537 Sauthoff Alley', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Hara Group', 100, '63940 Burrows Hill', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lemke-Stark', 1000, '00 Lotheville Lane', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Greenfelder and Sons', 500, '81032 South Center', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Senger, Sipes and Fay', 100, '8 Aberg Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rippin Inc', 50, '18 Riverside Crossing', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Mueller and Sons', 500, '055 Old Gate Pass', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Reichel, Reichel and Kutch', 2000, '6 Springs Street', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Thiel LLC', 50, '008 Blackbird Way', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bechtelar Inc', 500, '56938 Manitowish Terrace', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hansen-Feeney', 100, '56 Fairview Place', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('MacGyver-Ernser', 5000, '7 Sundown Drive', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Denesik-Buckridge', 5000, '1385 Eastwood Point', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rogahn and Sons', 50, '573 Laurel Point', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Johnson and Sons', 100, '008 Washington Park', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kessler-Nicolas', 2000, '35433 Kropf Center', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kuhn-Kub', 2000, '34 Kings Court', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Leffler, Mitchell and Bergnaum', 1000, '6 Dovetail Drive', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ondricka Inc', 50, '516 Vahlen Crossing', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kassulke, Stiedemann and Bogan', 50, '7682 Shasta Drive', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hessel LLC', 100, '4 David Crossing', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Deckow, Abbott and Padberg', 5000, '836 Russell Trail', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Kon Inc', 1000, '4305 Tennessee Junction', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Spinka-Schmitt', 500, '7192 Nevada Hill', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('DuBuque-Hansen', 5000, '37268 Weeping Birch Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Howe-Cruickshank', 2000, '05862 Pleasure Center', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Sporer-Adams', 100, '06 International Avenue', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Thiel Inc', 500, '172 Dunning Hill', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Nolan-Raynor', 2000, '80 Dixon Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Stehr, Ortiz and Blick', 1000, '5716 Pine View Way', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Auer, Hane and Greenfelder', 1000, '1 Sugar Lane', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kilback Group', 500, '3 3rd Junction', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bernier, Bernier and Ritchie', 500, '3 Hudson Parkway', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Spinka, Mante and Green', 1000, '8 Buhler Plaza', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Robel Group', 50, '1 Loftsgordon Trail', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kunde, Schmeler and Huel', 50, '684 Mallory Street', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Baumbach-Barton', 2000, '156 Wayridge Junction', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Botsford and Sons', 100, '4 Summerview Circle', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Mayer-Braun', 1000, '4 Hoepker Way', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Altenwerth, Cummerata and Toy', 100, '9 Weeping Birch Park', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hilll, Walsh and McKenzie', 50, '01 Fairview Plaza', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Funk LLC', 2000, '8 Pennsylvania Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schimmel, Bradtke and Grant', 500, '5 Farragut Terrace', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gottlieb and Sons', 5000, '97004 Hazelcrest Terrace', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rice-Langworth', 1000, '253 Manufacturers Court', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schamberger-Leuschke', 50, '91868 Fairfield Road', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schroeder Group', 2000, '0520 Nancy Road', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Purdy-Considine', 5000, '711 Village Green Avenue', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Howell-Ziemann', 100, '376 Pepper Wood Hill', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hirthe, Graham and Waters', 100, '7047 Nevada Avenue', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ziemann-McKenzie', 2000, '95 Morning Street', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Cronin-MacGyver', 1000, '3 Maywood Park', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Greenholt and Sons', 5000, '832 Basil Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ullrich Group', 50, '50630 Atwood Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Zboncak and Sons', 1000, '8 Luster Circle', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Murphy-Lakin', 5000, '791 Longview Street', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Howell-Kunze', 5000, '63494 Crownhardt Court', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Daugherty-Auer', 5000, '089 Hovde Drive', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hoppe-Bahringer', 500, '99687 Graceland Place', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Satterfield-Kunde', 1000, '5 Kensington Plaza', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Fay Group', 1000, '98935 Merrick Junction', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Aufderhar, Rowe and Wilkinson', 50, '4601 Superior Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Paucek-Walker', 1000, '2 Northport Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Pfeffer-Legros', 500, '2081 Schmedeman Terrace', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Mohr-Schamberger', 50, '2554 Golf Road', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('McDermott-Howe', 50, '036 Kropf Drive', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hilpert, Bergstrom and Ledner', 2000, '807 Kedzie Crossing', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Reilly Group', 50, '49398 Mcguire Point', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Weimann Group', 50, '38 Lakewood Terrace', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schmitt, Stiedemann and Frami', 100, '391 Lien Road', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Sipes-Terry', 2000, '4503 Vermont Center', 'army');
commit;
prompt 300 records committed...
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rodriguez-Harris', 100, '24508 North Lane', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Balistreri, Goldner and Robel', 2000, '4864 Crownhardt Plaza', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ritchie-Wiegand', 100, '702 Summerview Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kertzmann, O''Keefe and Fadel', 1000, '439 Summer Ridge Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hintz, Jakubowski and Carter', 5000, '67 Susan Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Stokes, Rice and Block', 50, '22549 Kingsford Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hand, Upton and Koelpin', 1000, '447 Marquette Alley', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Pacocha-Abshire', 50, '9026 Toban Road', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Beatty, Erdman and McClure', 2000, '97 Graedel Street', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Morar Inc', 50, '867 Monica Crossing', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ziemann-Schneider', 50, '89300 Helena Parkway', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Shields-Beatty', 5000, '95 Blackbird Parkway', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Spinka, Conn and Muller', 1000, '9 Stone Corner Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Dare-Howe', 50, '2 Pennsylvania Hill', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rohan Group', 100, '07307 Debs Street', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Donnelly, Sauer and Lynch', 500, '4 Swallow Drive', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Sanford-Yundt', 50, '25332 Nova Trail', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Heathcote Inc', 2000, '4785 Weeping Birch Point', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bruen, Fisher and Wyman', 5000, '64409 Manitowish Crossing', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kub-Howe', 50, '5109 Southridge Center', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kuphal, MacGyver and Douglas', 5000, '5986 Prairie Rose Court', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Daniel, Dickinson and Jerde', 5000, '0533 Utah Parkway', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kilback-Bosco', 100, '864 Butterfield Lane', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Will-Powlowski', 2000, '06 Sycamore Crossing', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Zboncak-Moen', 50, '56405 Judy Lane', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('D''Amore Inc', 100, '9 Hayes Circle', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gleason Group', 2000, '58786 Transport Hill', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Leannon, Walter and Stokes', 500, '38791 Esker Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('MacGyver-Carroll', 2000, '722 Stone Corner Way', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Torphy-Carroll', 5000, '5 Kedzie Street', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('McLaughlin-Langosh', 1000, '291 Hermina Avenue', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hintz-Reynolds', 100, '8 Merry Way', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Marquardt, O''Keefe and O''Kon', 1000, '060 Montana Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Weber-Hamill', 50, '5 Forest Dale Center', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ward-Schimmel', 500, '63444 Farwell Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Wolff, Pacocha and Strosin', 100, '33 Lindbergh Point', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hartmann, Jones and Rolfson', 100, '728 Muir Avenue', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Dickens and Sons', 1000, '16512 Grover Park', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Romaguera LLC', 50, '46840 Dixon Way', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Mueller Group', 100, '0609 Manitowish Point', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('McGlynn LLC', 2000, '47981 Melby Alley', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Tromp, Ortiz and Wehner', 500, '86 Parkside Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Monahan, Kris and Torp', 5000, '8 High Crossing Avenue', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Stoltenberg, Brakus and Turner', 1000, '14393 Carberry Avenue', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kozey, Johns and Howe', 5000, '0 Thackeray Junction', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Heathcote-Dibbert', 5000, '6934 Comanche Point', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Brekke-Renner', 500, '56983 Donald Hill', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('King Group', 100, '60 Rowland Hill', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Kon, Emmerich and Nicolas', 50, '18 Bobwhite Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hermann Inc', 50, '39590 3rd Street', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hahn-Kreiger', 5000, '41 Homewood Way', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Russel Inc', 500, '13 Rieder Trail', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Halvorson-Satterfield', 50, '0858 Southridge Park', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Goyette-Buckridge', 50, '769 Eastlawn Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Dare LLC', 1000, '5 4th Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Spencer and Sons', 50, '096 Surrey Court', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Dietrich Group', 100, '48 Tennyson Park', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Senger-Connelly', 1000, '28901 Dovetail Terrace', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Donnelly, Lakin and Hodkiewicz', 5000, '14533 American Ash Hill', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hilpert-Baumbach', 1000, '5833 Butternut Terrace', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Weber Group', 50, '4976 Shopko Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Macejkovic-Ziemann', 100, '4 Atwood Trail', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Balistreri-Greenholt', 50, '6 Mesta Hill', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lehner-Lang', 5000, '745 South Way', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kessler and Sons', 1000, '151 Bellgrove Crossing', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lockman-Flatley', 1000, '55 High Crossing Terrace', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Dooley-Kemmer', 5000, '214 Loftsgordon Hill', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lakin and Sons', 1000, '46231 Talmadge Crossing', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Collins LLC', 5000, '96731 Dapin Park', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bradtke-Gibson', 5000, '964 Forest Run Plaza', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Simonis, D''Amore and Klein', 100, '1789 Ridgeway Center', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Goodwin, Leffler and Glover', 100, '79595 Blaine Trail', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Ondricka-Farrell', 50, '30 Menomonie Trail', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Nicolas Inc', 50, '50866 Chive Trail', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Trantow LLC', 1000, '42 School Court', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Mayer, Hyatt and Heidenreich', 100, '42112 Aberg Crossing', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Flatley Group', 5000, '0731 Bowman Parkway', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Tromp and Sons', 50, '71 Crowley Alley', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Koch-Olson', 2000, '5747 Lakewood Gardens Pass', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Muller, Schiller and Reichel', 100, '3029 Saint Paul Way', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Flatley, Gutkowski and Bernier', 1000, '1 Warbler Point', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Borer and Sons', 100, '8245 Johnson Alley', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Connelly-Greenfelder', 100, '654 Mcguire Street', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kozey-Davis', 100, '0 Donald Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kautzer Group', 50, '80099 Ronald Regan Place', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hickle, Armstrong and Reinger', 100, '09998 Northwestern Drive', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Keefe LLC', 5000, '07360 Morning Crossing', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Koss LLC', 1000, '271 Moland Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schiller, Nolan and Effertz', 1000, '73 Blaine Parkway', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Considine-Lang', 2000, '57 New Castle Plaza', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Keefe-Swift', 1000, '7619 Continental Street', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hansen, Hudson and Mayer', 2000, '7446 Del Sol Plaza', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kris, Lehner and Larson', 50, '727 Erie Trail', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Nicolas, Rippin and Reichert', 500, '9786 Holmberg Drive', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Bechtelar-Heaney', 2000, '7 Manufacturers Way', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Torphy and Sons', 50, '2 Hooker Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hegmann LLC', 100, '0 East Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Quitzon LLC', 5000, '14 La Follette Street', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Casper Inc', 100, '960 Esker Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Roob, Moen and Reynolds', 2000, '6641 Killdeer Center', 'army');
commit;
prompt 400 records committed...
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lindgren-Renner', 50, '35299 Surrey Alley', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Torphy-Wolf', 500, '5 Crescent Oaks Road', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Dooley, Brown and Thiel', 100, '6765 Division Street', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hermann Group', 5000, '3503 Nelson Circle', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kunde Group', 5000, '55 New Castle Hill', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Howell Group', 500, '0023 Village Pass', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kunde-Metz', 50, '644 Butternut Court', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Block-Emard', 500, '4 Erie Park', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Murphy LLC', 500, '14793 Debra Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('O''Conner-Nolan', 100, '09258 Surrey Avenue', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Padberg Group', 100, '39 Hansons Court', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rohan and Sons', 100, '7 Straubel Drive', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Nolan-Kerluke', 500, '559 Londonderry Lane', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Simonis LLC', 100, '595 Annamark Parkway', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Waelchi-Rath', 500, '69542 Kedzie Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Labadie-Bosco', 50, '903 Hollow Ridge Alley', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rutherford, Wyman and Kling', 1000, '670 Jenna Circle', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Walker-Rodriguez', 50, '546 Oak Pass', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('McKenzie and Sons', 50, '6 Merrick Drive', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Feeney and Sons', 2000, '551 Brown Crossing', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Effertz, Renner and Little', 1000, '95 Russell Place', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Russel-Fahey', 100, '85349 Lunder Terrace', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Crist and Sons', 2000, '511 Namekagon Point', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Steuber, Okuneva and Haag', 1000, '21091 1st Crossing', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Walker-Waters', 5000, '79 Sachs Street', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Corwin LLC', 50, '79796 Dennis Lane', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Farrell-Mitchell', 5000, '81798 4th Pass', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rolfson, Harvey and Goldner', 5000, '1 Walton Court', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Altenwerth, Conn and Howell', 2000, '5316 Stephen Terrace', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Kozey-Weimann', 1000, '59056 Mesta Hill', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('White-Becker', 500, '5 Schurz Park', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Huel-Hartmann', 2000, '5 Village Green Center', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Wolf, Schuppe and Mueller', 50, '0 Roth Drive', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Windler and Sons', 500, '85 Dottie Junction', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Walsh-Durgan', 2000, '98 Dawn Alley', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hilpert-Stracke', 1000, '7386 Tomscot Center', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Armstrong Group', 500, '7036 Gale Court', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hilll, Leuschke and Zboncak', 50, '3770 Lighthouse Bay Hill', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Osinski, Durgan and Rath', 5000, '72 2nd Junction', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Champlin, Moore and O''Kon', 500, '54 Waywood Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Armstrong, Watsica and Hermann', 50, '2 Kennedy Street', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Mann-Schoen', 50, '0 Northridge Place', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Conroy, Champlin and Quigley', 500, '8 Florence Point', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Torp, Hills and D''Amore', 2000, '12212 Oxford Junction', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lowe-Harris', 1000, '66 Oneill Terrace', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Toy, Medhurst and Volkman', 2000, '861 Hauk Pass', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hackett, Aufderhar and Mueller', 50, '75 Butterfield Plaza', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Rutherford, Lakin and Gislason', 2000, '9 Nevada Road', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Schimmel, Cummings and Adams', 1000, '64 Randy Alley', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Walter Group', 500, '103 Westerfield Court', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('D''Amore-Muller', 500, '60870 Rockefeller Lane', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Marks, Jacobson and Blanda', 5000, '2915 Bay Alley', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Lesch, Hyatt and Lang', 500, '46616 Oak Valley Crossing', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Wolf-Sporer', 2000, '316 Scofield Trail', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Weber and Sons', 2000, '81482 Pankratz Pass', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Metz-Nienow', 1000, '86625 Granby Alley', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Haag, Zboncak and Brekke', 50, '5546 Maryland Alley', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('White-Aufderhar', 5000, '131 Blaine Plaza', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Gibson, Harris and Wiza', 1000, '799 Merrick Way', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Koss-Reynolds', 1000, '14110 Lien Hill', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Weber-Collier', 1000, '9 Scott Trail', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Legros and Sons', 2000, '56 Spenser Parkway', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Howell, Becker and Nienow', 1000, '2974 Banding Parkway', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Jenkins, Mueller and Bednar', 2000, '82692 Aberg Plaza', 'school');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Will Group', 1000, '55 Banding Center', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Quitzon Inc', 100, '12 Homewood Point', 'army');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Miller LLC', 1000, '26 Homewood Center', 'workplace');
insert into DONATIONGROUP (donationgroupname, donationgroupsize, donationgrouplocation, donationgrouptype)
values ('Hagenes, Legros and Kassulke', 100, '9 Hanover Pass', 'school');
commit;
prompt 468 records loaded
prompt Loading PERSON...
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (210081662, 'Qinghaihu', '5th', 903, 'Ingelbert', null, 'Beelby', to_date('23-10-1915', 'dd-mm-yyyy'), '6354873379', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (278243052, 'Maredakalada', 'Prentice', 7, 'Corly', null, 'Ambrogiotti', to_date('18-02-1945', 'dd-mm-yyyy'), '9185030070', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (958051598, 'Fort Wayne', 'Kings', 55519, 'Heddi', null, 'Proschke', to_date('18-09-1986', 'dd-mm-yyyy'), '2601939623', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (604293473, 'Rac??awice', 'Straubel', 3882, 'Nedda', null, 'Ferenczy', to_date('30-05-1992', 'dd-mm-yyyy'), '2385323149', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (532218674, 'Renhe', 'Dottie', 951, 'Dennet', null, 'Softley', to_date('22-03-1952', 'dd-mm-yyyy'), '9096687019', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (387240899, 'Kast?©lli', 'Dapin', 28656, 'Dallas', null, 'Charnock', to_date('05-09-1942', 'dd-mm-yyyy'), '8428473832', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (306558475, 'Emiliano Zapata', 'Calypso', 9, 'Flossie', 'Zach', 'Breen', to_date('24-11-1976', 'dd-mm-yyyy'), '7778049822', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (595308352, 'Santa Ana', 'Rockefeller', 3127, 'Vinnie', null, 'Bartosiak', to_date('02-07-1974', 'dd-mm-yyyy'), '9717101814', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (364489062, 'Mabalacat', 'International', 814, 'Annalise', null, 'Puve', to_date('08-07-2008', 'dd-mm-yyyy'), '7217247418', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (345400819, 'Surkhakhi', 'Magdeline', 341, 'Raviv', null, 'Hansana', to_date('15-09-1918', 'dd-mm-yyyy'), '4451980820', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (286639406, 'Wenxian Chengguanzhen', 'Columbus', 8, 'Lynde', 'Ash', 'Dalston', to_date('31-07-1914', 'dd-mm-yyyy'), '4255483075', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (618589680, 'Arroyo Salado', 'Montana', 41, 'Hetty', null, 'Stenson', to_date('29-07-2004', 'dd-mm-yyyy'), '5473438712', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (932632576, 'Golden', 'Green Ridge', 756, 'Barbabas', null, 'Imos', to_date('07-04-1922', 'dd-mm-yyyy'), '9119986448', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (324365000, 'Santa Monica', 'Park Meadow', 653, 'Pansy', 'Tomaso', 'Knivett', to_date('15-10-1979', 'dd-mm-yyyy'), '1628418178', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (345399341, '? avnik', 'Rutledge', 68714, 'Rosemary', null, 'Gerrad', to_date('16-10-2012', 'dd-mm-yyyy'), '1448100244', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (773243438, 'Biga', 'Valley Edge', 130, 'Arty', null, 'Cluley', to_date('07-07-1902', 'dd-mm-yyyy'), '3203427445', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (377351301, 'Praia das Ma?§?£s', 'Sage', 85116, 'Hewe', null, 'Pitney', to_date('25-02-1937', 'dd-mm-yyyy'), '9699194384', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (682818610, 'Pran Buri', 'Roth', 31, 'Gianina', 'Nathalie', 'Stutely', to_date('27-12-1958', 'dd-mm-yyyy'), '5206509790', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (543635746, 'Sibubuhan', 'Brown', 2749, 'Cynthy', null, 'Payler', to_date('26-02-1966', 'dd-mm-yyyy'), '6975358718', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (597650533, 'Chunhua', 'Continental', 8790, 'Leontyne', 'Ailbert', 'Twamley', to_date('22-06-1910', 'dd-mm-yyyy'), '4973427660', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (693105190, 'San Esteban', 'Golf View', 7355, 'Malissa', 'Yasmeen', 'Huxham', to_date('29-09-1907', 'dd-mm-yyyy'), '6731806068', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (605590162, 'Djounie', 'Monterey', 62685, 'Iosep', 'Danika', 'Simner', to_date('03-04-1935', 'dd-mm-yyyy'), '7651912000', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (397477282, 'Riz?³mata', 'Pleasure', 231, 'Dermot', null, 'Papis', to_date('30-06-1971', 'dd-mm-yyyy'), '3455592615', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (853055600, 'Montaigu', 'Oak Valley', 8876, 'Freda', 'Pippa', 'Cadle', to_date('15-02-1958', 'dd-mm-yyyy'), '8568358338', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (307134705, 'Villa Consuelo', 'Green Ridge', 1001, 'Zebadiah', null, 'Staden', to_date('19-06-1978', 'dd-mm-yyyy'), '5246536136', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (641642968, 'Wudabao', 'Scoville', 73427, 'Augustine', 'Loraine', 'Attoc', to_date('03-03-1947', 'dd-mm-yyyy'), '4094622781', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (451230566, 'Longquan', 'Roth', 89249, 'Elsie', 'Gustavo', 'Scahill', to_date('14-12-1988', 'dd-mm-yyyy'), '9277743346', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (871213943, 'Celeir?³s', 'Corry', 0, 'Artemas', null, 'Veighey', to_date('18-04-1945', 'dd-mm-yyyy'), '5866663242', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (969082635, 'Orocuina', 'Ramsey', 1578, 'Tine', null, 'Gimber', to_date('10-06-1964', 'dd-mm-yyyy'), '1687619327', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (370921265, 'As Sawd?', 'Derek', 93031, 'Ugo', 'Gale', 'Connah', to_date('06-04-1952', 'dd-mm-yyyy'), '7713383289', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (992679883, 'Cimanggu', 'Carpenter', 533, 'Bert', null, 'Killiner', to_date('02-05-1922', 'dd-mm-yyyy'), '8234849923', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (325810550, 'Khon Buri', 'Nancy', 7674, 'Clo', null, 'Scouse', to_date('21-08-1966', 'dd-mm-yyyy'), '2583899904', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (660716587, 'San Nicolas', 'Logan', 25, 'Trisha', 'Thomasine', 'Stallwood', to_date('29-04-1929', 'dd-mm-yyyy'), '2705444873', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (304915420, 'Kuk?«s', 'Sage', 14, 'Frazer', 'Jarvis', 'Trenbey', to_date('02-06-1931', 'dd-mm-yyyy'), '6133357033', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (416102786, 'Kendalngupuk', 'Manitowish', 43056, 'Marley', null, 'Devoy', to_date('07-11-1954', 'dd-mm-yyyy'), '6187267079', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (426217329, 'Huacrachuco', 'Graedel', 85, 'Allistir', null, 'Greydon', to_date('03-09-1941', 'dd-mm-yyyy'), '4637204717', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (677241235, 'Zhuangta', 'Anthes', 92, 'Winfield', 'Lynette', 'Haskayne', to_date('04-05-1936', 'dd-mm-yyyy'), '9823621215', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (313841870, 'Leganes', 'Briar Crest', 36927, 'Aundrea', 'Stephanie', 'Licciardi', to_date('03-11-1900', 'dd-mm-yyyy'), '6471475893', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (814306301, 'Hostomice', 'Fairview', 75972, 'Christoper', null, 'Spilling', to_date('06-03-1962', 'dd-mm-yyyy'), '1668401877', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (534368732, 'Bilovods''k', 'Bunting', 9, 'Cy', null, 'Langstone', to_date('15-02-1972', 'dd-mm-yyyy'), '7408799101', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (795610284, 'Quma', 'Laurel', 0, 'Theodora', null, 'Mosby', to_date('23-04-1939', 'dd-mm-yyyy'), '2131020066', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (666261946, 'Kunyang', 'Walton', 1647, 'Kristofor', null, 'Szubert', to_date('25-04-1990', 'dd-mm-yyyy'), '9796967857', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (283435210, 'Dmytrivka', 'Harbort', 493, 'Drucill', 'Hilary', 'Manser', to_date('23-05-1955', 'dd-mm-yyyy'), '7757570669', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (881943142, 'Galaz', 'Hallows', 0, 'Gaby', 'Peterus', 'Tockell', to_date('31-03-1942', 'dd-mm-yyyy'), '8254544841', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (972747875, 'Piraju', 'Manufacturers', 6794, 'Horace', 'Hunt', 'Rawdall', to_date('02-04-1937', 'dd-mm-yyyy'), '9189451334', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (922539226, 'Washington', 'Loftsgordon', 96831, 'Guss', 'Aline', 'Chaffer', to_date('07-05-1926', 'dd-mm-yyyy'), '2027393719', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (612585567, 'Kansas City', 'Goodland', 1, 'Ingemar', 'Saba', 'Iaduccelli', to_date('16-09-1961', 'dd-mm-yyyy'), '8163622089', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (365802363, 'Terny', 'Rusk', 7435, 'Hanny', null, 'Vella', to_date('01-08-2014', 'dd-mm-yyyy'), '3719195955', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (647381123, 'Linjiang', 'Delladonna', 7, 'Euell', 'Honey', 'Gillani', to_date('30-12-1958', 'dd-mm-yyyy'), '3899465192', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (432395857, 'Mykolayiv', 'Mccormick', 1, 'Ebba', 'Ddene', 'Nunns', to_date('24-02-1932', 'dd-mm-yyyy'), '5097459740', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (860197318, 'Jiagao', 'Lakewood', 4, 'Lind', null, 'Jorg', to_date('29-05-1920', 'dd-mm-yyyy'), '1424699853', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (746160417, 'Baiyin', 'Buhler', 637, 'Dom', null, 'Stinchcombe', to_date('17-11-1920', 'dd-mm-yyyy'), '1385635529', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (345660369, 'General Luna', 'Evergreen', 34, 'Conni', 'Jerrome', 'Fonzone', to_date('10-05-2011', 'dd-mm-yyyy'), '1675455208', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (323221906, 'Dindima', 'Hoard', 5, 'Delcine', null, 'Olerenshaw', to_date('12-11-1989', 'dd-mm-yyyy'), '5278306462', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (692754198, 'San Rafael', 'Memorial', 62, 'Bernadene', null, 'Zecchini', to_date('31-08-1909', 'dd-mm-yyyy'), '4051789071', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (530686073, 'Quimper', 'Prairie Rose', 31597, 'Spike', 'Arlen', 'Datte', to_date('20-03-1979', 'dd-mm-yyyy'), '4086889380', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (604627239, 'Trelleborg', 'Ludington', 8, 'Brigitte', null, 'Bamforth', to_date('27-10-1974', 'dd-mm-yyyy'), '7421098869', '237455289', 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (402066926, 'Dengmu', 'Coleman', 6903, 'Worden', null, 'Skeats', to_date('20-03-1908', 'dd-mm-yyyy'), '8815711324', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (576627395, 'J?¶nk?¶ping', 'Mifflin', 4, 'Oswald', 'Charlton', 'Liccardi', to_date('06-02-1921', 'dd-mm-yyyy'), '6441840491', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (167186460, 'Yiyang', 'Towne', 99338, 'Jonis', null, 'Penni', to_date('17-09-1942', 'dd-mm-yyyy'), '1729044200', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (913371622, 'Balingoan', 'Montana', 79, 'Fabiano', 'Stevena', 'Wanek', to_date('17-01-1984', 'dd-mm-yyyy'), '3664349185', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (540933518, 'Paris 17', 'Westport', 49, 'Yankee', 'Rodina', 'Sandell', to_date('30-04-1983', 'dd-mm-yyyy'), '9351051572', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (964003750, 'Naguilian', 'Brown', 4, 'Malynda', null, 'Mudle', to_date('30-06-1956', 'dd-mm-yyyy'), '9923109854', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (619458705, 'Ishqoshim', 'Stoughton', 353, 'Goldi', null, 'Luciano', to_date('07-09-1913', 'dd-mm-yyyy'), '7961385942', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (186532233, 'Baipenzhu', 'Doe Crossing', 901, 'Evangelia', 'Harland', 'Sherratt', to_date('04-09-1953', 'dd-mm-yyyy'), '5296932268', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (158354565, 'A?? ???«rah a?? ??agh?«rah', 'Dottie', 99442, 'Gaylene', null, 'Mitchelmore', to_date('03-08-1953', 'dd-mm-yyyy'), '8623717462', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (750134051, 'Hovtashen', 'Westridge', 5, 'Helga', null, 'Ginnaly', to_date('04-05-1967', 'dd-mm-yyyy'), '4474626853', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (930065228, 'Venda Nova', 'Eggendart', 7955, 'Fayina', 'Sylvan', 'Herrema', to_date('18-03-1992', 'dd-mm-yyyy'), '2838101480', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (754051609, 'Erhe', 'Porter', 77, 'Mariya', null, 'Dunster', to_date('21-05-1932', 'dd-mm-yyyy'), '6279367155', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (551288657, 'West Kelowna', 'Anhalt', 21678, 'Errol', 'Kiley', 'Towlson', to_date('07-11-1948', 'dd-mm-yyyy'), '7471486079', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (632483753, 'Valdem?rpils', 'Barby', 7, 'Wait', 'Rabbi', 'Murname', to_date('30-01-1921', 'dd-mm-yyyy'), '7314835595', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (716087389, 'Cikalong', 'Kipling', 4450, 'Shauna', null, 'Duncklee', to_date('01-10-1992', 'dd-mm-yyyy'), '2096713610', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (496387722, 'Oemanu', 'Sullivan', 59, 'Kristal', 'Nicky', 'Dumbar', to_date('04-06-1977', 'dd-mm-yyyy'), '3677634439', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (330944835, 'Nierumai', 'Norway Maple', 24, 'Hannah', 'Lynea', 'Van der Beken', to_date('11-04-1981', 'dd-mm-yyyy'), '3799320031', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (957554891, 'Maca?­ba', 'Sunfield', 0, 'Hubey', null, 'Castella', to_date('06-12-1982', 'dd-mm-yyyy'), '9638325932', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (792320978, 'Wucheng', 'East', 2, 'Rosemonde', null, 'Oldis', to_date('29-07-1956', 'dd-mm-yyyy'), '5606874485', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (524692009, 'Mon?§?£o', 'Russell', 99193, 'Brianne', 'Ki', 'Challicombe', to_date('08-12-1906', 'dd-mm-yyyy'), '7378247704', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (947947426, 'Jibu', 'Thierer', 4959, 'Lurlene', 'Jeniece', 'Penvarne', to_date('14-07-1935', 'dd-mm-yyyy'), '2411736324', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (928805231, 'Changning', 'Gale', 64412, 'Perl', null, 'Wones', to_date('29-05-1948', 'dd-mm-yyyy'), '4199102937', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (316911965, '? titar', 'Melby', 5, 'Bevan', 'Paula', 'Willwood', to_date('18-04-1969', 'dd-mm-yyyy'), '8067915653', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (768822411, 'Barrosas', 'Nova', 7344, 'Faye', 'Corrianne', 'Ballin', to_date('13-04-1977', 'dd-mm-yyyy'), '7735513878', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (775575838, 'Garies', 'Pennsylvania', 97, 'Mikol', null, 'Bampkin', to_date('06-05-1923', 'dd-mm-yyyy'), '8349505921', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (177386950, 'Cucutilla', 'Northport', 721, 'Melvin', null, 'Pumfrett', to_date('18-11-1976', 'dd-mm-yyyy'), '2125463798', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (821127832, 'Ingenio La Esperanza', 'Butterfield', 8, 'Marni', null, 'Whimper', to_date('12-12-1922', 'dd-mm-yyyy'), '8918326278', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (177261661, 'Puger', 'Summit', 75342, 'Jolene', 'Lela', 'Stuckley', to_date('17-07-1950', 'dd-mm-yyyy'), '9478686043', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (945720118, 'Korsze', 'Superior', 67, 'Olva', 'Rae', 'Preston', to_date('21-09-1960', 'dd-mm-yyyy'), '9788694011', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (638792703, 'Perechyn', 'Granby', 13, 'Maximo', null, 'Hemms', to_date('14-03-1985', 'dd-mm-yyyy'), '6837570732', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (796571213, 'Al Ya???rub?«yah', 'Killdeer', 6299, 'Ainsley', null, 'Ollett', to_date('16-12-1948', 'dd-mm-yyyy'), '6018324366', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (412929466, 'Shubenka', 'Rockefeller', 78, 'Gris', 'Julius', 'Abbot', to_date('27-10-1969', 'dd-mm-yyyy'), '8218393615', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (721021633, 'Honglin', 'Hazelcrest', 9, 'Gabrielle', null, 'Ledger', to_date('25-10-1940', 'dd-mm-yyyy'), '3784570579', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (848266272, 'Venustiano Carranza', 'Prairie Rose', 57668, 'Maurita', null, 'Stocker', to_date('19-05-1914', 'dd-mm-yyyy'), '9892087614', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (819003647, 'Baishan', 'Hooker', 50671, 'Tatiania', 'Doyle', 'Kilsby', to_date('11-12-1946', 'dd-mm-yyyy'), '3779602293', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (752193505, 'Yonggu', 'Prentice', 71037, 'Kip', 'Hanan', 'Woodcraft', to_date('11-06-1933', 'dd-mm-yyyy'), '7547064714', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (874489496, 'Kobe', 'West', 95, 'Kelci', 'Hayyim', 'Thorneloe', to_date('07-12-1960', 'dd-mm-yyyy'), '7048237368', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (176016908, 'Brea Pozo', 'Elka', 5, 'Adeline', null, 'Turrell', to_date('15-05-1976', 'dd-mm-yyyy'), '6731739263', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (569513497, 'Guanajay', 'Wayridge', 690, 'Annadiane', 'Glynn', 'Hardson', to_date('12-08-1971', 'dd-mm-yyyy'), '2066159734', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (969951624, 'Stockholm', 'Kim', 6, 'Kare', 'Kath', 'Bearman', to_date('07-01-1925', 'dd-mm-yyyy'), '2202332853', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (627757230, 'Farsta', 'Merchant', 151, 'Freddy', 'Thaine', 'Scorah', to_date('20-04-1973', 'dd-mm-yyyy'), '8444735339', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (113297686, 'Lushikeng', 'Sommers', 3946, 'Roxanna', null, 'Byron', to_date('01-10-1970', 'dd-mm-yyyy'), '6856693593', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (509840627, 'Strasbourg', 'Marquette', 1879, 'Thomasina', 'Toby', 'Liggins', to_date('15-09-1926', 'dd-mm-yyyy'), '6846518011', null, 'B+');
commit;
prompt 100 records committed...
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (751194222, 'Maqiu', 'Bay', 96, 'Kerry', 'Dulci', 'Woodings', to_date('05-07-1965', 'dd-mm-yyyy'), '8575005256', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (327974025, 'Kisovec', 'Bayside', 6775, 'Gerladina', null, 'Rosensaft', to_date('21-08-1999', 'dd-mm-yyyy'), '1877824834', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (864810448, 'Ponta Por?£', 'Scott', 8529, 'Keen', null, 'Bourdas', to_date('14-09-2004', 'dd-mm-yyyy'), '4852265630', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (255089715, 'Penha Longa', 'Golf View', 95, 'Falito', 'Humberto', 'Linton', to_date('25-06-1971', 'dd-mm-yyyy'), '5577225979', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (930741407, 'Cete', 'New Castle', 87, 'Carmen', 'Marielle', 'Jonsson', to_date('26-05-1929', 'dd-mm-yyyy'), '3045541072', '369801587', 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (465187635, 'Boljevci', 'Dakota', 0, 'Vinson', null, 'Pabelik', to_date('14-08-1913', 'dd-mm-yyyy'), '5413279305', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (405022190, 'Uruzg?n', 'Talisman', 444, 'Jerad', null, 'Bischof', to_date('13-06-1956', 'dd-mm-yyyy'), '1123677056', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (819399131, 'Huaqiao', 'Atwood', 53934, 'Zebulen', 'Alta', 'Grelik', to_date('14-07-1981', 'dd-mm-yyyy'), '8423730170', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (341713107, 'Oslo', 'Hallows', 7, 'Sybila', 'Douglass', 'Fancutt', to_date('30-11-1924', 'dd-mm-yyyy'), '2933867292', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (208655649, 'Cihampelas', 'Bashford', 1702, 'Alvina', null, 'Hicklingbottom', to_date('06-12-1943', 'dd-mm-yyyy'), '7904740324', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (312781171, 'Loncoche', 'Truax', 86, 'Eileen', null, 'Tixall', to_date('03-03-1929', 'dd-mm-yyyy'), '4602492614', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (399129577, 'Phoenix', 'Kedzie', 77, 'Jimmy', 'Niko', 'Oakenfield', to_date('29-07-1980', 'dd-mm-yyyy'), '6026440489', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (130558893, 'Karangwungu Lor', 'Eliot', 7, 'Northrup', null, 'Maleck', to_date('07-09-1987', 'dd-mm-yyyy'), '3653795023', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (728227108, 'Longxing', 'Marcy', 52, 'Jordon', 'Smith', 'Detloff', to_date('30-07-2001', 'dd-mm-yyyy'), '3241505183', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (423798272, 'Staraya Stanitsa', 'Mesta', 66, 'Angela', null, 'Huard', to_date('04-01-2004', 'dd-mm-yyyy'), '7615120243', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (672697720, 'Singgit', 'Mallory', 2886, 'Alonso', 'Gussy', 'Corington', to_date('18-03-1986', 'dd-mm-yyyy'), '9236006432', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (604858769, 'Fort Lauderdale', 'Morning', 61, 'Hortense', null, 'Hellyar', to_date('29-03-1969', 'dd-mm-yyyy'), '9544385753', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (417005854, 'Le Mans', 'Hintze', 816, 'Kelvin', 'Eleanore', 'Arkcoll', to_date('10-02-1954', 'dd-mm-yyyy'), '8394525465', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (563463937, 'Crici??ma', 'Forest Dale', 51, 'Stanfield', null, 'Renner', to_date('23-09-1959', 'dd-mm-yyyy'), '4159699914', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (830571743, 'Parakou', 'Hooker', 92009, 'Cookie', 'Kerk', 'Oldham', to_date('28-12-1984', 'dd-mm-yyyy'), '3047008254', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (753403153, 'Pak Phli', 'Oakridge', 6, 'Marielle', 'Farley', 'Whalley', to_date('20-03-1921', 'dd-mm-yyyy'), '8558228641', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (328994752, 'Sambopinggir', 'Kenwood', 43, 'Kinsley', null, 'Blatcher', to_date('06-02-1903', 'dd-mm-yyyy'), '6352666360', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (268808294, 'Pirapozinho', 'Gulseth', 50, 'Latrena', null, 'Slorach', to_date('30-11-2011', 'dd-mm-yyyy'), '3562262851', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (950157644, 'Sawang Daen Din', 'Lyons', 2669, 'Elka', null, 'Poulney', to_date('02-02-1996', 'dd-mm-yyyy'), '7417506043', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (168696677, 'Jiangning', 'Farwell', 2904, 'Silvana', null, 'Signoret', to_date('15-10-1963', 'dd-mm-yyyy'), '1762672144', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (466864424, 'Gisiliba', 'Morrow', 32, 'Roz', null, 'Venes', to_date('11-04-2010', 'dd-mm-yyyy'), '3612160112', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (501341339, 'Sanxing', 'Lakewood Gardens', 93, 'Cecil', null, 'Kaiser', to_date('02-06-1949', 'dd-mm-yyyy'), '4872129182', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (387985468, 'Vnanje Gorice', 'Bashford', 681, 'Stillmann', 'Blair', 'Cleynaert', to_date('22-10-1904', 'dd-mm-yyyy'), '2863978258', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (161265040, 'L?¼feng', 'Katie', 22495, 'Briney', 'Mikol', 'Breed', to_date('16-10-1965', 'dd-mm-yyyy'), '4633515919', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (387828012, 'Urua?§u', 'Karstens', 8642, 'Karee', null, 'Lingley', to_date('01-02-1939', 'dd-mm-yyyy'), '6375966080', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (745191532, 'Kampungtengah', 'Northfield', 5, 'Efrem', null, 'Dawber', to_date('28-03-1922', 'dd-mm-yyyy'), '8604938797', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (198160689, 'Ugljevik', 'Lerdahl', 2270, 'Monika', 'Jaquenette', 'Sidon', to_date('02-10-2013', 'dd-mm-yyyy'), '6852068399', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (178640942, 'Atlanta', 'Continental', 56, 'Uriel', 'Tamqrah', 'Snowdon', to_date('11-12-1955', 'dd-mm-yyyy'), '4046901032', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (912529580, 'Toulon', 'Sycamore', 99, 'Donella', 'Enrique', 'Kobus', to_date('16-03-1916', 'dd-mm-yyyy'), '7915003681', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (717451140, 'Otuke', 'South', 0, 'Gerianne', null, 'Audiss', to_date('04-04-1973', 'dd-mm-yyyy'), '8288851937', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (133820490, 'Algeciras', 'Sheridan', 14181, 'Cathie', 'Kaile', 'Iacovides', to_date('16-03-1955', 'dd-mm-yyyy'), '4032745121', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (334343640, 'Jambuwerkrajan', 'International', 52, 'Georas', null, 'McClaren', to_date('15-12-1904', 'dd-mm-yyyy'), '5632677473', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (401578705, 'Manouba', 'Cherokee', 36037, 'Netti', null, 'Velareal', to_date('06-04-2004', 'dd-mm-yyyy'), '6811461686', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (695576309, 'Karvin??', 'Forest Dale', 216, 'Wylie', null, 'Bretelle', to_date('22-01-1986', 'dd-mm-yyyy'), '9257260735', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (690434650, 'San Juan Opico', 'Westerfield', 63, 'Rayna', null, 'Swindells', to_date('24-03-1962', 'dd-mm-yyyy'), '1164876881', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (262916015, 'Yanshang', 'Pepper Wood', 9770, 'Clark', 'Matthaeus', 'Popley', to_date('20-12-1914', 'dd-mm-yyyy'), '3983941299', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (870904503, 'Kabare', 'Banding', 5464, 'Matty', 'Miguela', 'Benettolo', to_date('25-01-1964', 'dd-mm-yyyy'), '5561362963', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (318447549, 'Xiachengzi', 'Londonderry', 2, 'Jessi', null, 'Belliveau', to_date('18-07-1931', 'dd-mm-yyyy'), '5386503767', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (229756011, 'Gabahan', 'Bluestem', 6717, 'Cristie', null, 'Doby', to_date('01-12-1979', 'dd-mm-yyyy'), '8674479713', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (230641742, 'Rumbek', 'Oneill', 5165, 'Ernst', null, 'Haye', to_date('06-05-1905', 'dd-mm-yyyy'), '3101061210', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (354152108, 'Changping', 'Orin', 9705, 'Randal', null, 'Spata', to_date('13-01-2019', 'dd-mm-yyyy'), '3349626750', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (511426039, 'Majunying', 'Garrison', 4, 'Lilyan', 'Cull', 'Pattrick', to_date('07-10-1902', 'dd-mm-yyyy'), '5436507417', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (952248539, 'Vila Maior', 'Stone Corner', 24, 'Terrie', 'Aprilette', 'Sisson', to_date('21-12-2018', 'dd-mm-yyyy'), '5228470318', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (768747160, 'Pengdian', 'Warbler', 6, 'Warden', null, 'Mayall', to_date('11-01-2012', 'dd-mm-yyyy'), '2545234326', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (786485476, 'Longjiang', 'Sachs', 93, 'Adamo', 'Maddy', 'Nend', to_date('02-09-2018', 'dd-mm-yyyy'), '5416501446', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (594078460, 'Nafada', 'New Castle', 16, 'Emlyn', null, 'Solon', to_date('10-10-2002', 'dd-mm-yyyy'), '8612721279', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (179571878, 'Kon?e', 'Service', 6764, 'Barclay', null, 'Emmines', to_date('06-06-1949', 'dd-mm-yyyy'), '7149096827', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (878535168, 'Manaloal', 'Susan', 304, 'Karoly', 'Willetta', 'Okenden', to_date('17-01-1922', 'dd-mm-yyyy'), '4921048102', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (762978933, 'Independencia', 'Cherokee', 11478, 'Jaquelin', 'Hamnet', 'Bleby', to_date('29-11-1907', 'dd-mm-yyyy'), '3469884460', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (893678822, 'Laxiong', 'Continental', 3, 'Herta', null, 'Bohan', to_date('21-07-2006', 'dd-mm-yyyy'), '5981821315', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (399398425, 'Calaba', 'Anthes', 26, 'Lock', 'Ninnetta', 'Neave', to_date('03-05-1931', 'dd-mm-yyyy'), '1348139346', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (602343678, 'Sukarama', 'Arrowood', 3, 'Tracey', 'Carleen', 'Drummond', to_date('08-11-1987', 'dd-mm-yyyy'), '4891286245', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (324787754, 'Elo??nda', 'Moland', 2576, 'Jordana', 'Holden', 'Whitford', to_date('04-08-1977', 'dd-mm-yyyy'), '8599611600', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (578436317, 'Hongjiaguan', 'Transport', 6, 'Sollie', null, 'Osborne', to_date('07-11-1972', 'dd-mm-yyyy'), '3513683505', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (191185593, 'H?¶sh?¶?¶t', 'Hallows', 98, 'Henri', null, 'Cleugher', to_date('15-07-1983', 'dd-mm-yyyy'), '5903238039', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (940576359, 'S??', 'Kinsman', 1, 'Obadias', 'Kilian', 'Cork', to_date('22-12-1933', 'dd-mm-yyyy'), '2013458178', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (311928750, 'Bueng Khong Long', 'Golf', 6503, 'Ulrika', null, 'Paulat', to_date('02-09-1938', 'dd-mm-yyyy'), '6953158417', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (787767622, 'Teresa', 'Elmside', 65374, 'Eolande', null, 'Murkin', to_date('25-11-2012', 'dd-mm-yyyy'), '6688364522', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (749526793, 'Tambakmerak', 'Service', 73633, 'Barnett', 'Nowell', 'Gilbanks', to_date('30-05-1994', 'dd-mm-yyyy'), '3424322260', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (776494919, 'Huaikan', 'Sullivan', 86, 'Sheelagh', null, 'Vigar', to_date('21-04-2009', 'dd-mm-yyyy'), '8839862477', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (493018730, 'Busilak', 'Eastwood', 5285, 'Charline', 'Jdavie', 'Crace', to_date('14-03-1978', 'dd-mm-yyyy'), '1051568603', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (425432213, 'Kh??nh H??£i', 'Delladonna', 47, 'Carmine', 'Junina', 'Elies', to_date('05-03-1948', 'dd-mm-yyyy'), '8136265571', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (532766391, 'Shangshaleng', 'Menomonie', 6025, 'Nell', null, 'Linscott', to_date('22-03-1942', 'dd-mm-yyyy'), '9363197445', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (362483160, 'Lyon', 'Waywood', 75433, 'Pris', null, 'Vasenkov', to_date('13-08-2018', 'dd-mm-yyyy'), '5735712455', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (125249406, 'Eken?¤s', 'Sommers', 83178, 'Calida', 'Rhett', 'Giblin', to_date('08-08-1941', 'dd-mm-yyyy'), '5942736792', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (696751439, 'Cheyenne', 'Charing Cross', 26697, 'Gretchen', null, 'Biddulph', to_date('03-04-1921', 'dd-mm-yyyy'), '3071773523', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (981315203, 'Qingkou', 'Farmco', 87, 'Esmeralda', 'Thatch', 'Markwick', to_date('02-08-1930', 'dd-mm-yyyy'), '4415771021', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (561633907, '????t??k', 'Weeping Birch', 3816, 'Renaldo', null, 'Moggach', to_date('12-04-1947', 'dd-mm-yyyy'), '1081363574', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (233952257, 'Atar', 'Charing Cross', 1, 'Ugo', null, 'Crosier', to_date('23-02-1912', 'dd-mm-yyyy'), '2812369282', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (963542957, 'Gibgos', 'Memorial', 1, 'Torrey', 'Vivia', 'Dooney', to_date('05-12-1996', 'dd-mm-yyyy'), '7977490812', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (713778816, 'Sukarame', 'Delaware', 0, 'Powell', null, 'Christon', to_date('24-05-1958', 'dd-mm-yyyy'), '3318088642', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (707121250, 'Jovellar', 'Sachtjen', 87430, 'Carlynn', null, 'Tripcony', to_date('09-10-1977', 'dd-mm-yyyy'), '9653391270', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (113341314, 'Huanxi', 'Memorial', 3731, 'Emmalynne', null, 'Towey', to_date('14-08-1978', 'dd-mm-yyyy'), '9527839131', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (633705460, 'R?­o Gallegos', 'Jackson', 62260, 'Alexina', 'Levey', 'Danielot', to_date('26-08-1998', 'dd-mm-yyyy'), '1048125678', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (471518451, 'Cot?©-Lai', 'Bluestem', 2, 'Sherie', 'Bennie', 'McVee', to_date('11-08-1978', 'dd-mm-yyyy'), '6771511736', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (265300404, 'Nilanapo', 'Beilfuss', 66741, 'Bernardo', null, 'Heaney', to_date('22-09-1993', 'dd-mm-yyyy'), '4696884786', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (388074813, 'Fengjiang', 'Northridge', 10, 'Lisha', null, 'Banishevitz', to_date('07-04-2001', 'dd-mm-yyyy'), '6339239522', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (893364626, 'S?£o Miguel', 'Little Fleur', 569, 'Blondy', 'Findley', 'Jaques', to_date('12-06-2015', 'dd-mm-yyyy'), '9842658685', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (185457198, 'Chicago', 'Vernon', 8376, 'Carolynn', null, 'Giffard', to_date('25-08-1938', 'dd-mm-yyyy'), '8479731745', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (611204074, 'Babakan', 'Hovde', 3165, 'Kiele', 'Thane', 'Lowery', to_date('08-06-1913', 'dd-mm-yyyy'), '2178890550', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (736276041, 'Padre Para?­so', 'Express', 71838, 'Lek', 'Kienan', 'Tilzey', to_date('11-06-1984', 'dd-mm-yyyy'), '2181018795', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (951587550, 'Biny Selo', 'Crownhardt', 4069, 'Annabella', 'Emmie', 'Pestridge', to_date('20-11-1915', 'dd-mm-yyyy'), '6076215093', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (165455068, 'Bukama', 'American', 8, 'Reinald', 'Chauncey', 'Normanville', to_date('21-11-2014', 'dd-mm-yyyy'), '6252383585', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (692585044, 'Wuquan', 'Sundown', 7074, 'Renell', null, 'Brudenell', to_date('24-06-1918', 'dd-mm-yyyy'), '3849901652', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (460196733, 'Seixezelo', 'Crownhardt', 1, 'Bunnie', null, 'Trill', to_date('18-09-1933', 'dd-mm-yyyy'), '6068772210', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (511410870, 'Jiyang', 'Utah', 77, 'Amerigo', 'Geri', 'Turn', to_date('12-04-1918', 'dd-mm-yyyy'), '1916064096', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (478109202, 'Buliok', 'Carpenter', 52, 'Micheline', 'Saw', 'Feeley', to_date('19-02-1971', 'dd-mm-yyyy'), '4432212430', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (847744663, '?»elazk?³w', 'Kenwood', 670, 'Devina', null, 'Barlow', to_date('10-10-1927', 'dd-mm-yyyy'), '2193692292', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (192612673, 'Kowale Oleckie', 'Troy', 870, 'Myrtia', 'Elvis', 'Dampier', to_date('23-01-1953', 'dd-mm-yyyy'), '7588366752', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (864649706, 'Mlad?? Boleslav', 'Judy', 39, 'Rubi', 'Andrey', 'Troop', to_date('13-04-1979', 'dd-mm-yyyy'), '9394345463', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (778320948, 'Mitrofanovka', 'Pawling', 88, 'Reginald', null, 'Crosson', to_date('15-05-1994', 'dd-mm-yyyy'), '8927840564', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (243650368, 'Santa Fe', 'Debs', 39797, 'Harrietta', null, 'Rozzier', to_date('01-01-1949', 'dd-mm-yyyy'), '5204951868', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (816622585, 'Kiili', 'Prentice', 5317, 'Glendon', 'Josee', 'Wessell', to_date('10-04-1939', 'dd-mm-yyyy'), '8305094540', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (968183389, 'Columbus', 'Kipling', 31387, 'Kort', 'Bibbie', 'Giacomuzzo', to_date('13-11-1925', 'dd-mm-yyyy'), '6149577996', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (528939152, 'Marseille', 'Florence', 1034, 'Evie', 'Beltran', 'Stagge', to_date('04-06-1988', 'dd-mm-yyyy'), '7615347763', null, 'A-');
commit;
prompt 200 records committed...
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (467809159, 'Mayuan', 'Vahlen', 7977, 'Sofie', 'Arturo', 'Desaur', to_date('01-06-1962', 'dd-mm-yyyy'), '1846114616', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (518101237, 'Grodk?³w', 'Chive', 458, 'Culver', null, 'McKean', to_date('19-06-1918', 'dd-mm-yyyy'), '8692419170', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (152773161, 'Horlivka', 'Clove', 62515, 'Wood', 'Maynard', 'Hessle', to_date('16-04-1921', 'dd-mm-yyyy'), '8643786361', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (355612982, 'Myanaung', 'Glacier Hill', 56, 'Carolin', 'Kasey', 'Simionescu', to_date('22-05-1902', 'dd-mm-yyyy'), '7728563347', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (795377187, 'Troitsk', 'Morningstar', 0, 'Mickie', null, 'Spurman', to_date('27-11-1939', 'dd-mm-yyyy'), '6887785358', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (626023969, 'Hyrynsalmi', 'Hooker', 23, 'Svend', null, 'Whybrow', to_date('03-02-1997', 'dd-mm-yyyy'), '6171850733', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (526164452, 'Brumadinho', 'Summerview', 80961, 'Malynda', 'Minta', 'Ings', to_date('13-09-1907', 'dd-mm-yyyy'), '5567153903', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (991826648, 'Manabo', 'Rockefeller', 83134, 'Delphine', 'Alys', 'Eglinton', to_date('06-06-1969', 'dd-mm-yyyy'), '9473285573', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (527810003, 'Al Fukhkh?r?«', 'Burning Wood', 5, 'Tish', null, 'Emmitt', to_date('05-06-1993', 'dd-mm-yyyy'), '5463317903', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (726194140, 'Idrija', 'Badeau', 11172, 'Leah', 'Arnoldo', 'Wasbey', to_date('24-05-1968', 'dd-mm-yyyy'), '8225727665', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (665730594, 'Huashixia', 'Nova', 9, 'Averil', null, 'Werner', to_date('17-08-1986', 'dd-mm-yyyy'), '6307005868', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (518469853, 'Ivanishchi', 'Reindahl', 1738, 'Nelly', 'Keen', 'Desvignes', to_date('19-04-1958', 'dd-mm-yyyy'), '2065411189', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (986086401, 'Liuhou', 'Cherokee', 851, 'Fanni', 'Arabel', 'Shimmings', to_date('02-04-1921', 'dd-mm-yyyy'), '3077733356', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (402460421, 'Jal?lpur', 'North', 2, 'Ursola', null, 'Dunthorne', to_date('22-06-1949', 'dd-mm-yyyy'), '7822712788', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (272203171, 'Saint-Quentin-en-Yvelines', 'Heffernan', 112, 'Rona', null, 'Jime', to_date('03-11-1941', 'dd-mm-yyyy'), '3382124485', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (943589797, 'Pirot', 'Tomscot', 2296, 'Flss', 'Eldin', 'Hollingsby', to_date('01-07-1943', 'dd-mm-yyyy'), '8355120648', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (473692157, 'Halmstad', 'Northfield', 9767, 'Margarete', 'Krissy', 'Clingoe', to_date('13-07-1978', 'dd-mm-yyyy'), '3026000486', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (352374006, 'Winton', 'Randy', 9, 'Oran', 'Laird', 'MacFarland', to_date('13-10-1979', 'dd-mm-yyyy'), '7854445354', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (145942921, 'Krasnoshchekovo', 'Pierstorff', 1465, 'Talia', null, 'Kinze', to_date('20-03-1960', 'dd-mm-yyyy'), '2212421399', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (817032269, 'Banyumas', 'Rusk', 9, 'Raynell', null, 'Lovelock', to_date('13-04-1945', 'dd-mm-yyyy'), '9505366560', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (800904314, 'Hukou', 'Dayton', 14, 'Laughton', 'Pearline', 'Dewbury', to_date('02-04-1992', 'dd-mm-yyyy'), '4391960794', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (283420111, 'Gromnik', 'Comanche', 3075, 'Minna', 'Bailie', 'Farnon', to_date('01-11-1915', 'dd-mm-yyyy'), '7824902603', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (219689648, 'Beslan', 'Golf', 0, 'Danny', null, 'Bastable', to_date('28-02-1922', 'dd-mm-yyyy'), '2857622922', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (954882441, 'Amarillo', 'Hintze', 5, 'Suzie', 'Junette', 'Vamplus', to_date('14-02-1941', 'dd-mm-yyyy'), '8061657707', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (589383054, 'Padangsidempuan', 'Scott', 210, 'Lisabeth', null, 'Berthot', to_date('13-02-1907', 'dd-mm-yyyy'), '5762744849', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (986960506, 'Sedandang', 'Calypso', 5, 'Elie', null, 'Donneely', to_date('10-05-1947', 'dd-mm-yyyy'), '5252423912', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (200401164, 'Angoul??me', 'Graedel', 6, 'Brigham', null, 'Fayerman', to_date('06-10-1928', 'dd-mm-yyyy'), '2322791449', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (269280194, 'Buenos Aires', 'Stephen', 18593, 'Zarah', null, 'Goney', to_date('22-05-1955', 'dd-mm-yyyy'), '3451465397', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (666187710, 'Palmira', 'Stuart', 49, 'Nissie', 'Ollie', 'MacLice', to_date('29-04-2020', 'dd-mm-yyyy'), '7831756365', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (518507980, 'Blizne', 'Columbus', 40545, 'Clarette', null, 'Tomasino', to_date('25-04-1931', 'dd-mm-yyyy'), '2333496608', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (476965249, 'Kstovo', 'Hazelcrest', 563, 'Rosalinda', 'Mable', 'Morrison', to_date('28-09-1981', 'dd-mm-yyyy'), '6198298204', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (166649777, 'Condado', 'Dexter', 41274, 'Hadrian', 'Eddie', 'Hacon', to_date('29-06-1964', 'dd-mm-yyyy'), '8292913865', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (340876652, 'Loanda', 'Weeping Birch', 60455, 'Waneta', 'Sapphire', 'Mc Menamin', to_date('12-07-1974', 'dd-mm-yyyy'), '6258265863', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (872551637, 'Qiwen', 'Farwell', 6990, 'Anatole', 'Arie', 'Brighouse', to_date('24-06-1944', 'dd-mm-yyyy'), '4911258611', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (858121244, 'Zag?³rnik', 'Calypso', 66, 'Claudius', 'Ileane', 'Pulley', to_date('09-04-1926', 'dd-mm-yyyy'), '2563133054', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (893702772, 'Jiudian', 'Ridgeway', 678, 'Sari', 'Astrid', 'Boggas', to_date('18-06-2015', 'dd-mm-yyyy'), '6631239647', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (231319916, 'Leyuan', 'Warner', 83661, 'Oby', null, 'McReynolds', to_date('06-10-1981', 'dd-mm-yyyy'), '5349900857', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (485742248, 'Gaoliban', 'Surrey', 5616, 'Kimberley', null, 'Newband', to_date('11-01-1964', 'dd-mm-yyyy'), '8332504942', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (794324629, 'Vista Hermosa', 'Laurel', 483, 'Constanta', null, 'Greally', to_date('09-12-1931', 'dd-mm-yyyy'), '2491663127', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (709889503, 'Weichanglu', 'Vahlen', 67197, 'Lazarus', 'Filip', 'Steely', to_date('26-01-1948', 'dd-mm-yyyy'), '4555220428', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (157597723, 'Jaboat?£o', 'Springview', 316, 'Willetta', null, 'Larking', to_date('20-01-1926', 'dd-mm-yyyy'), '8931956359', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (254181753, 'Fayzabad', 'Tony', 6490, 'Christiana', 'Rickey', 'Hawgood', to_date('27-07-2001', 'dd-mm-yyyy'), '5236787538', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (200123419, 'Lincheng', 'Petterle', 43238, 'Geralda', 'Charley', 'Gaynsford', to_date('27-12-1947', 'dd-mm-yyyy'), '4943593181', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (196814159, 'V??rzea da Serra', 'Green', 6, 'Dorian', null, 'Isenor', to_date('13-07-1969', 'dd-mm-yyyy'), '3219098485', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (760780439, 'Batulenger Barat', 'Kings', 2686, 'Kore', 'Brit', 'Cattonnet', to_date('06-02-2008', 'dd-mm-yyyy'), '5148149973', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (507730177, 'Ferreiras', 'Forest Dale', 93199, 'Blanche', 'Jelene', 'Housam', to_date('05-02-1977', 'dd-mm-yyyy'), '6285131872', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (805844445, 'Oenam', 'Crowley', 6405, 'Umeko', null, 'Bridell', to_date('20-02-1903', 'dd-mm-yyyy'), '2495282960', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (409299064, 'Capela', 'Kensington', 49956, 'Paddy', 'Darya', 'McClary', to_date('30-04-1978', 'dd-mm-yyyy'), '8898690343', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (886866213, 'La Esperanza', 'Hazelcrest', 20, 'Delano', 'Hermon', 'Gatsby', to_date('21-11-1945', 'dd-mm-yyyy'), '8048049415', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (127152552, 'Zhongzhai', 'Stephen', 41, 'Dore', null, 'Gallaher', to_date('04-09-2017', 'dd-mm-yyyy'), '8047402856', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (375710406, 'Ceres', 'Lakeland', 603, 'Neila', null, 'Greening', to_date('05-10-1949', 'dd-mm-yyyy'), '9746055175', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (251994546, 'Bairan', 'Magdeline', 5, 'Mechelle', null, 'Iacopetti', to_date('18-02-1967', 'dd-mm-yyyy'), '6018047820', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (724060404, 'Shibushi', 'High Crossing', 8894, 'Cynthy', null, 'Lethbury', to_date('27-09-1964', 'dd-mm-yyyy'), '7722391496', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (926734748, 'Catu', 'Sullivan', 16, 'Donetta', null, 'Laroze', to_date('13-03-1998', 'dd-mm-yyyy'), '6828903359', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (321393724, '??rnsk?¶ldsvik', 'Hudson', 48428, 'Louise', null, 'Domanski', to_date('15-01-1945', 'dd-mm-yyyy'), '6309473959', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (712206836, 'Vysok?© nad Jizerou', 'Forest Run', 20, 'Isaak', 'Georgiana', 'Wulfinger', to_date('06-05-1918', 'dd-mm-yyyy'), '3141836603', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (637147096, 'Mossel Bay', 'La Follette', 4723, 'Marcella', null, 'Adrienne', to_date('31-12-1944', 'dd-mm-yyyy'), '3224537506', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (702804007, 'Boa Esperan?§a', 'Parkside', 3954, 'Julian', null, 'Millom', to_date('26-04-1948', 'dd-mm-yyyy'), '8706578618', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (987596469, 'Columbus', 'Vera', 863, 'Viv', null, 'Epelett', to_date('21-03-1976', 'dd-mm-yyyy'), '7065343362', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (285096770, 'Des Moines', 'Glendale', 3, 'Arte', null, 'Le Grice', to_date('27-02-1933', 'dd-mm-yyyy'), '5153131223', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (270750595, 'Bastia', 'Golden Leaf', 8, 'Gardner', 'Alexandr', 'Debenham', to_date('14-03-1926', 'dd-mm-yyyy'), '4816777176', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (301200179, 'Nakatsugawa', 'Hazelcrest', 92, 'Cherri', 'Monique', 'Luck', to_date('25-12-1937', 'dd-mm-yyyy'), '5588085923', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (783655047, 'Chivhu', 'Summit', 5749, 'Lissy', null, 'Perago', to_date('20-02-1965', 'dd-mm-yyyy'), '9476633229', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (212957323, 'Naran-mandokhu Somon', 'Dryden', 6314, 'Nerty', null, 'De Dantesie', to_date('10-09-1921', 'dd-mm-yyyy'), '8546550030', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (501670989, 'Pataha', 'Schlimgen', 26, 'Fraser', 'Shelden', 'Sellors', to_date('05-08-1956', 'dd-mm-yyyy'), '4568157492', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (265630376, 'Duoxiang', 'Golf Course', 27497, 'Esme', 'Quill', 'Wallworth', to_date('12-08-1991', 'dd-mm-yyyy'), '5487712946', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (907725857, 'Pongol', 'Bellgrove', 3, 'Brenden', null, 'Wrotham', to_date('14-12-1935', 'dd-mm-yyyy'), '5702979381', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (838436161, 'Len?«nsk?«y', 'Shoshone', 24, 'Lauren', null, 'Cough', to_date('29-11-1941', 'dd-mm-yyyy'), '4445219173', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (792108286, 'Gumaus', 'Glendale', 74143, 'Chantalle', 'Hyatt', 'Orrill', to_date('09-07-1966', 'dd-mm-yyyy'), '1475147370', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (933449330, 'Marvdasht', 'Schlimgen', 74050, 'Jan', null, 'Swalwell', to_date('22-10-1962', 'dd-mm-yyyy'), '9999348176', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (997486433, 'Bolembre', 'Rutledge', 7914, 'Land', null, 'Bleesing', to_date('29-01-1986', 'dd-mm-yyyy'), '7709858208', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (873454319, 'Bandhagen', 'Norway Maple', 89096, 'Jerrine', 'Kirsteni', 'Bullivent', to_date('09-07-2001', 'dd-mm-yyyy'), '1221571674', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (518132465, 'Mtsensk', 'Starling', 22, 'Marie-ann', null, 'Marcq', to_date('25-06-1990', 'dd-mm-yyyy'), '2089686616', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (728336420, 'Smolyaninovo', 'Tennessee', 39, 'Nolly', 'Ranique', 'Abbyss', to_date('21-05-1951', 'dd-mm-yyyy'), '7761339157', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (802403160, 'Housuo', 'Lukken', 27195, 'Laney', 'Tamqrah', 'Teml', to_date('19-09-1976', 'dd-mm-yyyy'), '8006128240', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (932502609, 'Chelopech', 'Fairfield', 9, 'Essy', 'Davine', 'Charlson', to_date('18-08-2004', 'dd-mm-yyyy'), '9216218882', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (769111438, 'Ceres', 'Manufacturers', 79922, 'Jacobo', null, 'Greenroad', to_date('27-10-2003', 'dd-mm-yyyy'), '3803072575', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (138223947, 'San Francisco', 'Chive', 8, 'Stirling', 'Ashlan', 'Coole', to_date('11-06-1963', 'dd-mm-yyyy'), '8429251826', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (305332524, 'San Benito Abad', 'Green Ridge', 2234, 'Giuseppe', null, 'Cockrill', to_date('30-06-2016', 'dd-mm-yyyy'), '7921825529', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (387606340, 'G?¶teborg', 'Buhler', 8, 'Gael', null, 'Hunstone', to_date('25-12-1974', 'dd-mm-yyyy'), '6358293387', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (158071510, 'Mossendjo', 'Corben', 0, 'Eba', null, 'Halfpenny', to_date('27-08-1942', 'dd-mm-yyyy'), '2082028382', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (335545242, 'Sacramento', 'Spaight', 18635, 'Clemmie', 'Rollie', 'Zisneros', to_date('04-08-1939', 'dd-mm-yyyy'), '9163616739', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (769901392, 'Buenos Aires', 'La Follette', 3, 'Cayla', 'Elvira', 'Drinkel', to_date('11-10-1924', 'dd-mm-yyyy'), '2479694592', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (840057828, 'Sumberrejo', 'Logan', 48, 'Nicolle', 'Merry', 'Puig', to_date('23-08-1940', 'dd-mm-yyyy'), '3634011902', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (987111092, 'Young America', 'Cascade', 147, 'Allyce', 'Annadiane', 'Bonhill', to_date('15-10-1907', 'dd-mm-yyyy'), '9527106242', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (315940144, 'Boncis', 'Roxbury', 70976, 'Kristine', 'Amandie', 'Beacom', to_date('15-11-1903', 'dd-mm-yyyy'), '9555059780', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (174936847, 'Kladruby', 'Oak Valley', 52501, 'Charo', 'Brit', 'Kings', to_date('01-03-1970', 'dd-mm-yyyy'), '4556375495', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (766995334, 'Prakhon Chai', 'Magdeline', 4, 'Arman', null, 'Melchior', to_date('24-10-1949', 'dd-mm-yyyy'), '3216927335', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (379428655, 'Verenchanka', 'Hudson', 6, 'Wendi', 'Riobard', 'Oxbe', to_date('26-03-1979', 'dd-mm-yyyy'), '9711630997', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (463595900, 'Barreiras', 'Ludington', 722, 'Orelee', null, 'Beeckx', to_date('13-09-1994', 'dd-mm-yyyy'), '6853384500', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (173920758, 'Passal', 'Mandrake', 499, 'Norma', null, 'Cutler', to_date('02-03-1976', 'dd-mm-yyyy'), '8889959226', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (258337837, 'Liding?¶', 'Bay', 12124, 'Germain', 'Mela', 'Paoloni', to_date('21-12-1906', 'dd-mm-yyyy'), '6431898658', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (730787849, 'G??owno', 'Sycamore', 347, 'Andros', null, 'Leverson', to_date('28-11-1942', 'dd-mm-yyyy'), '6788299454', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (860926589, 'Zhaotong', 'Shopko', 418, 'Pauline', 'Dore', 'McMillam', to_date('09-02-2006', 'dd-mm-yyyy'), '9988275301', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (630097210, 'Rinc?³n', 'David', 4, 'Dorella', null, 'Saltmarsh', to_date('22-09-2018', 'dd-mm-yyyy'), '9653525294', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (272459492, 'Huibu', 'Corscot', 9, 'Adelheid', null, 'Hove', to_date('05-09-2001', 'dd-mm-yyyy'), '5812645535', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (226692168, 'Banjar Mambalkajanan', 'Surrey', 84136, 'Whitaker', null, 'Brient', to_date('11-01-2005', 'dd-mm-yyyy'), '6389991248', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (201126950, 'Rosice', 'Karstens', 995, 'Herve', 'Jayne', 'Chue', to_date('27-06-1944', 'dd-mm-yyyy'), '1556577257', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (928513262, 'Valongo', 'Lighthouse Bay', 606, 'Ellary', null, 'O'' Faherty', to_date('28-10-1980', 'dd-mm-yyyy'), '1338676135', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (419343054, 'Circa', 'Westerfield', 1158, 'Henderson', 'Emili', 'Ziemens', to_date('21-01-1951', 'dd-mm-yyyy'), '7291202165', null, 'O-');
commit;
prompt 300 records committed...
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (541691852, 'Bella Uni?³n', 'Memorial', 0, 'Murray', null, 'Cherrett', to_date('20-02-2005', 'dd-mm-yyyy'), '4665463277', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (966174596, 'Sel?­nia', 'Chive', 6648, 'Kyla', 'Hillyer', 'Cratchley', to_date('29-01-1940', 'dd-mm-yyyy'), '4032039474', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (148700848, 'Altanbulag', 'Gulseth', 3, 'Vladamir', null, 'Side', to_date('19-02-1945', 'dd-mm-yyyy'), '8224415139', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (311974739, 'San Benito', 'Barby', 9, 'Sena', null, 'Lisett', to_date('08-07-1927', 'dd-mm-yyyy'), '9253063180', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (829114788, 'Pont Cass?©', 'Monument', 99753, 'Sara-ann', 'Guthrey', 'MacConnal', to_date('23-10-1958', 'dd-mm-yyyy'), '9823514251', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (656917861, 'Alenquer', 'Laurel', 1225, 'Thibaud', null, 'Burde', to_date('02-10-1944', 'dd-mm-yyyy'), '7347405341', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (612454979, 'Vysok?© M?½to', '7th', 20, 'Lulita', 'Giorgio', 'Pankhurst.', to_date('03-11-1987', 'dd-mm-yyyy'), '7392615243', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (124377854, 'Tororo', 'Blue Bill Park', 700, 'Roy', 'Carlin', 'Locard', to_date('10-06-1942', 'dd-mm-yyyy'), '9005698033', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (479269110, 'Yushan', 'Melody', 764, 'Adaline', 'Mendel', 'Graeser', to_date('09-05-1901', 'dd-mm-yyyy'), '8367871469', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (984778784, 'La Cocha', 'Ryan', 665, 'Sanderson', null, 'Sarjeant', to_date('13-02-1975', 'dd-mm-yyyy'), '1972877774', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (825543894, 'Huolongping', 'Little Fleur', 42, 'Skell', 'Clevey', 'Mourton', to_date('11-06-1988', 'dd-mm-yyyy'), '1443224230', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (321607459, 'Pedra Azul', 'Grasskamp', 7, 'Thatch', null, 'Chaves', to_date('10-08-1995', 'dd-mm-yyyy'), '7904132789', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (460929284, 'Oslo', 'Knutson', 317, 'Jasmine', 'Leicester', 'Fergusson', to_date('15-09-1906', 'dd-mm-yyyy'), '5601827500', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (720882049, 'Szlachta', 'Arapahoe', 1, 'Ally', null, 'Bedrosian', to_date('06-03-1938', 'dd-mm-yyyy'), '1481802563', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (914576665, 'San Pedro Zacapa', 'Porter', 4, 'Farlay', 'Saxe', 'Hallowes', to_date('06-07-1998', 'dd-mm-yyyy'), '7713824601', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (929988807, 'Resapombo', 'Crest Line', 66, 'Damien', null, 'Durrell', to_date('11-10-1970', 'dd-mm-yyyy'), '8756159953', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (191265592, 'Kuaidamao', 'Drewry', 955, 'Rickert', 'Andria', 'Jenne', to_date('24-09-1989', 'dd-mm-yyyy'), '1627781134', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (684637909, 'Eaubonne', 'Swallow', 745, 'Georas', null, 'Fulloway', to_date('08-03-1929', 'dd-mm-yyyy'), '2924969340', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (726157701, 'Gandzak', 'Fisk', 3, 'Ilyssa', null, 'Casetti', to_date('15-10-1963', 'dd-mm-yyyy'), '4087693915', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (213518716, '??ldziyt', 'Di Loreto', 88, 'Randee', null, 'Pady', to_date('28-03-1973', 'dd-mm-yyyy'), '2082463835', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (233834816, 'Jiangfeng', 'Division', 52473, 'Samuele', null, 'Veart', to_date('18-03-1980', 'dd-mm-yyyy'), '4529243710', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (739383154, 'A?«a', 'Delaware', 83954, 'Jerrilyn', 'Nessie', 'Sterte', to_date('04-07-1953', 'dd-mm-yyyy'), '1147956675', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (297343118, 'Maputsoe', 'Barby', 42018, 'Teodor', null, 'Stebbings', to_date('12-01-1907', 'dd-mm-yyyy'), '3638335893', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (444156551, 'Pagatan', 'Aberg', 32, 'Milena', null, 'Scritch', to_date('19-06-1932', 'dd-mm-yyyy'), '3495831122', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (191798215, 'Houxixi', 'Morrow', 68, 'Waylon', 'Sven', 'Orange', to_date('09-08-1919', 'dd-mm-yyyy'), '4205946041', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (867982944, 'Dallas', 'Fordem', 1370, 'Ada', 'Giulio', 'Posvner', to_date('22-11-1943', 'dd-mm-yyyy'), '2142146080', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (446458474, 'Guanting', 'Hudson', 4123, 'Gawen', 'Mariellen', 'Spearman', to_date('31-07-1921', 'dd-mm-yyyy'), '9837833906', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (923802333, 'Ganlin', 'Arrowood', 2, 'Elton', 'Jed', 'Sail', to_date('06-07-1964', 'dd-mm-yyyy'), '4153244366', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (548240914, 'Chilliwack', 'Twin Pines', 9831, 'Layton', null, 'Worsall', to_date('04-12-1931', 'dd-mm-yyyy'), '4038093277', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (879345248, 'Chengui', 'Judy', 8798, 'Bunny', 'Joline', 'Tuffrey', to_date('13-08-1967', 'dd-mm-yyyy'), '6644546782', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (528244152, '?¸¨al?¸©?«l', 'Westridge', 9, 'Rolando', 'Menard', 'Nayer', to_date('27-09-1940', 'dd-mm-yyyy'), '7331545222', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (308515444, 'Longquan', 'Monument', 882, 'Austin', 'Feliza', 'Vise', to_date('26-10-1978', 'dd-mm-yyyy'), '1012252071', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (531539282, 'Bucu Lor', 'Susan', 5063, 'Laurens', 'Yovonnda', 'Janjusevic', to_date('11-06-1923', 'dd-mm-yyyy'), '6093015857', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (627775521, 'Bigua?§u', 'Gateway', 3926, 'Jacqui', null, 'Yoell', to_date('23-02-2003', 'dd-mm-yyyy'), '2171848829', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (138247594, 'Rungis', 'Valley Edge', 211, 'Evvy', null, 'Jamot', to_date('20-05-2013', 'dd-mm-yyyy'), '7928122732', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (603721548, 'Sabanalarga', 'Eastlawn', 9, 'Errick', null, 'Cumber', to_date('11-02-1999', 'dd-mm-yyyy'), '2536994099', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (578247423, 'Zlonice', 'Eliot', 4714, 'Jeannie', null, 'Holburn', to_date('08-05-1907', 'dd-mm-yyyy'), '5209571892', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (745135261, 'Qikeshu', 'Bartillon', 1, 'Gunar', 'Lammond', 'Woolmington', to_date('03-04-1997', 'dd-mm-yyyy'), '8495740120', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (134253725, 'Lakeland', 'Acker', 76860, 'Leanna', 'Chandler', 'Bingham', to_date('14-02-1928', 'dd-mm-yyyy'), '8634649186', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (189129587, 'T?«krah', 'Lukken', 87, 'Belia', null, 'Lethby', to_date('02-07-1985', 'dd-mm-yyyy'), '5596859984', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (460101760, 'Czarna D??br?³wka', 'Grim', 50819, 'Graig', null, 'Avramov', to_date('01-02-1987', 'dd-mm-yyyy'), '2869468536', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (257056491, 'Polyarnyy', 'Rieder', 1797, 'Jennine', null, 'Menendez', to_date('09-10-1944', 'dd-mm-yyyy'), '3573692123', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (825353221, 'Soroca', 'Forster', 973, 'Shep', 'Brit', 'Casaccia', to_date('24-02-1986', 'dd-mm-yyyy'), '1651128146', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (214763104, 'Bouafl?©', 'Thompson', 4298, 'Andee', 'Tomasine', 'Tussaine', to_date('21-06-1980', 'dd-mm-yyyy'), '6797128902', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (543760376, 'Zhovti Vody', 'Carioca', 9559, 'Dugald', 'Urbano', 'Oiller', to_date('14-08-1978', 'dd-mm-yyyy'), '6158159412', '256499578', 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (666733946, 'Lenakapa', 'Pankratz', 992, 'Merle', 'Bertie', 'Langsbury', to_date('06-11-1966', 'dd-mm-yyyy'), '3822828400', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (552596021, 'Harper', 'Utah', 22517, 'Mayor', null, 'Smout', to_date('14-02-1924', 'dd-mm-yyyy'), '8093675960', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (170959333, 'Horki', 'Mayfield', 3, 'Jerrold', 'Damaris', 'Coppock.', to_date('17-09-2013', 'dd-mm-yyyy'), '1498723297', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (409272435, 'Aveiras de Cima', 'Hoard', 7, 'Wally', 'Frederigo', 'Mariet', to_date('17-01-1973', 'dd-mm-yyyy'), '5711969854', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (590262827, 'Mat-i', 'Northport', 3, 'Levin', null, 'Race', to_date('01-04-1970', 'dd-mm-yyyy'), '8258198118', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (135092171, 'Krikil', 'Loftsgordon', 68, 'Bank', 'Sandye', 'Eberdt', to_date('26-04-1980', 'dd-mm-yyyy'), '4482041897', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (794813117, 'R?bigh', 'Michigan', 62303, 'Tristam', null, 'Domb', to_date('11-05-1972', 'dd-mm-yyyy'), '6845866535', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (150997773, 'Cikotok', 'Eagle Crest', 5, 'Mahmud', 'Brianna', 'Niemiec', to_date('22-07-1935', 'dd-mm-yyyy'), '3119324018', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (453897455, 'Sumbersari Wetan', 'Scoville', 54, 'Guy', null, 'Bulleyn', to_date('08-09-1993', 'dd-mm-yyyy'), '5516451393', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (525810198, 'M?­los', 'Dottie', 688, 'Ellene', 'Ariel', 'Clausewitz', to_date('10-07-1924', 'dd-mm-yyyy'), '7857030944', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (119693699, 'San Francisco', 'Burrows', 2, 'Kahlil', 'Irwinn', 'Blamires', to_date('17-06-2016', 'dd-mm-yyyy'), '5561386499', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (262773968, 'Q?¼mong', 'Iowa', 696, 'Walker', null, 'Ellyatt', to_date('03-10-1906', 'dd-mm-yyyy'), '2996861821', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (718723162, 'Beijiang', 'Ramsey', 4, 'Gilles', 'Eleonora', 'McElane', to_date('30-08-1947', 'dd-mm-yyyy'), '2596090952', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (474312378, 'Paris 09', 'Village Green', 7048, 'Huntley', null, 'Fleisch', to_date('11-12-1907', 'dd-mm-yyyy'), '2882623505', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (304275848, 'Makrych?³ri', 'Warrior', 471, 'Hadlee', 'Christan', 'Sergean', to_date('03-11-1985', 'dd-mm-yyyy'), '7879162853', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (788434066, 'Bayan', 'Troy', 0, 'Karissa', null, 'Van Hesteren', to_date('28-07-1965', 'dd-mm-yyyy'), '3315994709', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (438564639, 'Im?m ????¸©ib', 'Calypso', 1, 'Gisele', 'Coralyn', 'Geere', to_date('02-02-1957', 'dd-mm-yyyy'), '8612660607', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (706859403, 'H?gere Hiywet', 'Sugar', 65234, 'Gisele', 'Lilyan', 'Milius', to_date('31-12-1905', 'dd-mm-yyyy'), '7007450655', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (659390014, 'Trnovlje pri Celju', 'Spenser', 2313, 'Felicia', 'Cece', 'Kiebes', to_date('08-10-1987', 'dd-mm-yyyy'), '1727564960', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (340850123, 'Betong', 'Hudson', 37, 'Honor', 'Hanna', 'Cullinane', to_date('02-01-1945', 'dd-mm-yyyy'), '5798894628', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (329273691, 'San Francisco de Macor?­s', 'Fulton', 85, 'Matty', 'Ophelie', 'Lowing', to_date('12-05-1913', 'dd-mm-yyyy'), '2432066632', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (489685463, 'Tapada das Merc??s', 'Declaration', 3638, 'Amabelle', 'Rey', 'Rootham', to_date('25-04-1971', 'dd-mm-yyyy'), '3945577602', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (407931490, 'Hevl?­n', 'Westend', 0, 'Marieann', null, 'Towlson', to_date('13-11-2017', 'dd-mm-yyyy'), '4539982182', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (984894238, 'San Isidro', 'Victoria', 2022, 'Worden', null, 'Carme', to_date('05-04-2007', 'dd-mm-yyyy'), '2693095371', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (649887264, 'Tizgane', 'Fisk', 2539, 'Chelsy', 'Raven', 'Ripping', to_date('13-06-1926', 'dd-mm-yyyy'), '4886706983', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (554523321, 'Oslo', 'Lawn', 0, 'Connie', null, 'Everest', to_date('05-09-1951', 'dd-mm-yyyy'), '8195526764', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (171928526, 'Wenquan', 'Butternut', 7, 'Sidonia', null, 'Stivey', to_date('13-12-1901', 'dd-mm-yyyy'), '9646684123', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (838336343, 'N??¸©iyat H?«r?n', 'Longview', 20951, 'Sheri', 'Sharona', 'Audsley', to_date('15-02-1921', 'dd-mm-yyyy'), '1097087975', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (371555010, 'Masjed Soleym?n', 'International', 66, 'Millie', 'Wiatt', 'Norris', to_date('14-04-1904', 'dd-mm-yyyy'), '8444543620', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (967904734, 'Fengjiang', 'Forest Dale', 3, 'Ruprecht', 'Alvinia', 'De Lorenzo', to_date('08-12-1932', 'dd-mm-yyyy'), '6468746692', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (154658883, 'Caotan', 'Hoard', 40, 'Meredithe', 'Barnie', 'Humpherson', to_date('25-10-1900', 'dd-mm-yyyy'), '2405643518', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (158032537, 'Szeged', 'Kings', 52303, 'Bunnie', 'Kare', 'Yarnold', to_date('10-02-1949', 'dd-mm-yyyy'), '8157064799', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (763994882, 'Eg-Uur', 'Longview', 72, 'Auberon', null, 'Wateridge', to_date('06-05-1997', 'dd-mm-yyyy'), '3555388821', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (966390835, 'Saba Yoi', 'Monterey', 6, 'Carlynne', 'Josi', 'Ridings', to_date('29-03-1939', 'dd-mm-yyyy'), '2087867536', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (690317110, 'Chama', '8th', 498, 'Jeanna', null, 'Sabban', to_date('14-12-2010', 'dd-mm-yyyy'), '1135940638', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (551779895, 'Kukawa', 'Marquette', 280, 'Quincy', null, 'Callen', to_date('18-02-1920', 'dd-mm-yyyy'), '7229398906', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (913589022, 'Beaverton', 'Ilene', 5, 'Gerald', null, 'Antoshin', to_date('05-05-1919', 'dd-mm-yyyy'), '5033341324', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (484402865, 'Alamar', 'Onsgard', 9, 'Royal', 'Granthem', 'McDonell', to_date('02-09-1933', 'dd-mm-yyyy'), '6216157234', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (213047831, 'El Plan', 'Iowa', 96, 'Bealle', null, 'Pedersen', to_date('03-05-1952', 'dd-mm-yyyy'), '2356829998', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (840733763, 'Gracias', 'Forest', 2262, 'Nicolea', 'Arthur', 'Masser', to_date('26-04-2018', 'dd-mm-yyyy'), '5739837318', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (219977600, 'Reshetnikovo', 'Esch', 12, 'Alvira', 'Joly', 'Jendrassik', to_date('07-07-1956', 'dd-mm-yyyy'), '2554593083', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (826200379, 'Vashkivtsi', 'Sommers', 32551, 'Jimmy', 'Shelton', 'Le Fleming', to_date('05-10-1977', 'dd-mm-yyyy'), '4405901732', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (151656221, 'Cambanugoy', 'Sutteridge', 85, 'Sigfried', null, 'Hain', to_date('10-06-1945', 'dd-mm-yyyy'), '4963814910', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (426700247, 'Casa Nova', 'Crowley', 97, 'Maddi', null, 'Windrass', to_date('15-02-1903', 'dd-mm-yyyy'), '5724139342', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (143566905, 'Ilek', 'Sage', 72, 'Sileas', 'Nikola', 'Bridgland', to_date('11-10-1965', 'dd-mm-yyyy'), '3403205620', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (187859985, 'Krajan Karanganyar', 'Quincy', 46236, 'Frederic', 'Leora', 'Mattis', to_date('04-10-1914', 'dd-mm-yyyy'), '3806436585', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (327911424, 'Mir', 'Pearson', 9987, 'Sally', 'Konstantine', 'Fairall', to_date('24-01-1978', 'dd-mm-yyyy'), '6138097470', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (728764827, 'Kekeran', 'Delladonna', 4429, 'Linzy', 'Pinchas', 'Marklew', to_date('16-07-2001', 'dd-mm-yyyy'), '4103320802', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (265785605, 'Juazeiro do Norte', 'Killdeer', 20225, 'Valentine', 'Ly', 'Dovermann', to_date('15-09-1998', 'dd-mm-yyyy'), '3475148802', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (714026684, 'Gapyeong', 'Corry', 447, 'Lotta', null, 'Charrisson', to_date('19-11-1957', 'dd-mm-yyyy'), '8063741665', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (555738498, 'Niort', 'Red Cloud', 389, 'Bonny', null, 'Sach', to_date('22-02-1976', 'dd-mm-yyyy'), '6639071546', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (505181727, 'Sintansin', 'Algoma', 3932, 'Gordy', null, 'Figgins', to_date('30-01-2011', 'dd-mm-yyyy'), '1045864129', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (423366489, 'Sypniewo', 'Nova', 3, 'Melisent', null, 'Tortoishell', to_date('10-08-1999', 'dd-mm-yyyy'), '7313510506', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (118972200, 'Silva Jardim', 'Brown', 1812, 'Monroe', 'Worth', 'Groundwater', to_date('14-12-1987', 'dd-mm-yyyy'), '6503943525', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (720479249, 'Naikoten Dua', 'Columbus', 9929, 'Dru', null, 'Rennix', to_date('29-01-2014', 'dd-mm-yyyy'), '6526639188', null, 'AB-');
commit;
prompt 400 records committed...
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (549366764, 'Kudirkos Naumiestis', 'Helena', 101, 'Jodi', 'Anselma', 'Goggins', to_date('12-10-1982', 'dd-mm-yyyy'), '4578598532', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (591415349, 'Stran?ice', 'Rockefeller', 8, 'Garry', 'Austine', 'Kencott', to_date('20-06-1971', 'dd-mm-yyyy'), '6908995541', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (475216112, 'Yaodu', 'Anzinger', 19, 'Madelyn', 'Arney', 'Howis', to_date('31-07-1978', 'dd-mm-yyyy'), '7836056326', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (954716453, 'Balading', 'Sugar', 92, 'Neila', 'Gratia', 'Mirfin', to_date('27-09-1901', 'dd-mm-yyyy'), '5783728156', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (122959836, 'Pokhara', 'Schmedeman', 2122, 'Olivie', 'Kriste', 'Mounce', to_date('05-04-1977', 'dd-mm-yyyy'), '5883630168', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (502139257, 'Merton', 'Hanover', 1, 'Adolphus', 'Bili', 'Meredith', to_date('12-10-1925', 'dd-mm-yyyy'), '9013198325', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (911893601, 'Shidu', 'Sloan', 89224, 'Jilli', 'Rustie', 'Faulder', to_date('17-12-1931', 'dd-mm-yyyy'), '1133333853', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (456576271, 'Lavras da Mangabeira', 'Holmberg', 7003, 'Gualterio', 'Hal', 'Arlt', to_date('16-07-1941', 'dd-mm-yyyy'), '5346410114', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (611583858, 'Kastornoye', 'Montana', 6406, 'Laverne', 'Laurice', 'Gould', to_date('04-01-2014', 'dd-mm-yyyy'), '3918626076', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (555356960, 'Agbor', 'Debs', 913, 'Cal', 'Hastings', 'Heugel', to_date('17-06-2010', 'dd-mm-yyyy'), '6856747776', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (214477906, 'Dallas', 'Melby', 868, 'Nancy', 'Johannes', 'Pembery', to_date('02-07-2002', 'dd-mm-yyyy'), '9726190240', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (323703121, 'Jiangnan', 'Express', 22, 'Andre', null, 'Headech', to_date('12-05-1960', 'dd-mm-yyyy'), '7597078456', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (341851984, 'Nezlobnaya', 'Hazelcrest', 5, 'Cassy', 'Murry', 'Schroder', to_date('15-07-1914', 'dd-mm-yyyy'), '6449761566', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (653572183, 'Sobontoro', 'Hudson', 3, 'Gardiner', null, 'Nielson', to_date('03-06-1959', 'dd-mm-yyyy'), '4782300829', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (450442153, 'B?ndarban', 'Eastwood', 2, 'Kate', 'Mikol', 'Sealeaf', to_date('06-12-1928', 'dd-mm-yyyy'), '5708617911', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (664613228, 'Mungkin', 'Harper', 22352, 'Angelina', 'Rube', 'Dightham', to_date('19-09-2017', 'dd-mm-yyyy'), '5687618542', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (424560292, 'Ceelbuur', 'Dunning', 233, 'Meredith', null, 'Cobain', to_date('29-12-1928', 'dd-mm-yyyy'), '8208906066', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (467076021, 'Sarv?b?d', 'Bayside', 5510, 'Sam', null, 'Cashen', to_date('22-11-1956', 'dd-mm-yyyy'), '8811046349', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (589434449, 'Kuniran', 'Monument', 178, 'Cece', null, 'Marples', to_date('24-12-1912', 'dd-mm-yyyy'), '3759853665', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (525572772, 'Norfolk County', 'Carioca', 88802, 'Kristian', null, 'Jopling', to_date('23-01-1959', 'dd-mm-yyyy'), '3088074499', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (188827474, 'Xai-Xai', 'Shelley', 825, 'Sascha', null, 'Lages', to_date('05-07-1954', 'dd-mm-yyyy'), '5516653711', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (849041458, 'Vista Hermosa', 'Utah', 13, 'Gusella', null, 'Cheshire', to_date('26-12-2003', 'dd-mm-yyyy'), '6004435469', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (867864383, 'Dolega District', 'Lien', 73440, 'Camila', null, 'Frizzell', to_date('07-06-1991', 'dd-mm-yyyy'), '2892951598', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (742193936, 'Iogach', 'Shasta', 4426, 'Philippa', null, 'Tremmil', to_date('03-09-1948', 'dd-mm-yyyy'), '2358173291', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (698658592, 'Pangascasan', 'Brentwood', 930, 'Leopold', 'Perri', 'Keep', to_date('03-12-2016', 'dd-mm-yyyy'), '5972257058', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (516047372, 'Aimor?©s', 'Scoville', 990, 'Roldan', 'Mohandis', 'Condon', to_date('29-08-1972', 'dd-mm-yyyy'), '4751826450', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (391894701, 'Almenara', 'Kings', 88, 'Greer', null, 'Bestwerthick', to_date('27-09-1973', 'dd-mm-yyyy'), '1968693928', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (873482168, 'Al ?¸¨usayn', 'Mcguire', 85, 'Odele', 'Farr', 'Barritt', to_date('10-01-2006', 'dd-mm-yyyy'), '8427206889', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (446577316, 'Austin', 'Reinke', 77, 'Germain', null, 'Probin', to_date('17-10-1912', 'dd-mm-yyyy'), '5123305933', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (727579251, 'Salaberry-de-Valleyfield', 'Norway Maple', 129, 'Keeley', null, 'Bardwall', to_date('20-01-1977', 'dd-mm-yyyy'), '1151115136', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (881335910, 'Sk?³pelos', 'Hazelcrest', 85231, 'Rodrick', null, 'Hourican', to_date('25-12-1902', 'dd-mm-yyyy'), '6855437742', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (631422732, 'Ti??ina', 'Service', 680, 'Aurelia', null, 'Chrstine', to_date('03-02-1908', 'dd-mm-yyyy'), '2848070499', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (278282479, 'Danao', 'Jackson', 95, 'Clive', 'Loralyn', 'Coneron', to_date('15-10-1980', 'dd-mm-yyyy'), '3316685448', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (226096496, 'Emiliano Zapata', 'Moland', 3863, 'Connie', null, 'Kerswell', to_date('02-06-1992', 'dd-mm-yyyy'), '7002355711', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (691356573, 'Bor?¥s', 'Mallory', 5826, 'Gualterio', 'Lebbie', 'Immer', to_date('13-07-1995', 'dd-mm-yyyy'), '7748305345', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (548762499, 'Kuala Lumpur', 'Lyons', 37378, 'Eugene', null, 'Goley', to_date('18-08-1936', 'dd-mm-yyyy'), '2458295283', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (748377756, 'Zhongjiapu', 'Meadow Vale', 45, 'Dorice', null, 'Valens-Smith', to_date('16-10-1903', 'dd-mm-yyyy'), '6962303515', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (611318797, 'Rennes', 'Lighthouse Bay', 1, 'Rebecca', null, 'Bartle', to_date('06-05-1961', 'dd-mm-yyyy'), '1628254326', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (605404324, 'Silodakon', 'Dexter', 567, 'Bryan', null, 'Antoniewicz', to_date('01-01-1969', 'dd-mm-yyyy'), '9955436639', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (393369854, 'Denver', 'Shelley', 816, 'Abby', null, 'Odby', to_date('04-12-1902', 'dd-mm-yyyy'), '3037041698', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (820784148, 'Wartburg', 'Bluejay', 70246, 'Westleigh', 'Alikee', 'Dottridge', to_date('09-11-1972', 'dd-mm-yyyy'), '5797663679', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (951374912, 'Kandete', 'Express', 859, 'Romeo', 'Demetris', 'Conerding', to_date('01-12-1907', 'dd-mm-yyyy'), '5677484838', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (273447916, 'Navashino', 'Susan', 35316, 'Juliette', 'Grove', 'Flinders', to_date('30-10-1909', 'dd-mm-yyyy'), '3339725096', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (609754976, 'Tocok', 'Karstens', 8, 'Justina', 'Cynthia', 'Jervois', to_date('23-09-1920', 'dd-mm-yyyy'), '1428280023', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (573456079, 'Kosz??cin', 'Katie', 71, 'Dulciana', null, 'Wiffill', to_date('30-09-1993', 'dd-mm-yyyy'), '7631414768', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (201777509, 'Wailiang', 'Gale', 7, 'Dode', null, 'Bevens', to_date('21-01-1975', 'dd-mm-yyyy'), '2959344668', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (820603539, 'Rejoagung', 'Fremont', 8857, 'Hoebart', 'Rafaello', 'Salleir', to_date('27-05-1965', 'dd-mm-yyyy'), '8306462005', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (395733629, 'Jian???ou', 'Michigan', 17, 'Suzette', 'Carlen', 'Le Marchand', to_date('08-05-1941', 'dd-mm-yyyy'), '9986693411', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (383707638, 'Krivyanskaya', 'Kim', 500, 'Alvira', 'John', 'Lyvon', to_date('20-01-1955', 'dd-mm-yyyy'), '3501822767', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (304906681, 'Baishan', 'Artisan', 6, 'Page', 'Bat', 'McKeller', to_date('16-05-1926', 'dd-mm-yyyy'), '9513197122', '903151050', 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (646298659, 'Bichura', 'Golf Course', 2, 'Joete', 'Reade', 'Gulland', to_date('27-04-1907', 'dd-mm-yyyy'), '4572799782', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (280816030, 'Vannes', 'Farmco', 44560, 'Bridgette', 'Ashly', 'Cheers', to_date('05-01-2012', 'dd-mm-yyyy'), '6955857891', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (223260111, 'Punta Alta', 'Coolidge', 96263, 'Matt', null, 'Reeveley', to_date('27-03-1986', 'dd-mm-yyyy'), '8166224563', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (153720925, 'Pacobamba', 'Bartelt', 3, 'Sharla', 'Carver', 'Clemerson', to_date('18-07-1989', 'dd-mm-yyyy'), '5005754079', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (302162387, 'Simo', 'Mitchell', 44686, 'Dulciana', null, 'Demogeot', to_date('14-02-1980', 'dd-mm-yyyy'), '7577931681', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (951573876, 'Piribebuy', 'Northwestern', 944, 'Alexa', null, 'Piquard', to_date('12-08-1993', 'dd-mm-yyyy'), '4032614610', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (318241891, 'Tongtuan', 'Nevada', 17417, 'Grethel', 'Bradford', 'Deport', to_date('20-05-1950', 'dd-mm-yyyy'), '6898483330', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (804231150, 'P???rimorsk???oe', 'Fieldstone', 8054, 'Ashlee', null, 'Jorry', to_date('13-10-1928', 'dd-mm-yyyy'), '4712386645', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (261336295, 'Tongole', 'Sutteridge', 3470, 'Marielle', null, 'Killick', to_date('25-03-2009', 'dd-mm-yyyy'), '3504505713', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (304381596, 'Bacong', 'Old Shore', 59197, 'Filmer', 'Padraic', 'Spencley', to_date('12-02-1989', 'dd-mm-yyyy'), '7525657040', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (780962551, 'Clisson', 'Carpenter', 8, 'Elvina', null, 'Kilborn', to_date('11-10-1920', 'dd-mm-yyyy'), '7052795783', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (724166385, 'Zhaotong', 'Hoepker', 7567, 'Yule', null, 'MacMeanma', to_date('04-02-1970', 'dd-mm-yyyy'), '7385839883', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (183852511, 'Calibishie', 'Monterey', 7, 'Galvan', 'Betteann', 'Bushaway', to_date('12-02-2017', 'dd-mm-yyyy'), '1349088234', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (512043201, 'Klichaw', 'Bluestem', 90, 'Kameko', null, 'Harvie', to_date('06-11-1987', 'dd-mm-yyyy'), '2384032470', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (866555636, 'La Esmeralda', 'Jay', 3, 'Gibb', null, 'Padbery', to_date('20-11-1988', 'dd-mm-yyyy'), '7193995350', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (444199305, 'Potiskum', 'Laurel', 2152, 'Matthias', null, 'Gifford', to_date('21-02-1951', 'dd-mm-yyyy'), '6256990486', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (821338662, 'Timiryazevskiy', 'Hauk', 77, 'June', null, 'Dunsire', to_date('11-06-1986', 'dd-mm-yyyy'), '9262892263', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (904431836, 'Esp?­rito Santo do Pinhal', 'Orin', 715, 'Gayler', 'Ginnifer', 'Maith', to_date('24-12-1963', 'dd-mm-yyyy'), '6756228889', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (928568559, 'Yantian', 'Luster', 15260, 'Symon', null, 'Estick', to_date('05-04-1961', 'dd-mm-yyyy'), '7243110422', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (338869456, 'Krasnyy Luch', 'Tony', 378, 'Monica', 'Matti', 'McDonough', to_date('07-07-1901', 'dd-mm-yyyy'), '5805177612', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (642228310, 'Bull Savanna', 'Bunker Hill', 3, 'Mehetabel', 'Cyrille', 'Hilldrop', to_date('20-07-1925', 'dd-mm-yyyy'), '5746650473', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (548585214, 'Aldeia do Bispo', 'Dahle', 22, 'Beryl', 'Lind', 'Boom', to_date('29-09-1991', 'dd-mm-yyyy'), '8531361554', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (356899357, 'Takahagi', 'Blue Bill Park', 24976, 'Haze', null, 'Hubbuck', to_date('23-04-2018', 'dd-mm-yyyy'), '7552982587', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (420252329, 'Fenggang', 'Sage', 7663, 'Rene', 'Amalee', 'Janic', to_date('11-05-1977', 'dd-mm-yyyy'), '2992138508', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (398718808, 'Dongzhang', 'Melody', 3117, 'Whittaker', null, 'Ballsdon', to_date('06-06-1910', 'dd-mm-yyyy'), '7242750764', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (937108444, 'Insiza', 'Scofield', 8410, 'Ewen', null, 'Dudeney', to_date('28-06-1932', 'dd-mm-yyyy'), '4285723225', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (179652519, 'Khallat ad D?r', 'Starling', 67291, 'Burr', null, 'Veneur', to_date('03-05-1910', 'dd-mm-yyyy'), '9144555255', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (296245026, 'Iwaki', 'Spaight', 1291, 'Sammy', null, 'Lante', to_date('29-04-1986', 'dd-mm-yyyy'), '7817972144', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (531836669, 'Safed', 'Donald', 184, 'Royce', null, 'Bancroft', to_date('24-04-1924', 'dd-mm-yyyy'), '3289011785', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (465768724, 'Binjiang', 'John Wall', 186, 'Selig', 'Karlie', 'Case', to_date('05-05-2010', 'dd-mm-yyyy'), '2637226834', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (161841324, 'Sanguinheira', 'Corscot', 7005, 'Vitia', 'Marigold', 'Feveryear', to_date('11-02-1927', 'dd-mm-yyyy'), '2855988960', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (225647068, 'Drakino', 'Meadow Vale', 29, 'Cordelia', 'Ferris', 'Plume', to_date('20-11-1901', 'dd-mm-yyyy'), '8794843765', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (719561397, 'West Palm Beach', 'Colorado', 32, 'Joseito', 'Karola', 'MacAdam', to_date('25-09-1942', 'dd-mm-yyyy'), '7729600866', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (929556539, 'Karakul???', 'Rutledge', 39993, 'Ansell', 'Gawain', 'Greswell', to_date('15-11-1917', 'dd-mm-yyyy'), '5347424094', null, 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (727571165, 'Trebisht-Mu?§in?«', 'Pennsylvania', 8752, 'Zeb', null, 'Hazelhurst', to_date('04-08-1970', 'dd-mm-yyyy'), '2449480021', null, 'B+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (757894842, 'Chiry?«', 'Buhler', 4, 'Korney', null, 'Umbert', to_date('16-02-1991', 'dd-mm-yyyy'), '4272351807', null, 'O-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (914670312, 'Paupanda Bawah', 'Petterle', 620, 'Annmaria', 'Alford', 'Ebi', to_date('25-06-1960', 'dd-mm-yyyy'), '6243374397', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (791378335, 'Mtubatuba', 'Coolidge', 19804, 'Fredi', null, 'Barten', to_date('26-01-1942', 'dd-mm-yyyy'), '8187322876', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (961070356, 'Huangzhuang', 'Forest Dale', 12533, 'Kincaid', null, 'Gildersleaves', to_date('19-09-2002', 'dd-mm-yyyy'), '7517952060', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (117852093, 'Soanindrariny', 'Packers', 47, 'Constancy', 'Brod', 'Warboy', to_date('01-01-2006', 'dd-mm-yyyy'), '7057358984', null, 'AB+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (701993480, 'Sampangan', 'Bobwhite', 2, 'Radcliffe', 'Eziechiele', 'Lawlor', to_date('17-01-1997', 'dd-mm-yyyy'), '2089587511', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (934166645, 'Al Kittah', 'Thackeray', 1, 'Karine', null, 'Tissington', to_date('14-04-1917', 'dd-mm-yyyy'), '6911020164', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (326871152, 'Okiot', 'Novick', 1, 'Crysta', 'Marius', 'Bettison', to_date('25-01-2006', 'dd-mm-yyyy'), '1622041460', null, 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (353055007, 'Cergy-Pontoise', 'Arrowood', 6530, 'Faith', 'Theodosia', 'Bau', to_date('22-04-1907', 'dd-mm-yyyy'), '6802045691', '159425125', 'O+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (401041429, 'Soufri?¨re', 'Westridge', 50003, 'Joseph', 'Kathye', 'Hinrich', to_date('24-07-2007', 'dd-mm-yyyy'), '6712837314', '527418119', 'B-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (436199647, 'Callao', 'Spaight', 92, 'Cecilla', null, 'Hammill', to_date('02-10-1934', 'dd-mm-yyyy'), '7228732124', null, 'AB-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (691737806, 'Annotto Bay', 'Northridge', 6286, 'Marcellus', 'Fernande', 'Huard', to_date('25-11-1904', 'dd-mm-yyyy'), '6781379316', null, 'A+');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (102153688, 'V?¤ster?¥s', 'Vidon', 5, 'Arlee', null, 'Harroway', to_date('12-12-1952', 'dd-mm-yyyy'), '4175758363', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (934564941, 'Gajrug', 'Sunnyside', 841, 'Ashby', null, 'Montel', to_date('05-06-1996', 'dd-mm-yyyy'), '6183605563', null, 'A-');
insert into PERSON (personid, city, street, house_number, first_name, middle_name, last_name, birth_date, mobile_number, phone_number, blood_type)
values (522949311, 'Zhongxi', 'Manufacturers', 66656, 'Loralie', 'Flore', 'Ren', to_date('29-02-1952', 'dd-mm-yyyy'), '5137107298', null, 'O+');
commit;
prompt 500 records loaded
prompt Loading DONOR...
insert into DONOR (donorid)
values (102153688);
insert into DONOR (donorid)
values (138247594);
insert into DONOR (donorid)
values (143566905);
insert into DONOR (donorid)
values (145942921);
insert into DONOR (donorid)
values (148700848);
insert into DONOR (donorid)
values (158032537);
insert into DONOR (donorid)
values (168696677);
insert into DONOR (donorid)
values (170959333);
insert into DONOR (donorid)
values (173920758);
insert into DONOR (donorid)
values (179571878);
insert into DONOR (donorid)
values (196814159);
insert into DONOR (donorid)
values (200401164);
insert into DONOR (donorid)
values (210081662);
insert into DONOR (donorid)
values (212957323);
insert into DONOR (donorid)
values (225647068);
insert into DONOR (donorid)
values (226692168);
insert into DONOR (donorid)
values (231319916);
insert into DONOR (donorid)
values (233834816);
insert into DONOR (donorid)
values (233952257);
insert into DONOR (donorid)
values (261336295);
insert into DONOR (donorid)
values (262916015);
insert into DONOR (donorid)
values (265300404);
insert into DONOR (donorid)
values (265785605);
insert into DONOR (donorid)
values (278243052);
insert into DONOR (donorid)
values (280816030);
insert into DONOR (donorid)
values (283420111);
insert into DONOR (donorid)
values (285096770);
insert into DONOR (donorid)
values (301200179);
insert into DONOR (donorid)
values (304275848);
insert into DONOR (donorid)
values (304381596);
insert into DONOR (donorid)
values (304906681);
insert into DONOR (donorid)
values (305332524);
insert into DONOR (donorid)
values (306558475);
insert into DONOR (donorid)
values (311928750);
insert into DONOR (donorid)
values (312781171);
insert into DONOR (donorid)
values (313841870);
insert into DONOR (donorid)
values (318241891);
insert into DONOR (donorid)
values (323703121);
insert into DONOR (donorid)
values (324365000);
insert into DONOR (donorid)
values (324787754);
insert into DONOR (donorid)
values (328994752);
insert into DONOR (donorid)
values (334343640);
insert into DONOR (donorid)
values (338869456);
insert into DONOR (donorid)
values (340876652);
insert into DONOR (donorid)
values (341851984);
insert into DONOR (donorid)
values (353055007);
insert into DONOR (donorid)
values (365802363);
insert into DONOR (donorid)
values (375710406);
insert into DONOR (donorid)
values (379428655);
insert into DONOR (donorid)
values (387240899);
insert into DONOR (donorid)
values (387606340);
insert into DONOR (donorid)
values (393369854);
insert into DONOR (donorid)
values (395733629);
insert into DONOR (donorid)
values (397477282);
insert into DONOR (donorid)
values (401578705);
insert into DONOR (donorid)
values (402066926);
insert into DONOR (donorid)
values (405022190);
insert into DONOR (donorid)
values (416102786);
insert into DONOR (donorid)
values (423366489);
insert into DONOR (donorid)
values (424560292);
insert into DONOR (donorid)
values (426700247);
insert into DONOR (donorid)
values (438564639);
insert into DONOR (donorid)
values (444156551);
insert into DONOR (donorid)
values (444199305);
insert into DONOR (donorid)
values (446458474);
insert into DONOR (donorid)
values (463595900);
insert into DONOR (donorid)
values (465187635);
insert into DONOR (donorid)
values (474312378);
insert into DONOR (donorid)
values (475216112);
insert into DONOR (donorid)
values (484402865);
insert into DONOR (donorid)
values (496387722);
insert into DONOR (donorid)
values (501341339);
insert into DONOR (donorid)
values (501670989);
insert into DONOR (donorid)
values (505181727);
insert into DONOR (donorid)
values (511410870);
insert into DONOR (donorid)
values (512043201);
insert into DONOR (donorid)
values (518132465);
insert into DONOR (donorid)
values (518507980);
insert into DONOR (donorid)
values (528244152);
insert into DONOR (donorid)
values (540933518);
insert into DONOR (donorid)
values (541691852);
insert into DONOR (donorid)
values (543635746);
insert into DONOR (donorid)
values (548240914);
insert into DONOR (donorid)
values (551288657);
insert into DONOR (donorid)
values (551779895);
insert into DONOR (donorid)
values (552596021);
insert into DONOR (donorid)
values (555356960);
insert into DONOR (donorid)
values (555738498);
insert into DONOR (donorid)
values (561633907);
insert into DONOR (donorid)
values (578247423);
insert into DONOR (donorid)
values (578436317);
insert into DONOR (donorid)
values (589434449);
insert into DONOR (donorid)
values (594078460);
insert into DONOR (donorid)
values (597650533);
insert into DONOR (donorid)
values (603721548);
insert into DONOR (donorid)
values (604293473);
insert into DONOR (donorid)
values (605404324);
insert into DONOR (donorid)
values (605590162);
insert into DONOR (donorid)
values (618589680);
insert into DONOR (donorid)
values (619458705);
commit;
prompt 100 records committed...
insert into DONOR (donorid)
values (627757230);
insert into DONOR (donorid)
values (627775521);
insert into DONOR (donorid)
values (631422732);
insert into DONOR (donorid)
values (641642968);
insert into DONOR (donorid)
values (642228310);
insert into DONOR (donorid)
values (646298659);
insert into DONOR (donorid)
values (653572183);
insert into DONOR (donorid)
values (656917861);
insert into DONOR (donorid)
values (672697720);
insert into DONOR (donorid)
values (690317110);
insert into DONOR (donorid)
values (691356573);
insert into DONOR (donorid)
values (696751439);
insert into DONOR (donorid)
values (713778816);
insert into DONOR (donorid)
values (714026684);
insert into DONOR (donorid)
values (717451140);
insert into DONOR (donorid)
values (719561397);
insert into DONOR (donorid)
values (724060404);
insert into DONOR (donorid)
values (726194140);
insert into DONOR (donorid)
values (727579251);
insert into DONOR (donorid)
values (728227108);
insert into DONOR (donorid)
values (730787849);
insert into DONOR (donorid)
values (739383154);
insert into DONOR (donorid)
values (742193936);
insert into DONOR (donorid)
values (748377756);
insert into DONOR (donorid)
values (751194222);
insert into DONOR (donorid)
values (760780439);
insert into DONOR (donorid)
values (776494919);
insert into DONOR (donorid)
values (792320978);
insert into DONOR (donorid)
values (794324629);
insert into DONOR (donorid)
values (794813117);
insert into DONOR (donorid)
values (796571213);
insert into DONOR (donorid)
values (814306301);
insert into DONOR (donorid)
values (816622585);
insert into DONOR (donorid)
values (817032269);
insert into DONOR (donorid)
values (820603539);
insert into DONOR (donorid)
values (825353221);
insert into DONOR (donorid)
values (838436161);
insert into DONOR (donorid)
values (840057828);
insert into DONOR (donorid)
values (849041458);
insert into DONOR (donorid)
values (853055600);
insert into DONOR (donorid)
values (860197318);
insert into DONOR (donorid)
values (866555636);
insert into DONOR (donorid)
values (867864383);
insert into DONOR (donorid)
values (872551637);
insert into DONOR (donorid)
values (873454319);
insert into DONOR (donorid)
values (878535168);
insert into DONOR (donorid)
values (886866213);
insert into DONOR (donorid)
values (893364626);
insert into DONOR (donorid)
values (893702772);
insert into DONOR (donorid)
values (912529580);
insert into DONOR (donorid)
values (914576665);
insert into DONOR (donorid)
values (928568559);
insert into DONOR (donorid)
values (928805231);
insert into DONOR (donorid)
values (929556539);
insert into DONOR (donorid)
values (934564941);
insert into DONOR (donorid)
values (937108444);
insert into DONOR (donorid)
values (943589797);
insert into DONOR (donorid)
values (945720118);
insert into DONOR (donorid)
values (947947426);
insert into DONOR (donorid)
values (950157644);
insert into DONOR (donorid)
values (951374912);
insert into DONOR (donorid)
values (958051598);
insert into DONOR (donorid)
values (963542957);
insert into DONOR (donorid)
values (969082635);
insert into DONOR (donorid)
values (972747875);
insert into DONOR (donorid)
values (984778784);
insert into DONOR (donorid)
values (986960506);
insert into DONOR (donorid)
values (987111092);
commit;
prompt 168 records loaded
prompt Loading RECIPIENT...
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 420252329);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 399129577);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 170959333);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 354152108);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 526164452);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 698658592);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 754051609);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 954882441);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 647381123);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 693105190);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 438564639);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 325810550);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 814306301);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 152773161);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 552596021);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 122959836);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 867982944);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 867864383);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 255089715);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 929988807);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 913589022);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 272459492);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 934564941);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 611583858);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 493018730);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 185457198);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 124377854);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 860926589);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 952248539);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 158032537);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 262916015);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 213518716);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 748377756);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 313841870);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 561633907);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 595308352);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 928513262);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 409299064);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 192612673);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 191265592);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 353055007);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 933449330);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 649887264);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 150997773);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 966174596);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 950157644);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 768822411);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 531539282);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 795610284);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 886866213);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 911893601);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 243650368);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 158071510);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 816622585);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 660716587);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 270750595);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 858121244);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 666261946);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 424560292);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 762978933);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 795377187);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 200123419);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 200401164);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 726157701);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 991826648);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 630097210);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 907725857);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 603721548);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 967904734);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 541691852);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 604293473);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 426700247);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 432395857);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 713778816);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 323221906);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 262773968);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 269280194);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 423798272);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 327974025);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 191185593);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 749526793);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 786485476);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 555356960);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 590262827);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 745191532);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 706859403);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 968183389);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 753403153);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 479269110);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 138223947);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 951374912);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 879345248);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 701993480);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 692585044);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 551779895);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 311928750);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 370921265);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 395733629);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 398718808);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 912529580);
commit;
prompt 100 records committed...
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 407931490);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 987111092);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 677241235);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 387828012);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 597650533);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 306558475);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 821127832);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 997486433);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 682818610);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 219689648);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 225647068);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 528939152);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 471518451);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 446577316);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 387606340);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 268808294);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 969082635);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 589383054);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 133820490);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 690434650);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 518507980);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 926734748);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 840057828);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 257056491);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 165455068);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 304906681);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 966390835);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 530686073);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 943589797);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 534368732);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 187859985);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 573456079);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 402460421);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 173920758);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 516047372);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 719561397);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 739383154);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 401578705);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 127152552);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 189129587);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 412929466);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 838336343);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 853055600);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 602343678);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 727579251);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 746160417);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 792320978);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 548585214);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 528244152);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 791378335);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 864649706);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 327911424);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 720882049);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 820784148);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 179571878);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 280816030);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 554523321);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 726194140);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 345400819);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 718723162);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 463595900);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 752193505);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 296245026);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 283420111);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 229756011);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 512043201);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 518132465);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 356899357);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 219977600);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 611318797);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 692754198);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 174936847);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 728336420);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 569513497);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 800904314);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 631422732);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 984894238);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 604858769);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 233952257);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 860197318);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 338869456);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 646298659);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 318447549);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 226096496);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 233834816);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 750134051);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 632483753);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 302162387);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 364489062);
insert into RECIPIENT (medical_condition, recipientid)
values ('stable', 543760376);
insert into RECIPIENT (medical_condition, recipientid)
values ('Mortal', 391894701);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 377351301);
insert into RECIPIENT (medical_condition, recipientid)
values ('Non-Critical', 825353221);
insert into RECIPIENT (medical_condition, recipientid)
values ('Critical', 460196733);
commit;
prompt 194 records loaded
prompt Loading BLOOD_UNIT...
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-03-2023', 'dd-mm-yyyy'), to_date('30-03-2026', 'dd-mm-yyyy'), 3, 1, to_date('08-06-2024', 'dd-mm-yyyy'), 878535168, 543760376, 'Daugherty-Sauer', 17);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-10-2022', 'dd-mm-yyyy'), to_date('11-12-2025', 'dd-mm-yyyy'), 2, 2, to_date('19-12-2023', 'dd-mm-yyyy'), 984778784, 138223947, 'Kozey-Davis', 6);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-01-2022', 'dd-mm-yyyy'), to_date('23-02-2026', 'dd-mm-yyyy'), 3, 3, to_date('03-12-2023', 'dd-mm-yyyy'), 853055600, 243650368, 'Shields-Effertz', 15);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-02-2023', 'dd-mm-yyyy'), to_date('27-01-2026', 'dd-mm-yyyy'), 3, 4, to_date('03-02-2024', 'dd-mm-yyyy'), 148700848, 338869456, 'Jakubowski-Hackett', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-02-2023', 'dd-mm-yyyy'), to_date('21-04-2026', 'dd-mm-yyyy'), 3, 6, to_date('28-03-2024', 'dd-mm-yyyy'), 501670989, 174936847, 'Ondricka-Farrell', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-08-2023', 'dd-mm-yyyy'), to_date('07-03-2026', 'dd-mm-yyyy'), 1, 7, to_date('31-12-2023', 'dd-mm-yyyy'), 179571878, 280816030, 'Zboncak and Sons', 20);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('16-07-2022', 'dd-mm-yyyy'), to_date('01-02-2026', 'dd-mm-yyyy'), 2, 8, to_date('17-02-2024', 'dd-mm-yyyy'), 210081662, 179571878, 'Rosenbaum-Predovic', 42);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-02-2022', 'dd-mm-yyyy'), to_date('17-02-2026', 'dd-mm-yyyy'), 1, 9, to_date('08-01-2024', 'dd-mm-yyyy'), 872551637, 943589797, 'Hermiston-Nader', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-06-2022', 'dd-mm-yyyy'), to_date('29-12-2025', 'dd-mm-yyyy'), 2, 10, to_date('28-04-2024', 'dd-mm-yyyy'), 958051598, 420252329, 'Ledner-Jaskolski', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-05-2023', 'dd-mm-yyyy'), to_date('30-04-2026', 'dd-mm-yyyy'), 2, 11, to_date('05-01-2024', 'dd-mm-yyyy'), 866555636, 720882049, 'Rodriguez-Harris', 39);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-12-2022', 'dd-mm-yyyy'), to_date('05-12-2025', 'dd-mm-yyyy'), 1, 13, to_date('10-01-2024', 'dd-mm-yyyy'), 496387722, 213518716, 'Upton and Sons', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-10-2022', 'dd-mm-yyyy'), to_date('08-04-2026', 'dd-mm-yyyy'), 2, 15, to_date('22-01-2024', 'dd-mm-yyyy'), 353055007, 420252329, 'Russel Inc', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-09-2023', 'dd-mm-yyyy'), to_date('01-02-2026', 'dd-mm-yyyy'), 2, 16, to_date('02-01-2024', 'dd-mm-yyyy'), 551288657, 257056491, 'Koch-Olson', 27);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('19-11-2022', 'dd-mm-yyyy'), to_date('02-12-2025', 'dd-mm-yyyy'), 3, 18, to_date('07-01-2024', 'dd-mm-yyyy'), 867864383, 122959836, 'McGlynn-Kling', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-08-2023', 'dd-mm-yyyy'), to_date('12-01-2026', 'dd-mm-yyyy'), 3, 20, to_date('03-04-2024', 'dd-mm-yyyy'), 690317110, 170959333, 'Bergstrom-Dach', 47);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-04-2022', 'dd-mm-yyyy'), to_date('10-04-2026', 'dd-mm-yyyy'), 2, 22, to_date('11-12-2023', 'dd-mm-yyyy'), 825353221, 185457198, 'Dietrich Group', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-03-2023', 'dd-mm-yyyy'), to_date('12-04-2026', 'dd-mm-yyyy'), 3, 23, to_date('05-03-2024', 'dd-mm-yyyy'), 518132465, 138223947, 'Leffler Inc', 50);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-09-2023', 'dd-mm-yyyy'), to_date('22-12-2025', 'dd-mm-yyyy'), 3, 24, to_date('18-03-2024', 'dd-mm-yyyy'), 265785605, 364489062, 'Schmidt-Kuhlman', 46);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-01-2023', 'dd-mm-yyyy'), to_date('14-03-2026', 'dd-mm-yyyy'), 1, 26, to_date('27-04-2024', 'dd-mm-yyyy'), 168696677, 867982944, 'Yost-Stanton', 16);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('01-03-2022', 'dd-mm-yyyy'), to_date('05-02-2026', 'dd-mm-yyyy'), 3, 27, to_date('15-12-2023', 'dd-mm-yyyy'), 552596021, 283420111, 'Shields Inc', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-11-2022', 'dd-mm-yyyy'), to_date('13-03-2026', 'dd-mm-yyyy'), 1, 28, to_date('23-02-2024', 'dd-mm-yyyy'), 304381596, 356899357, 'Daugherty Group', 9);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-10-2022', 'dd-mm-yyyy'), to_date('20-01-2026', 'dd-mm-yyyy'), 2, 29, to_date('08-02-2024', 'dd-mm-yyyy'), 578436317, 257056491, 'Berge Group', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-05-2023', 'dd-mm-yyyy'), to_date('15-03-2026', 'dd-mm-yyyy'), 2, 33, to_date('10-02-2024', 'dd-mm-yyyy'), 631422732, 225647068, 'Satterfield-Kunde', 37);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-05-2022', 'dd-mm-yyyy'), to_date('07-03-2026', 'dd-mm-yyyy'), 2, 34, to_date('16-02-2024', 'dd-mm-yyyy'), 304275848, 229756011, 'Ondricka-Farrell', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-11-2023', 'dd-mm-yyyy'), to_date('20-04-2026', 'dd-mm-yyyy'), 3, 36, to_date('14-12-2023', 'dd-mm-yyyy'), 474312378, 395733629, 'Haag-Bahringer', 14);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-07-2023', 'dd-mm-yyyy'), to_date('17-12-2025', 'dd-mm-yyyy'), 3, 37, to_date('05-04-2024', 'dd-mm-yyyy'), 912529580, 825353221, 'Romaguera LLC', 13);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-05-2022', 'dd-mm-yyyy'), to_date('28-12-2025', 'dd-mm-yyyy'), 3, 38, to_date('05-12-2023', 'dd-mm-yyyy'), 387606340, 531539282, 'Nicolas Inc', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-05-2022', 'dd-mm-yyyy'), to_date('17-04-2026', 'dd-mm-yyyy'), 1, 39, to_date('26-03-2024', 'dd-mm-yyyy'), 726194140, 432395857, 'Schinner Inc', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-06-2022', 'dd-mm-yyyy'), to_date('01-03-2026', 'dd-mm-yyyy'), 3, 41, to_date('15-02-2024', 'dd-mm-yyyy'), 233834816, 233952257, 'Connelly-Greenfelder', 34);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-02-2023', 'dd-mm-yyyy'), to_date('30-12-2025', 'dd-mm-yyyy'), 2, 43, to_date('18-02-2024', 'dd-mm-yyyy'), 324787754, 387828012, 'Kautzer Group', 13);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-05-2023', 'dd-mm-yyyy'), to_date('10-01-2026', 'dd-mm-yyyy'), 2, 44, to_date('08-12-2023', 'dd-mm-yyyy'), 540933518, 243650368, 'Bins-Hand', 1);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-02-2023', 'dd-mm-yyyy'), to_date('22-02-2026', 'dd-mm-yyyy'), 1, 45, to_date('02-01-2024', 'dd-mm-yyyy'), 820603539, 262916015, 'Jenkins-Stiedemann', 9);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-01-2023', 'dd-mm-yyyy'), to_date('17-12-2025', 'dd-mm-yyyy'), 3, 46, to_date('14-01-2024', 'dd-mm-yyyy'), 672697720, 541691852, 'Dooley Group', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('11-06-2023', 'dd-mm-yyyy'), to_date('31-03-2026', 'dd-mm-yyyy'), 2, 47, to_date('07-04-2024', 'dd-mm-yyyy'), 853055600, 569513497, 'Padberg Group', 43);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-04-2022', 'dd-mm-yyyy'), to_date('12-02-2026', 'dd-mm-yyyy'), 3, 48, to_date('21-04-2024', 'dd-mm-yyyy'), 853055600, 364489062, 'Haag-Bahringer', 20);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-02-2023', 'dd-mm-yyyy'), to_date('27-03-2026', 'dd-mm-yyyy'), 2, 49, to_date('09-02-2024', 'dd-mm-yyyy'), 405022190, 191265592, 'Hahn Group', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-04-2022', 'dd-mm-yyyy'), to_date('07-02-2026', 'dd-mm-yyyy'), 2, 51, to_date('11-04-2024', 'dd-mm-yyyy'), 987111092, 138223947, 'Schimmel-Dooley', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-02-2022', 'dd-mm-yyyy'), to_date('23-12-2025', 'dd-mm-yyyy'), 2, 52, to_date('22-01-2024', 'dd-mm-yyyy'), 873454319, 138223947, 'Stamm-Ebert', 24);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-10-2023', 'dd-mm-yyyy'), to_date('03-02-2026', 'dd-mm-yyyy'), 2, 53, to_date('17-02-2024', 'dd-mm-yyyy'), 914576665, 323221906, 'Upton LLC', 36);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-08-2022', 'dd-mm-yyyy'), to_date('13-01-2026', 'dd-mm-yyyy'), 1, 55, to_date('13-02-2024', 'dd-mm-yyyy'), 233952257, 984894238, 'Abernathy-Kub', 19);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-12-2022', 'dd-mm-yyyy'), to_date('15-12-2025', 'dd-mm-yyyy'), 2, 57, to_date('31-01-2024', 'dd-mm-yyyy'), 551779895, 219689648, 'Padberg Group', 37);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-10-2023', 'dd-mm-yyyy'), to_date('02-04-2026', 'dd-mm-yyyy'), 1, 59, to_date('26-01-2024', 'dd-mm-yyyy'), 423366489, 726194140, 'Rolfson LLC', 14);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-07-2023', 'dd-mm-yyyy'), to_date('17-01-2026', 'dd-mm-yyyy'), 3, 60, to_date('16-12-2023', 'dd-mm-yyyy'), 365802363, 463595900, 'Weber and Sons', 44);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-01-2022', 'dd-mm-yyyy'), to_date('18-03-2026', 'dd-mm-yyyy'), 3, 62, to_date('26-12-2023', 'dd-mm-yyyy'), 416102786, 226096496, 'Weber and Sons', 39);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-04-2023', 'dd-mm-yyyy'), to_date('21-04-2026', 'dd-mm-yyyy'), 2, 63, to_date('21-04-2024', 'dd-mm-yyyy'), 730787849, 649887264, 'Mann-Schoen', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-10-2022', 'dd-mm-yyyy'), to_date('17-01-2026', 'dd-mm-yyyy'), 1, 64, to_date('14-01-2024', 'dd-mm-yyyy'), 653572183, 754051609, 'O''Hara Group', 43);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-03-2022', 'dd-mm-yyyy'), to_date('16-03-2026', 'dd-mm-yyyy'), 2, 65, to_date('03-03-2024', 'dd-mm-yyyy'), 233834816, 660716587, 'Marquardt-Roob', 24);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-05-2023', 'dd-mm-yyyy'), to_date('28-12-2025', 'dd-mm-yyyy'), 3, 66, to_date('20-04-2024', 'dd-mm-yyyy'), 605404324, 631422732, 'Kshlerin LLC', 39);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-08-2022', 'dd-mm-yyyy'), to_date('24-04-2026', 'dd-mm-yyyy'), 2, 67, to_date('27-01-2024', 'dd-mm-yyyy'), 179571878, 364489062, 'Stamm-Ebert', 6);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('19-11-2023', 'dd-mm-yyyy'), to_date('22-03-2026', 'dd-mm-yyyy'), 1, 68, to_date('17-03-2024', 'dd-mm-yyyy'), 656917861, 173920758, 'Thiel LLC', 39);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('16-04-2022', 'dd-mm-yyyy'), to_date('21-03-2026', 'dd-mm-yyyy'), 1, 69, to_date('04-04-2024', 'dd-mm-yyyy'), 375710406, 928513262, 'Bruen-Moore', 13);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-06-2023', 'dd-mm-yyyy'), to_date('24-02-2026', 'dd-mm-yyyy'), 2, 71, to_date('10-03-2024', 'dd-mm-yyyy'), 170959333, 541691852, 'Miller LLC', 7);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-07-2022', 'dd-mm-yyyy'), to_date('09-12-2025', 'dd-mm-yyyy'), 3, 72, to_date('20-04-2024', 'dd-mm-yyyy'), 226692168, 786485476, 'Marks Group', 27);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-03-2022', 'dd-mm-yyyy'), to_date('06-02-2026', 'dd-mm-yyyy'), 2, 74, to_date('18-12-2023', 'dd-mm-yyyy'), 727579251, 387606340, 'Wintheiser Inc', 1);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-07-2023', 'dd-mm-yyyy'), to_date('07-03-2026', 'dd-mm-yyyy'), 3, 76, to_date('02-04-2024', 'dd-mm-yyyy'), 283420111, 968183389, 'Hoppe-Bahringer', 48);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-02-2023', 'dd-mm-yyyy'), to_date('20-04-2026', 'dd-mm-yyyy'), 3, 77, to_date('19-04-2024', 'dd-mm-yyyy'), 148700848, 795377187, 'Legros and Sons', 31);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-06-2023', 'dd-mm-yyyy'), to_date('07-01-2026', 'dd-mm-yyyy'), 3, 79, to_date('31-01-2024', 'dd-mm-yyyy'), 816622585, 951374912, 'Padberg Group', 43);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-10-2022', 'dd-mm-yyyy'), to_date('22-03-2026', 'dd-mm-yyyy'), 3, 80, to_date('11-02-2024', 'dd-mm-yyyy'), 387606340, 426700247, 'Thiel LLC', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-04-2023', 'dd-mm-yyyy'), to_date('13-12-2025', 'dd-mm-yyyy'), 2, 85, to_date('19-12-2023', 'dd-mm-yyyy'), 893364626, 968183389, 'Yost-Stanton', 18);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-04-2022', 'dd-mm-yyyy'), to_date('15-01-2026', 'dd-mm-yyyy'), 1, 87, to_date('24-12-2023', 'dd-mm-yyyy'), 860197318, 604293473, 'Hansen-Feeney', 46);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-08-2023', 'dd-mm-yyyy'), to_date('23-04-2026', 'dd-mm-yyyy'), 2, 88, to_date('21-04-2024', 'dd-mm-yyyy'), 387240899, 966390835, 'Greenfelder and Sons', 16);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-02-2023', 'dd-mm-yyyy'), to_date('11-01-2026', 'dd-mm-yyyy'), 3, 89, to_date('28-02-2024', 'dd-mm-yyyy'), 148700848, 718723162, 'Torp-Thiel', 28);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-01-2022', 'dd-mm-yyyy'), to_date('21-12-2025', 'dd-mm-yyyy'), 2, 90, to_date('02-03-2024', 'dd-mm-yyyy'), 405022190, 867982944, 'Mueller and Sons', 15);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-03-2022', 'dd-mm-yyyy'), to_date('06-04-2026', 'dd-mm-yyyy'), 3, 91, to_date('01-04-2024', 'dd-mm-yyyy'), 210081662, 991826648, 'Spinka-Schmitt', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('16-01-2023', 'dd-mm-yyyy'), to_date('06-12-2025', 'dd-mm-yyyy'), 3, 92, to_date('17-01-2024', 'dd-mm-yyyy'), 760780439, 791378335, 'Hoppe-Bahringer', 26);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-06-2022', 'dd-mm-yyyy'), to_date('12-03-2026', 'dd-mm-yyyy'), 1, 94, to_date('10-03-2024', 'dd-mm-yyyy'), 817032269, 327911424, 'Nolan-Raynor', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-03-2023', 'dd-mm-yyyy'), to_date('14-01-2026', 'dd-mm-yyyy'), 3, 95, to_date('20-12-2023', 'dd-mm-yyyy'), 444156551, 272459492, 'Ledner-Jaskolski', 8);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-04-2023', 'dd-mm-yyyy'), to_date('22-12-2025', 'dd-mm-yyyy'), 3, 98, to_date('17-01-2024', 'dd-mm-yyyy'), 878535168, 820784148, 'Sipes-Terry', 1);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-05-2022', 'dd-mm-yyyy'), to_date('15-12-2025', 'dd-mm-yyyy'), 2, 99, to_date('06-02-2024', 'dd-mm-yyyy'), 304275848, 911893601, 'Kuhn-Kub', 26);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-04-2023', 'dd-mm-yyyy'), to_date('18-02-2026', 'dd-mm-yyyy'), 2, 101, to_date('28-03-2024', 'dd-mm-yyyy'), 578247423, 666261946, 'Dietrich Group', 26);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-04-2022', 'dd-mm-yyyy'), to_date('06-02-2026', 'dd-mm-yyyy'), 1, 102, to_date('15-04-2024', 'dd-mm-yyyy'), 226692168, 555356960, 'Rodriguez-Harris', 18);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-05-2022', 'dd-mm-yyyy'), to_date('08-12-2025', 'dd-mm-yyyy'), 2, 103, to_date('04-04-2024', 'dd-mm-yyyy'), 838436161, 929988807, 'Quitzon Inc', 37);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-02-2023', 'dd-mm-yyyy'), to_date('09-03-2026', 'dd-mm-yyyy'), 2, 104, to_date('22-04-2024', 'dd-mm-yyyy'), 324787754, 739383154, 'Torphy and Sons', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-07-2023', 'dd-mm-yyyy'), to_date('10-12-2025', 'dd-mm-yyyy'), 2, 105, to_date('02-03-2024', 'dd-mm-yyyy'), 853055600, 682818610, 'Walker-Rodriguez', 16);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-06-2022', 'dd-mm-yyyy'), to_date('28-01-2026', 'dd-mm-yyyy'), 3, 106, to_date('03-12-2023', 'dd-mm-yyyy'), 397477282, 127152552, 'McDermott-Howe', 34);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-07-2022', 'dd-mm-yyyy'), to_date('25-01-2026', 'dd-mm-yyyy'), 3, 107, to_date('21-12-2023', 'dd-mm-yyyy'), 444156551, 327911424, 'Yost-Stanton', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-02-2022', 'dd-mm-yyyy'), to_date('16-01-2026', 'dd-mm-yyyy'), 2, 108, to_date('17-03-2024', 'dd-mm-yyyy'), 618589680, 754051609, 'Satterfield-Kunde', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('19-04-2022', 'dd-mm-yyyy'), to_date('27-02-2026', 'dd-mm-yyyy'), 2, 109, to_date('19-01-2024', 'dd-mm-yyyy'), 825353221, 424560292, 'Bruen-Moore', 15);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-10-2023', 'dd-mm-yyyy'), to_date('07-03-2026', 'dd-mm-yyyy'), 2, 110, to_date('17-02-2024', 'dd-mm-yyyy'), 739383154, 631422732, 'Padberg Group', 35);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-08-2022', 'dd-mm-yyyy'), to_date('27-02-2026', 'dd-mm-yyyy'), 2, 112, to_date('26-03-2024', 'dd-mm-yyyy'), 605404324, 886866213, 'Ankunding and Sons', 10);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-10-2023', 'dd-mm-yyyy'), to_date('29-03-2026', 'dd-mm-yyyy'), 1, 114, to_date('20-02-2024', 'dd-mm-yyyy'), 840057828, 243650368, 'Hermann Group', 11);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-12-2022', 'dd-mm-yyyy'), to_date('24-03-2026', 'dd-mm-yyyy'), 3, 116, to_date('04-03-2024', 'dd-mm-yyyy'), 656917861, 604858769, 'Shields-Beatty', 41);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-10-2022', 'dd-mm-yyyy'), to_date('20-12-2025', 'dd-mm-yyyy'), 1, 117, to_date('24-12-2023', 'dd-mm-yyyy'), 212957323, 158032537, 'Gleason Group', 11);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-09-2022', 'dd-mm-yyyy'), to_date('25-04-2026', 'dd-mm-yyyy'), 1, 120, to_date('10-12-2023', 'dd-mm-yyyy'), 552596021, 967904734, 'Tromp and Sons', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-05-2022', 'dd-mm-yyyy'), to_date('14-02-2026', 'dd-mm-yyyy'), 3, 122, to_date('24-04-2024', 'dd-mm-yyyy'), 776494919, 262773968, 'Koss-Reynolds', 44);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('16-05-2022', 'dd-mm-yyyy'), to_date('26-04-2026', 'dd-mm-yyyy'), 1, 123, to_date('23-01-2024', 'dd-mm-yyyy'), 474312378, 569513497, 'O''Reilly Group', 43);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-07-2023', 'dd-mm-yyyy'), to_date('24-12-2025', 'dd-mm-yyyy'), 2, 125, to_date('07-02-2024', 'dd-mm-yyyy'), 324365000, 867982944, 'Haley-Larson', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-03-2023', 'dd-mm-yyyy'), to_date('13-03-2026', 'dd-mm-yyyy'), 2, 126, to_date('21-04-2024', 'dd-mm-yyyy'), 328994752, 701993480, 'Gusikowski and Sons', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-06-2023', 'dd-mm-yyyy'), to_date('02-04-2026', 'dd-mm-yyyy'), 3, 127, to_date('31-03-2024', 'dd-mm-yyyy'), 512043201, 280816030, 'Kunde Group', 17);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-04-2022', 'dd-mm-yyyy'), to_date('05-03-2026', 'dd-mm-yyyy'), 1, 128, to_date('17-12-2023', 'dd-mm-yyyy'), 438564639, 632483753, 'Ortiz Group', 39);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('16-10-2023', 'dd-mm-yyyy'), to_date('01-12-2025', 'dd-mm-yyyy'), 3, 129, to_date('18-12-2023', 'dd-mm-yyyy'), 465187635, 867864383, 'Reichert Group', 36);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-04-2023', 'dd-mm-yyyy'), to_date('23-04-2026', 'dd-mm-yyyy'), 2, 130, to_date('01-03-2024', 'dd-mm-yyyy'), 760780439, 313841870, 'Waelchi-Rath', 7);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-10-2022', 'dd-mm-yyyy'), to_date('05-02-2026', 'dd-mm-yyyy'), 1, 131, to_date('22-01-2024', 'dd-mm-yyyy'), 597650533, 187859985, 'Kilback Group', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-11-2022', 'dd-mm-yyyy'), to_date('08-04-2026', 'dd-mm-yyyy'), 2, 132, to_date('29-02-2024', 'dd-mm-yyyy'), 541691852, 370921265, 'Jacobson LLC', 1);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-02-2022', 'dd-mm-yyyy'), to_date('20-04-2026', 'dd-mm-yyyy'), 3, 133, to_date('05-03-2024', 'dd-mm-yyyy'), 424560292, 446577316, 'Shields-Effertz', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-07-2022', 'dd-mm-yyyy'), to_date('31-03-2026', 'dd-mm-yyyy'), 2, 135, to_date('31-12-2023', 'dd-mm-yyyy'), 696751439, 219977600, 'Jacobi and Sons', 20);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-07-2022', 'dd-mm-yyyy'), to_date('13-03-2026', 'dd-mm-yyyy'), 1, 136, to_date('01-02-2024', 'dd-mm-yyyy'), 728227108, 690434650, 'Haley-Larson', 44);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-02-2023', 'dd-mm-yyyy'), to_date('19-01-2026', 'dd-mm-yyyy'), 1, 137, to_date('21-01-2024', 'dd-mm-yyyy'), 717451140, 768822411, 'Hahn-Kreiger', 47);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('19-12-2022', 'dd-mm-yyyy'), to_date('01-01-2026', 'dd-mm-yyyy'), 3, 139, to_date('19-01-2024', 'dd-mm-yyyy'), 543635746, 526164452, 'Walter Group', 31);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-07-2023', 'dd-mm-yyyy'), to_date('13-12-2025', 'dd-mm-yyyy'), 2, 142, to_date('21-02-2024', 'dd-mm-yyyy'), 501341339, 933449330, 'Harvey and Sons', 24);
commit;
prompt 100 records committed...
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-10-2022', 'dd-mm-yyyy'), to_date('28-01-2026', 'dd-mm-yyyy'), 1, 143, to_date('11-02-2024', 'dd-mm-yyyy'), 641642968, 387606340, 'Leffler Inc', 9);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('01-02-2023', 'dd-mm-yyyy'), to_date('11-02-2026', 'dd-mm-yyyy'), 3, 144, to_date('22-03-2024', 'dd-mm-yyyy'), 438564639, 283420111, 'Koelpin Inc', 50);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('11-10-2022', 'dd-mm-yyyy'), to_date('21-04-2026', 'dd-mm-yyyy'), 2, 146, to_date('20-12-2023', 'dd-mm-yyyy'), 748377756, 541691852, 'Lindgren-Renner', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-04-2023', 'dd-mm-yyyy'), to_date('16-04-2026', 'dd-mm-yyyy'), 2, 151, to_date('05-03-2024', 'dd-mm-yyyy'), 318241891, 402460421, 'Reichert Group', 13);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-10-2023', 'dd-mm-yyyy'), to_date('06-03-2026', 'dd-mm-yyyy'), 1, 155, to_date('21-04-2024', 'dd-mm-yyyy'), 972747875, 748377756, 'Rohan Group', 24);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('11-07-2023', 'dd-mm-yyyy'), to_date('09-02-2026', 'dd-mm-yyyy'), 1, 156, to_date('11-02-2024', 'dd-mm-yyyy'), 627757230, 138223947, 'Huel, O''Kon and Hand', 19);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-10-2023', 'dd-mm-yyyy'), to_date('09-12-2025', 'dd-mm-yyyy'), 3, 157, to_date('31-01-2024', 'dd-mm-yyyy'), 416102786, 226096496, 'Ritchie-Wiegand', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-08-2023', 'dd-mm-yyyy'), to_date('26-12-2025', 'dd-mm-yyyy'), 2, 158, to_date('22-04-2024', 'dd-mm-yyyy'), 444156551, 795377187, 'Lockman-Flatley', 48);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-05-2023', 'dd-mm-yyyy'), to_date('18-04-2026', 'dd-mm-yyyy'), 1, 159, to_date('12-04-2024', 'dd-mm-yyyy'), 656917861, 174936847, 'Lemke-Stark', 26);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-01-2023', 'dd-mm-yyyy'), to_date('18-12-2025', 'dd-mm-yyyy'), 1, 545, to_date('19-03-2024', 'dd-mm-yyyy'), 200401164, 997486433, 'Rogahn and Sons', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-12-2022', 'dd-mm-yyyy'), to_date('31-12-2025', 'dd-mm-yyyy'), 3, 546, to_date('15-03-2024', 'dd-mm-yyyy'), 794324629, 706859403, 'Senger-Connelly', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-06-2023', 'dd-mm-yyyy'), to_date('30-12-2025', 'dd-mm-yyyy'), 2, 549, to_date('22-02-2024', 'dd-mm-yyyy'), 605404324, 752193505, 'Pacocha-Abshire', 14);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-09-2022', 'dd-mm-yyyy'), to_date('17-03-2026', 'dd-mm-yyyy'), 3, 550, to_date('11-03-2024', 'dd-mm-yyyy'), 474312378, 471518451, 'Kunde-Metz', 29);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-03-2023', 'dd-mm-yyyy'), to_date('23-03-2026', 'dd-mm-yyyy'), 1, 551, to_date('09-02-2024', 'dd-mm-yyyy'), 816622585, 170959333, 'Legros-Swaniawski', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-04-2023', 'dd-mm-yyyy'), to_date('16-12-2025', 'dd-mm-yyyy'), 1, 553, to_date('09-02-2024', 'dd-mm-yyyy'), 951374912, 174936847, 'Kilback-Bosco', 11);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-11-2023', 'dd-mm-yyyy'), to_date('14-02-2026', 'dd-mm-yyyy'), 3, 555, to_date('27-02-2024', 'dd-mm-yyyy'), 280816030, 762978933, 'Morar Inc', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-08-2023', 'dd-mm-yyyy'), to_date('27-03-2026', 'dd-mm-yyyy'), 3, 558, to_date('23-04-2024', 'dd-mm-yyyy'), 225647068, 719561397, 'Ebert Inc', 31);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-12-2022', 'dd-mm-yyyy'), to_date('29-12-2025', 'dd-mm-yyyy'), 2, 560, to_date('30-01-2024', 'dd-mm-yyyy'), 943589797, 693105190, 'Bruen-Moore', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-07-2023', 'dd-mm-yyyy'), to_date('10-03-2026', 'dd-mm-yyyy'), 3, 561, to_date('06-12-2023', 'dd-mm-yyyy'), 324787754, 518507980, 'Hessel Inc', 31);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-02-2023', 'dd-mm-yyyy'), to_date('21-02-2026', 'dd-mm-yyyy'), 3, 562, to_date('24-04-2024', 'dd-mm-yyyy'), 444156551, 173920758, 'Satterfield-Kunde', 15);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-10-2022', 'dd-mm-yyyy'), to_date('20-12-2025', 'dd-mm-yyyy'), 3, 564, to_date('12-04-2024', 'dd-mm-yyyy'), 261336295, 745191532, 'DuBuque-Hansen', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-06-2023', 'dd-mm-yyyy'), to_date('05-03-2026', 'dd-mm-yyyy'), 3, 566, to_date('20-12-2023', 'dd-mm-yyyy'), 474312378, 753403153, 'Heller-Price', 35);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-07-2022', 'dd-mm-yyyy'), to_date('12-01-2026', 'dd-mm-yyyy'), 3, 568, to_date('06-12-2023', 'dd-mm-yyyy'), 393369854, 768822411, 'O''Kon Inc', 44);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-04-2023', 'dd-mm-yyyy'), to_date('21-01-2026', 'dd-mm-yyyy'), 1, 569, to_date('28-12-2023', 'dd-mm-yyyy'), 653572183, 786485476, 'Homenick LLC', 1);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-04-2023', 'dd-mm-yyyy'), to_date('21-01-2026', 'dd-mm-yyyy'), 3, 574, to_date('04-01-2024', 'dd-mm-yyyy'), 518132465, 338869456, 'Jacobs-Ebert', 17);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-02-2023', 'dd-mm-yyyy'), to_date('05-02-2026', 'dd-mm-yyyy'), 2, 575, to_date('16-03-2024', 'dd-mm-yyyy'), 742193936, 377351301, 'Considine-Lang', 41);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-06-2022', 'dd-mm-yyyy'), to_date('23-04-2026', 'dd-mm-yyyy'), 1, 577, to_date('14-04-2024', 'dd-mm-yyyy'), 233952257, 933449330, 'Armstrong Group', 18);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-03-2022', 'dd-mm-yyyy'), to_date('08-02-2026', 'dd-mm-yyyy'), 2, 579, to_date('12-04-2024', 'dd-mm-yyyy'), 158032537, 127152552, 'Bechtelar-Heaney', 15);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-03-2022', 'dd-mm-yyyy'), to_date('19-04-2026', 'dd-mm-yyyy'), 3, 581, to_date('17-12-2023', 'dd-mm-yyyy'), 631422732, 753403153, 'Kunze Group', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-11-2022', 'dd-mm-yyyy'), to_date('09-01-2026', 'dd-mm-yyyy'), 3, 582, to_date('18-02-2024', 'dd-mm-yyyy'), 672697720, 243650368, 'Botsford and Sons', 11);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-10-2022', 'dd-mm-yyyy'), to_date('07-01-2026', 'dd-mm-yyyy'), 1, 583, to_date('22-02-2024', 'dd-mm-yyyy'), 627775521, 726194140, 'Hoppe-Bahringer', 47);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-10-2022', 'dd-mm-yyyy'), to_date('28-02-2026', 'dd-mm-yyyy'), 2, 586, to_date('05-01-2024', 'dd-mm-yyyy'), 578436317, 225647068, 'Hessel Inc', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('11-03-2022', 'dd-mm-yyyy'), to_date('10-01-2026', 'dd-mm-yyyy'), 1, 589, to_date('29-01-2024', 'dd-mm-yyyy'), 543635746, 555356960, 'DuBuque-Hansen', 13);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-07-2022', 'dd-mm-yyyy'), to_date('23-04-2026', 'dd-mm-yyyy'), 3, 590, to_date('21-02-2024', 'dd-mm-yyyy'), 618589680, 604858769, 'Daugherty-Sauer', 17);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-07-2023', 'dd-mm-yyyy'), to_date('06-02-2026', 'dd-mm-yyyy'), 1, 591, to_date('02-01-2024', 'dd-mm-yyyy'), 179571878, 692585044, 'Daugherty-Sauer', 39);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-01-2023', 'dd-mm-yyyy'), to_date('26-01-2026', 'dd-mm-yyyy'), 3, 593, to_date('05-01-2024', 'dd-mm-yyyy'), 578247423, 518507980, 'Feeney and Sons', 46);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-01-2023', 'dd-mm-yyyy'), to_date('11-03-2026', 'dd-mm-yyyy'), 3, 594, to_date('07-02-2024', 'dd-mm-yyyy'), 304381596, 552596021, 'Legros-Swaniawski', 15);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('19-09-2023', 'dd-mm-yyyy'), to_date('31-03-2026', 'dd-mm-yyyy'), 3, 595, to_date('10-12-2023', 'dd-mm-yyyy'), 987111092, 864649706, 'Gutkowski and Sons', 17);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-04-2023', 'dd-mm-yyyy'), to_date('17-03-2026', 'dd-mm-yyyy'), 1, 596, to_date('10-04-2024', 'dd-mm-yyyy'), 474312378, 573456079, 'Kessler-Douglas', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-12-2022', 'dd-mm-yyyy'), to_date('25-03-2026', 'dd-mm-yyyy'), 3, 597, to_date('15-03-2024', 'dd-mm-yyyy'), 340876652, 554523321, 'Jenkins-Stiedemann', 28);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-10-2022', 'dd-mm-yyyy'), to_date('08-01-2026', 'dd-mm-yyyy'), 3, 598, to_date('10-12-2023', 'dd-mm-yyyy'), 301200179, 929988807, 'Ratke-Maggio', 48);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-08-2023', 'dd-mm-yyyy'), to_date('28-03-2026', 'dd-mm-yyyy'), 3, 599, to_date('20-12-2023', 'dd-mm-yyyy'), 365802363, 966174596, 'Hessel LLC', 37);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-04-2023', 'dd-mm-yyyy'), to_date('11-01-2026', 'dd-mm-yyyy'), 3, 600, to_date('23-04-2024', 'dd-mm-yyyy'), 555356960, 749526793, 'Gusikowski LLC', 3);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-12-2022', 'dd-mm-yyyy'), to_date('07-12-2025', 'dd-mm-yyyy'), 2, 601, to_date('16-12-2023', 'dd-mm-yyyy'), 713778816, 840057828, 'Schowalter Group', 14);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-02-2023', 'dd-mm-yyyy'), to_date('02-03-2026', 'dd-mm-yyyy'), 1, 603, to_date('27-03-2024', 'dd-mm-yyyy'), 233834816, 170959333, 'Bernhard LLC', 26);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-02-2023', 'dd-mm-yyyy'), to_date('08-01-2026', 'dd-mm-yyyy'), 1, 606, to_date('16-12-2023', 'dd-mm-yyyy'), 561633907, 860926589, 'Haag-Bahringer', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-03-2023', 'dd-mm-yyyy'), to_date('27-03-2026', 'dd-mm-yyyy'), 2, 608, to_date('29-02-2024', 'dd-mm-yyyy'), 426700247, 630097210, 'Waelchi-Rath', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-08-2022', 'dd-mm-yyyy'), to_date('22-03-2026', 'dd-mm-yyyy'), 2, 610, to_date('17-12-2023', 'dd-mm-yyyy'), 551779895, 200123419, 'Smith-Kemmer', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-09-2022', 'dd-mm-yyyy'), to_date('07-01-2026', 'dd-mm-yyyy'), 3, 611, to_date('04-01-2024', 'dd-mm-yyyy'), 943589797, 950157644, 'Dicki Group', 37);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-04-2022', 'dd-mm-yyyy'), to_date('13-02-2026', 'dd-mm-yyyy'), 3, 612, to_date('13-01-2024', 'dd-mm-yyyy'), 594078460, 463595900, 'Daugherty-Sauer', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-07-2022', 'dd-mm-yyyy'), to_date('16-12-2025', 'dd-mm-yyyy'), 1, 613, to_date('14-12-2023', 'dd-mm-yyyy'), 196814159, 534368732, 'Rohan Group', 27);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-01-2023', 'dd-mm-yyyy'), to_date('10-01-2026', 'dd-mm-yyyy'), 1, 614, to_date('23-04-2024', 'dd-mm-yyyy'), 170959333, 356899357, 'Gerlach and Sons', 37);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-11-2022', 'dd-mm-yyyy'), to_date('27-01-2026', 'dd-mm-yyyy'), 1, 616, to_date('31-03-2024', 'dd-mm-yyyy'), 934564941, 597650533, 'Jacobi and Sons', 35);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('19-05-2023', 'dd-mm-yyyy'), to_date('15-01-2026', 'dd-mm-yyyy'), 1, 617, to_date('05-01-2024', 'dd-mm-yyyy'), 690317110, 306558475, 'Considine-Lang', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-03-2022', 'dd-mm-yyyy'), to_date('26-02-2026', 'dd-mm-yyyy'), 2, 619, to_date('27-04-2024', 'dd-mm-yyyy'), 353055007, 518132465, 'Hoppe-Bahringer', 26);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-12-2022', 'dd-mm-yyyy'), to_date('14-04-2026', 'dd-mm-yyyy'), 2, 622, to_date('19-12-2023', 'dd-mm-yyyy'), 426700247, 438564639, 'Kessler-Nicolas', 32);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-11-2022', 'dd-mm-yyyy'), to_date('11-03-2026', 'dd-mm-yyyy'), 3, 623, to_date('01-02-2024', 'dd-mm-yyyy'), 849041458, 133820490, 'Vandervort Inc', 48);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-10-2023', 'dd-mm-yyyy'), to_date('14-02-2026', 'dd-mm-yyyy'), 1, 624, to_date('01-02-2024', 'dd-mm-yyyy'), 496387722, 632483753, 'Lockman-Flatley', 24);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-04-2023', 'dd-mm-yyyy'), to_date('05-01-2026', 'dd-mm-yyyy'), 1, 625, to_date('04-01-2024', 'dd-mm-yyyy'), 304906681, 753403153, 'Kozey-Weimann', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-07-2023', 'dd-mm-yyyy'), to_date('14-03-2026', 'dd-mm-yyyy'), 2, 626, to_date('09-03-2024', 'dd-mm-yyyy'), 860197318, 701993480, 'Weber Group', 10);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-06-2023', 'dd-mm-yyyy'), to_date('19-03-2026', 'dd-mm-yyyy'), 3, 627, to_date('04-04-2024', 'dd-mm-yyyy'), 265300404, 768822411, 'O''Reilly Group', 31);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-06-2023', 'dd-mm-yyyy'), to_date('21-12-2025', 'dd-mm-yyyy'), 2, 628, to_date('12-01-2024', 'dd-mm-yyyy'), 278243052, 387606340, 'Daugherty-Auer', 8);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-03-2022', 'dd-mm-yyyy'), to_date('24-01-2026', 'dd-mm-yyyy'), 3, 629, to_date('10-01-2024', 'dd-mm-yyyy'), 866555636, 713778816, 'Grimes Inc', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-07-2023', 'dd-mm-yyyy'), to_date('22-04-2026', 'dd-mm-yyyy'), 3, 630, to_date('31-01-2024', 'dd-mm-yyyy'), 405022190, 604293473, 'Metz-Nienow', 21);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-07-2023', 'dd-mm-yyyy'), to_date('13-04-2026', 'dd-mm-yyyy'), 1, 631, to_date('07-03-2024', 'dd-mm-yyyy'), 724060404, 967904734, 'Zboncak-Moen', 14);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-09-2023', 'dd-mm-yyyy'), to_date('26-03-2026', 'dd-mm-yyyy'), 2, 632, to_date('17-02-2024', 'dd-mm-yyyy'), 365802363, 952248539, 'Legros-Swaniawski', 26);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-09-2022', 'dd-mm-yyyy'), to_date('05-12-2025', 'dd-mm-yyyy'), 1, 634, to_date('26-12-2023', 'dd-mm-yyyy'), 304275848, 701993480, 'Flatley and Sons', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-02-2023', 'dd-mm-yyyy'), to_date('03-12-2025', 'dd-mm-yyyy'), 1, 635, to_date('07-04-2024', 'dd-mm-yyyy'), 866555636, 407931490, 'Jaskolski-Quigley', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-07-2022', 'dd-mm-yyyy'), to_date('17-12-2025', 'dd-mm-yyyy'), 3, 636, to_date('13-03-2024', 'dd-mm-yyyy'), 179571878, 795377187, 'Lockman-Flatley', 21);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-07-2022', 'dd-mm-yyyy'), to_date('27-12-2025', 'dd-mm-yyyy'), 3, 637, to_date('04-01-2024', 'dd-mm-yyyy'), 792320978, 692754198, 'Walter Group', 17);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-07-2022', 'dd-mm-yyyy'), to_date('12-03-2026', 'dd-mm-yyyy'), 3, 639, to_date('04-12-2023', 'dd-mm-yyyy'), 878535168, 200401164, 'Daugherty-Sauer', 19);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-01-2023', 'dd-mm-yyyy'), to_date('12-12-2025', 'dd-mm-yyyy'), 2, 640, to_date('07-02-2024', 'dd-mm-yyyy'), 304381596, 185457198, 'Pollich and Sons', 30);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-07-2023', 'dd-mm-yyyy'), to_date('09-02-2026', 'dd-mm-yyyy'), 2, 641, to_date('01-04-2024', 'dd-mm-yyyy'), 168696677, 604858769, 'Sipes-D''Amore', 15);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-11-2023', 'dd-mm-yyyy'), to_date('24-12-2025', 'dd-mm-yyyy'), 2, 642, to_date('14-01-2024', 'dd-mm-yyyy'), 324787754, 518132465, 'Considine-Lang', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-04-2022', 'dd-mm-yyyy'), to_date('16-12-2025', 'dd-mm-yyyy'), 1, 643, to_date('20-01-2024', 'dd-mm-yyyy'), 934564941, 907725857, 'Wintheiser Inc', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-10-2023', 'dd-mm-yyyy'), to_date('30-03-2026', 'dd-mm-yyyy'), 3, 644, to_date('23-02-2024', 'dd-mm-yyyy'), 739383154, 997486433, 'Haag-Bahringer', 31);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-02-2022', 'dd-mm-yyyy'), to_date('19-04-2026', 'dd-mm-yyyy'), 3, 646, to_date('06-03-2024', 'dd-mm-yyyy'), 196814159, 122959836, 'Rolfson LLC', 42);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-03-2023', 'dd-mm-yyyy'), to_date('09-01-2026', 'dd-mm-yyyy'), 3, 647, to_date('15-02-2024', 'dd-mm-yyyy'), 158032537, 768822411, 'Dicki Group', 8);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-03-2022', 'dd-mm-yyyy'), to_date('03-03-2026', 'dd-mm-yyyy'), 2, 649, to_date('06-03-2024', 'dd-mm-yyyy'), 578247423, 886866213, 'Jacobson Group', 3);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-02-2023', 'dd-mm-yyyy'), to_date('13-01-2026', 'dd-mm-yyyy'), 2, 653, to_date('01-12-2023', 'dd-mm-yyyy'), 233952257, 860926589, 'Daugherty-Sauer', 10);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-01-2022', 'dd-mm-yyyy'), to_date('26-03-2026', 'dd-mm-yyyy'), 3, 654, to_date('29-01-2024', 'dd-mm-yyyy'), 866555636, 399129577, 'Hahn Group', 9);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-04-2023', 'dd-mm-yyyy'), to_date('22-12-2025', 'dd-mm-yyyy'), 2, 655, to_date('08-01-2024', 'dd-mm-yyyy'), 226692168, 551779895, 'Kilback Group', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-11-2023', 'dd-mm-yyyy'), to_date('08-03-2026', 'dd-mm-yyyy'), 3, 656, to_date('05-02-2024', 'dd-mm-yyyy'), 324787754, 814306301, 'Murphy LLC', 20);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('01-08-2023', 'dd-mm-yyyy'), to_date('14-01-2026', 'dd-mm-yyyy'), 2, 659, to_date('30-12-2023', 'dd-mm-yyyy'), 618589680, 814306301, 'Leffler Inc', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-04-2022', 'dd-mm-yyyy'), to_date('02-03-2026', 'dd-mm-yyyy'), 3, 660, to_date('03-04-2024', 'dd-mm-yyyy'), 849041458, 323221906, 'Ziemann-McKenzie', 34);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-12-2022', 'dd-mm-yyyy'), to_date('19-02-2025', 'dd-mm-yyyy'), 1, 544, null, 496387722, null, 'Mann-Schoen', 36);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-06-2023', 'dd-mm-yyyy'), to_date('24-08-2026', 'dd-mm-yyyy'), 3, 554, null, 200401164, null, 'Hilpert-Stracke', 30);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-02-2023', 'dd-mm-yyyy'), to_date('12-08-2025', 'dd-mm-yyyy'), 2, 557, null, 561633907, null, 'Simonis LLC', 10);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-03-2022', 'dd-mm-yyyy'), to_date('30-03-2025', 'dd-mm-yyyy'), 4, 559, null, 724060404, null, 'Cronin-MacGyver', 44);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-01-2022', 'dd-mm-yyyy'), to_date('11-05-2026', 'dd-mm-yyyy'), 2, 800, null, 405022190, null, 'Trantow LLC', 21);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('01-05-2023', 'dd-mm-yyyy'), to_date('06-04-2025', 'dd-mm-yyyy'), 3, 802, null, 324787754, null, 'Rippin Inc', 35);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-03-2023', 'dd-mm-yyyy'), to_date('30-07-2026', 'dd-mm-yyyy'), 1, 803, null, 551288657, null, 'Kuvalis-Krajcik', 39);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('16-09-2022', 'dd-mm-yyyy'), to_date('16-03-2026', 'dd-mm-yyyy'), 4, 804, null, 278243052, null, 'Heathcote-Dibbert', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-04-2022', 'dd-mm-yyyy'), to_date('09-08-2025', 'dd-mm-yyyy'), 1, 805, null, 937108444, null, 'Upton LLC', 13);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-08-2023', 'dd-mm-yyyy'), to_date('04-04-2025', 'dd-mm-yyyy'), 1, 806, null, 387240899, null, 'Hansen-Feeney', 10);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('16-03-2022', 'dd-mm-yyyy'), to_date('30-08-2026', 'dd-mm-yyyy'), 2, 807, null, 641642968, null, 'Wyman-Johnson', 1);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-03-2023', 'dd-mm-yyyy'), to_date('12-11-2026', 'dd-mm-yyyy'), 2, 808, null, 561633907, null, 'Kautzer Group', 41);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-07-2022', 'dd-mm-yyyy'), to_date('24-12-2025', 'dd-mm-yyyy'), 2, 809, null, 631422732, null, 'Torphy and Sons', 37);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-11-2022', 'dd-mm-yyyy'), to_date('05-05-2025', 'dd-mm-yyyy'), 1, 810, null, 912529580, null, 'Schinner and Sons', 13);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-08-2023', 'dd-mm-yyyy'), to_date('17-02-2025', 'dd-mm-yyyy'), 1, 811, null, 820603539, null, 'Torphy and Sons', 32);
commit;
prompt 200 records committed...
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-01-2023', 'dd-mm-yyyy'), to_date('16-04-2025', 'dd-mm-yyyy'), 1, 812, null, 501341339, null, 'Connelly-Greenfelder', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-10-2023', 'dd-mm-yyyy'), to_date('25-07-2026', 'dd-mm-yyyy'), 4, 813, null, 233952257, null, 'Reichert Group', 41);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('19-05-2022', 'dd-mm-yyyy'), to_date('17-09-2025', 'dd-mm-yyyy'), 3, 815, null, 604293473, null, 'Klein Group', 23);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-06-2022', 'dd-mm-yyyy'), to_date('06-06-2026', 'dd-mm-yyyy'), 3, 816, null, 951374912, null, 'Padberg Group', 44);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-06-2023', 'dd-mm-yyyy'), to_date('26-09-2026', 'dd-mm-yyyy'), 4, 818, null, 886866213, null, 'Gerlach and Sons', 19);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-06-2023', 'dd-mm-yyyy'), to_date('27-12-2025', 'dd-mm-yyyy'), 2, 161, to_date('22-01-2024', 'dd-mm-yyyy'), 578436317, 551779895, 'Kessler LLC', 4);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-01-2023', 'dd-mm-yyyy'), to_date('08-12-2025', 'dd-mm-yyyy'), 1, 162, to_date('21-03-2024', 'dd-mm-yyyy'), 886866213, 387828012, 'Windler and Sons', 3);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-08-2022', 'dd-mm-yyyy'), to_date('07-12-2025', 'dd-mm-yyyy'), 1, 164, to_date('20-03-2024', 'dd-mm-yyyy'), 518507980, 719561397, 'Collier Inc', 30);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-10-2022', 'dd-mm-yyyy'), to_date('21-01-2026', 'dd-mm-yyyy'), 1, 166, to_date('08-04-2024', 'dd-mm-yyyy'), 594078460, 200401164, 'Kessler-Nicolas', 3);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-02-2023', 'dd-mm-yyyy'), to_date('07-01-2026', 'dd-mm-yyyy'), 2, 167, to_date('18-03-2024', 'dd-mm-yyyy'), 387606340, 597650533, 'Hessel LLC', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-02-2022', 'dd-mm-yyyy'), to_date('26-02-2026', 'dd-mm-yyyy'), 3, 168, to_date('11-01-2024', 'dd-mm-yyyy'), 304906681, 969082635, 'Hermann Group', 7);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-03-2023', 'dd-mm-yyyy'), to_date('30-12-2025', 'dd-mm-yyyy'), 3, 169, to_date('27-03-2024', 'dd-mm-yyyy'), 226692168, 187859985, 'Will-Fisher', 36);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-06-2022', 'dd-mm-yyyy'), to_date('14-12-2025', 'dd-mm-yyyy'), 1, 170, to_date('25-12-2023', 'dd-mm-yyyy'), 551288657, 173920758, 'Labadie-Bosco', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-11-2023', 'dd-mm-yyyy'), to_date('16-01-2026', 'dd-mm-yyyy'), 1, 172, to_date('08-03-2024', 'dd-mm-yyyy'), 444156551, 987111092, 'Mohr-Schamberger', 48);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-11-2022', 'dd-mm-yyyy'), to_date('24-04-2026', 'dd-mm-yyyy'), 3, 175, to_date('10-04-2024', 'dd-mm-yyyy'), 873454319, 229756011, 'Miller LLC', 18);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-08-2023', 'dd-mm-yyyy'), to_date('08-04-2026', 'dd-mm-yyyy'), 3, 176, to_date('22-01-2024', 'dd-mm-yyyy'), 416102786, 820784148, 'Kessler and Sons', 16);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-06-2023', 'dd-mm-yyyy'), to_date('27-02-2026', 'dd-mm-yyyy'), 1, 177, to_date('10-04-2024', 'dd-mm-yyyy'), 168696677, 952248539, 'Russel Inc', 9);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-12-2022', 'dd-mm-yyyy'), to_date('28-02-2026', 'dd-mm-yyyy'), 3, 178, to_date('05-12-2023', 'dd-mm-yyyy'), 341851984, 262773968, 'Kuvalis-Krajcik', 27);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-07-2022', 'dd-mm-yyyy'), to_date('21-04-2026', 'dd-mm-yyyy'), 3, 179, to_date('04-04-2024', 'dd-mm-yyyy'), 340876652, 426700247, 'Pollich and Sons', 21);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('01-05-2022', 'dd-mm-yyyy'), to_date('22-03-2026', 'dd-mm-yyyy'), 1, 180, to_date('20-12-2023', 'dd-mm-yyyy'), 794813117, 269280194, 'Feeney and Sons', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-04-2023', 'dd-mm-yyyy'), to_date('22-12-2025', 'dd-mm-yyyy'), 2, 181, to_date('09-01-2024', 'dd-mm-yyyy'), 866555636, 954882441, 'Abbott-Hoppe', 21);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-08-2022', 'dd-mm-yyyy'), to_date('13-04-2026', 'dd-mm-yyyy'), 3, 182, to_date('02-03-2024', 'dd-mm-yyyy'), 929556539, 391894701, 'Walker-Rodriguez', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-10-2023', 'dd-mm-yyyy'), to_date('06-01-2026', 'dd-mm-yyyy'), 2, 185, to_date('12-03-2024', 'dd-mm-yyyy'), 642228310, 325810550, 'Klein-Nikolaus', 7);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-08-2023', 'dd-mm-yyyy'), to_date('18-03-2026', 'dd-mm-yyyy'), 1, 186, to_date('01-02-2024', 'dd-mm-yyyy'), 578247423, 630097210, 'O''Reilly Group', 48);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-01-2022', 'dd-mm-yyyy'), to_date('11-01-2026', 'dd-mm-yyyy'), 1, 187, to_date('14-02-2024', 'dd-mm-yyyy'), 561633907, 165455068, 'Bechtelar-Heaney', 29);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-05-2023', 'dd-mm-yyyy'), to_date('09-12-2025', 'dd-mm-yyyy'), 1, 188, to_date('16-01-2024', 'dd-mm-yyyy'), 424560292, 791378335, 'Kunde and Sons', 24);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-09-2023', 'dd-mm-yyyy'), to_date('20-01-2026', 'dd-mm-yyyy'), 2, 189, to_date('29-01-2024', 'dd-mm-yyyy'), 727579251, 984894238, 'Dickens and Sons', 4);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-02-2023', 'dd-mm-yyyy'), to_date('26-02-2026', 'dd-mm-yyyy'), 3, 190, to_date('02-03-2024', 'dd-mm-yyyy'), 873454319, 173920758, 'Tromp and Sons', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-06-2022', 'dd-mm-yyyy'), to_date('09-12-2025', 'dd-mm-yyyy'), 2, 191, to_date('15-01-2024', 'dd-mm-yyyy'), 646298659, 302162387, 'Murazik Group', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-03-2022', 'dd-mm-yyyy'), to_date('12-01-2026', 'dd-mm-yyyy'), 1, 193, to_date('12-02-2024', 'dd-mm-yyyy'), 379428655, 438564639, 'Pfeffer-Legros', 27);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-06-2023', 'dd-mm-yyyy'), to_date('16-02-2026', 'dd-mm-yyyy'), 2, 195, to_date('02-02-2024', 'dd-mm-yyyy'), 867864383, 124377854, 'Lehner-Kub', 48);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-01-2023', 'dd-mm-yyyy'), to_date('05-01-2026', 'dd-mm-yyyy'), 2, 196, to_date('26-02-2024', 'dd-mm-yyyy'), 196814159, 543760376, 'Dare LLC', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-04-2022', 'dd-mm-yyyy'), to_date('19-01-2026', 'dd-mm-yyyy'), 2, 197, to_date('27-03-2024', 'dd-mm-yyyy'), 438564639, 911893601, 'Block-Emard', 13);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-09-2022', 'dd-mm-yyyy'), to_date('10-04-2026', 'dd-mm-yyyy'), 2, 198, to_date('01-01-2024', 'dd-mm-yyyy'), 340876652, 296245026, 'Connelly-Greenfelder', 46);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-09-2023', 'dd-mm-yyyy'), to_date('05-04-2026', 'dd-mm-yyyy'), 3, 199, to_date('16-01-2024', 'dd-mm-yyyy'), 475216112, 682818610, 'Rutherford Inc', 36);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-04-2023', 'dd-mm-yyyy'), to_date('30-03-2026', 'dd-mm-yyyy'), 1, 200, to_date('09-02-2024', 'dd-mm-yyyy'), 474312378, 262773968, 'Kuhn-Kub', 19);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-03-2023', 'dd-mm-yyyy'), to_date('15-12-2025', 'dd-mm-yyyy'), 3, 201, to_date('07-04-2024', 'dd-mm-yyyy'), 814306301, 127152552, 'Lang and Sons', 28);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('11-12-2022', 'dd-mm-yyyy'), to_date('20-03-2026', 'dd-mm-yyyy'), 2, 202, to_date('13-01-2024', 'dd-mm-yyyy'), 511410870, 353055007, 'Bernhard LLC', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-02-2022', 'dd-mm-yyyy'), to_date('28-02-2026', 'dd-mm-yyyy'), 3, 203, to_date('30-12-2023', 'dd-mm-yyyy'), 341851984, 528244152, 'Hirthe LLC', 39);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-08-2022', 'dd-mm-yyyy'), to_date('05-03-2026', 'dd-mm-yyyy'), 2, 205, to_date('11-12-2023', 'dd-mm-yyyy'), 304906681, 518507980, 'Abbott Inc', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-05-2022', 'dd-mm-yyyy'), to_date('17-02-2026', 'dd-mm-yyyy'), 1, 206, to_date('17-12-2023', 'dd-mm-yyyy'), 627757230, 398718808, 'Will-Powlowski', 28);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-08-2023', 'dd-mm-yyyy'), to_date('22-12-2025', 'dd-mm-yyyy'), 1, 208, to_date('17-02-2024', 'dd-mm-yyyy'), 304906681, 225647068, 'Sipes-D''Amore', 6);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-08-2023', 'dd-mm-yyyy'), to_date('04-02-2026', 'dd-mm-yyyy'), 1, 12, to_date('22-02-2024', 'dd-mm-yyyy'), 426700247, 354152108, 'Murphy LLC', 21);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-04-2022', 'dd-mm-yyyy'), to_date('24-12-2025', 'dd-mm-yyyy'), 1, 17, to_date('05-01-2024', 'dd-mm-yyyy'), 233834816, 192612673, 'Wilkinson-Kiehn', 7);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-06-2023', 'dd-mm-yyyy'), to_date('21-04-2026', 'dd-mm-yyyy'), 3, 21, to_date('03-04-2024', 'dd-mm-yyyy'), 987111092, 597650533, 'White-Becker', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-02-2023', 'dd-mm-yyyy'), to_date('25-04-2026', 'dd-mm-yyyy'), 1, 31, to_date('20-01-2024', 'dd-mm-yyyy'), 690317110, 269280194, 'Robel Group', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-12-2022', 'dd-mm-yyyy'), to_date('16-04-2026', 'dd-mm-yyyy'), 1, 32, to_date('02-02-2024', 'dd-mm-yyyy'), 304275848, 649887264, 'Bechtelar Inc', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-02-2023', 'dd-mm-yyyy'), to_date('25-04-2026', 'dd-mm-yyyy'), 3, 50, to_date('22-03-2024', 'dd-mm-yyyy'), 446458474, 795377187, 'Daugherty Group', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-12-2022', 'dd-mm-yyyy'), to_date('16-02-2026', 'dd-mm-yyyy'), 2, 54, to_date('08-12-2023', 'dd-mm-yyyy'), 893364626, 595308352, 'Funk LLC', 34);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('11-01-2023', 'dd-mm-yyyy'), to_date('13-04-2026', 'dd-mm-yyyy'), 2, 58, to_date('13-02-2024', 'dd-mm-yyyy'), 551288657, 191265592, 'Ortiz Group', 37);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-11-2023', 'dd-mm-yyyy'), to_date('16-02-2026', 'dd-mm-yyyy'), 1, 61, to_date('03-03-2024', 'dd-mm-yyyy'), 914576665, 820784148, 'Pacocha-Abshire', 10);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-08-2022', 'dd-mm-yyyy'), to_date('22-04-2026', 'dd-mm-yyyy'), 2, 5, to_date('30-12-2023', 'dd-mm-yyyy'), 816622585, 543760376, 'Hilpert-Stracke', 1);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-08-2023', 'dd-mm-yyyy'), to_date('28-01-2026', 'dd-mm-yyyy'), 3, 19, to_date('24-01-2024', 'dd-mm-yyyy'), 934564941, 438564639, 'Hoppe-Bahringer', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-03-2023', 'dd-mm-yyyy'), to_date('20-04-2026', 'dd-mm-yyyy'), 3, 207, to_date('25-01-2024', 'dd-mm-yyyy'), 405022190, 943589797, 'Lemke-Stark', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-10-2023', 'dd-mm-yyyy'), to_date('14-03-2026', 'dd-mm-yyyy'), 1, 209, to_date('06-12-2023', 'dd-mm-yyyy'), 825353221, 677241235, 'Romaguera LLC', 34);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-11-2022', 'dd-mm-yyyy'), to_date('04-01-2026', 'dd-mm-yyyy'), 2, 210, to_date('22-01-2024', 'dd-mm-yyyy'), 893364626, 762978933, 'Schmidt-Kuhlman', 44);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-07-2023', 'dd-mm-yyyy'), to_date('17-04-2026', 'dd-mm-yyyy'), 3, 212, to_date('16-12-2023', 'dd-mm-yyyy'), 210081662, 318447549, 'Padberg Group', 20);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-11-2022', 'dd-mm-yyyy'), to_date('21-01-2026', 'dd-mm-yyyy'), 1, 213, to_date('16-12-2023', 'dd-mm-yyyy'), 402066926, 269280194, 'MacGyver-Ernser', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-08-2023', 'dd-mm-yyyy'), to_date('05-02-2026', 'dd-mm-yyyy'), 1, 214, to_date('06-01-2024', 'dd-mm-yyyy'), 340876652, 311928750, 'Baumbach-Lowe', 7);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-11-2022', 'dd-mm-yyyy'), to_date('08-04-2026', 'dd-mm-yyyy'), 2, 215, to_date('08-02-2024', 'dd-mm-yyyy'), 353055007, 133820490, 'Schulist and Sons', 14);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-08-2023', 'dd-mm-yyyy'), to_date('09-04-2026', 'dd-mm-yyyy'), 3, 216, to_date('05-12-2023', 'dd-mm-yyyy'), 379428655, 867864383, 'Dare-Howe', 10);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('19-08-2022', 'dd-mm-yyyy'), to_date('21-01-2026', 'dd-mm-yyyy'), 2, 217, to_date('23-02-2024', 'dd-mm-yyyy'), 696751439, 272459492, 'McGlynn-Kling', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-12-2022', 'dd-mm-yyyy'), to_date('13-12-2025', 'dd-mm-yyyy'), 2, 218, to_date('21-03-2024', 'dd-mm-yyyy'), 170959333, 270750595, 'Gottlieb Group', 42);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-04-2022', 'dd-mm-yyyy'), to_date('15-01-2026', 'dd-mm-yyyy'), 1, 219, to_date('26-04-2024', 'dd-mm-yyyy'), 540933518, 786485476, 'Bradtke-Feeney', 6);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-08-2023', 'dd-mm-yyyy'), to_date('01-03-2026', 'dd-mm-yyyy'), 3, 220, to_date('31-03-2024', 'dd-mm-yyyy'), 402066926, 913589022, 'Kunde Group', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-02-2022', 'dd-mm-yyyy'), to_date('25-12-2025', 'dd-mm-yyyy'), 1, 222, to_date('07-12-2023', 'dd-mm-yyyy'), 794813117, 966174596, 'Hilll LLC', 42);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-03-2023', 'dd-mm-yyyy'), to_date('07-02-2026', 'dd-mm-yyyy'), 2, 224, to_date('07-04-2024', 'dd-mm-yyyy'), 840057828, 398718808, 'Kessler and Sons', 14);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-07-2023', 'dd-mm-yyyy'), to_date('22-03-2026', 'dd-mm-yyyy'), 3, 225, to_date('27-03-2024', 'dd-mm-yyyy'), 986960506, 219689648, 'Abbott Inc', 31);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-05-2022', 'dd-mm-yyyy'), to_date('09-12-2025', 'dd-mm-yyyy'), 3, 227, to_date('13-03-2024', 'dd-mm-yyyy'), 958051598, 158032537, 'Crist and Sons', 32);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-03-2022', 'dd-mm-yyyy'), to_date('31-03-2026', 'dd-mm-yyyy'), 1, 228, to_date('27-02-2024', 'dd-mm-yyyy'), 280816030, 987111092, 'Rohan and Sons', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-01-2023', 'dd-mm-yyyy'), to_date('22-03-2026', 'dd-mm-yyyy'), 2, 229, to_date('06-01-2024', 'dd-mm-yyyy'), 353055007, 219977600, 'Walker-Rodriguez', 36);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-08-2022', 'dd-mm-yyyy'), to_date('19-12-2025', 'dd-mm-yyyy'), 3, 230, to_date('25-03-2024', 'dd-mm-yyyy'), 792320978, 398718808, 'Collier Inc', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-05-2023', 'dd-mm-yyyy'), to_date('08-12-2025', 'dd-mm-yyyy'), 3, 231, to_date('19-02-2024', 'dd-mm-yyyy'), 375710406, 541691852, 'Lehner-Kub', 46);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-06-2022', 'dd-mm-yyyy'), to_date('16-12-2025', 'dd-mm-yyyy'), 2, 232, to_date('25-01-2024', 'dd-mm-yyyy'), 541691852, 554523321, 'Macejkovic-Ziemann', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-11-2023', 'dd-mm-yyyy'), to_date('16-01-2026', 'dd-mm-yyyy'), 2, 233, to_date('16-02-2024', 'dd-mm-yyyy'), 912529580, 791378335, 'Block-Emard', 44);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-09-2022', 'dd-mm-yyyy'), to_date('04-02-2026', 'dd-mm-yyyy'), 2, 234, to_date('28-01-2024', 'dd-mm-yyyy'), 853055600, 752193505, 'Heathcote Inc', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-10-2023', 'dd-mm-yyyy'), to_date('20-02-2026', 'dd-mm-yyyy'), 1, 235, to_date('06-01-2024', 'dd-mm-yyyy'), 511410870, 966390835, 'Runte Inc', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-10-2023', 'dd-mm-yyyy'), to_date('16-04-2026', 'dd-mm-yyyy'), 3, 236, to_date('14-02-2024', 'dd-mm-yyyy'), 739383154, 423798272, 'Gottlieb Group', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-11-2022', 'dd-mm-yyyy'), to_date('30-12-2025', 'dd-mm-yyyy'), 3, 237, to_date('09-12-2023', 'dd-mm-yyyy'), 713778816, 950157644, 'Baumbach-Kautzer', 28);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-11-2023', 'dd-mm-yyyy'), to_date('07-12-2025', 'dd-mm-yyyy'), 2, 238, to_date('08-01-2024', 'dd-mm-yyyy'), 511410870, 590262827, 'Weber-Hamill', 24);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-04-2023', 'dd-mm-yyyy'), to_date('03-04-2026', 'dd-mm-yyyy'), 3, 239, to_date('26-03-2024', 'dd-mm-yyyy'), 656917861, 325810550, 'Cronin-Koepp', 6);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-05-2022', 'dd-mm-yyyy'), to_date('04-04-2026', 'dd-mm-yyyy'), 1, 240, to_date('07-01-2024', 'dd-mm-yyyy'), 597650533, 886866213, 'Stamm-Ebert', 34);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-08-2023', 'dd-mm-yyyy'), to_date('21-03-2026', 'dd-mm-yyyy'), 1, 241, to_date('03-04-2024', 'dd-mm-yyyy'), 713778816, 814306301, 'Block-Emard', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-09-2022', 'dd-mm-yyyy'), to_date('23-03-2026', 'dd-mm-yyyy'), 2, 243, to_date('18-02-2024', 'dd-mm-yyyy'), 393369854, 534368732, 'Nicolas-Schmidt', 43);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-09-2023', 'dd-mm-yyyy'), to_date('24-02-2026', 'dd-mm-yyyy'), 2, 244, to_date('04-04-2024', 'dd-mm-yyyy'), 518507980, 243650368, 'Marks-Bartell', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-02-2023', 'dd-mm-yyyy'), to_date('03-04-2026', 'dd-mm-yyyy'), 3, 245, to_date('30-12-2023', 'dd-mm-yyyy'), 318241891, 913589022, 'Leffler Inc', 19);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-04-2023', 'dd-mm-yyyy'), to_date('11-04-2026', 'dd-mm-yyyy'), 1, 246, to_date('01-03-2024', 'dd-mm-yyyy'), 397477282, 991826648, 'Champlin-Collins', 50);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-05-2022', 'dd-mm-yyyy'), to_date('23-12-2025', 'dd-mm-yyyy'), 3, 250, to_date('20-04-2024', 'dd-mm-yyyy'), 552596021, 174936847, 'Harvey and Sons', 10);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-05-2023', 'dd-mm-yyyy'), to_date('17-04-2026', 'dd-mm-yyyy'), 1, 251, to_date('11-03-2024', 'dd-mm-yyyy'), 304381596, 795610284, 'Greenfelder and Sons', 11);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-04-2023', 'dd-mm-yyyy'), to_date('14-03-2026', 'dd-mm-yyyy'), 2, 252, to_date('15-12-2023', 'dd-mm-yyyy'), 148700848, 726157701, 'Schowalter Group', 36);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-06-2022', 'dd-mm-yyyy'), to_date('25-12-2025', 'dd-mm-yyyy'), 2, 253, to_date('02-03-2024', 'dd-mm-yyyy'), 641642968, 573456079, 'Walter Group', 46);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-07-2023', 'dd-mm-yyyy'), to_date('28-03-2026', 'dd-mm-yyyy'), 3, 255, to_date('22-12-2023', 'dd-mm-yyyy'), 646298659, 753403153, 'Brekke-Renner', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-06-2023', 'dd-mm-yyyy'), to_date('09-04-2026', 'dd-mm-yyyy'), 2, 256, to_date('28-04-2024', 'dd-mm-yyyy'), 511410870, 407931490, 'Ebert Inc', 30);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-02-2023', 'dd-mm-yyyy'), to_date('19-12-2025', 'dd-mm-yyyy'), 3, 257, to_date('15-03-2024', 'dd-mm-yyyy'), 511410870, 753403153, 'Lemke-Stark', 14);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-11-2022', 'dd-mm-yyyy'), to_date('08-03-2026', 'dd-mm-yyyy'), 2, 258, to_date('19-12-2023', 'dd-mm-yyyy'), 548240914, 692754198, 'Connelly-Bogan', 3);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-09-2022', 'dd-mm-yyyy'), to_date('02-02-2026', 'dd-mm-yyyy'), 1, 260, to_date('15-12-2023', 'dd-mm-yyyy'), 438564639, 630097210, 'Jacobson Group', 34);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-01-2022', 'dd-mm-yyyy'), to_date('07-12-2025', 'dd-mm-yyyy'), 2, 261, to_date('12-02-2024', 'dd-mm-yyyy'), 820603539, 630097210, 'Torp-Thiel', 11);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-04-2023', 'dd-mm-yyyy'), to_date('28-01-2026', 'dd-mm-yyyy'), 3, 262, to_date('21-02-2024', 'dd-mm-yyyy'), 825353221, 597650533, 'Weber and Sons', 42);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-10-2023', 'dd-mm-yyyy'), to_date('26-04-2026', 'dd-mm-yyyy'), 1, 263, to_date('07-12-2023', 'dd-mm-yyyy'), 148700848, 412929466, 'Howell Group', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-02-2023', 'dd-mm-yyyy'), to_date('18-03-2026', 'dd-mm-yyyy'), 2, 265, to_date('07-03-2024', 'dd-mm-yyyy'), 416102786, 272459492, 'McGlynn LLC', 31);
commit;
prompt 300 records committed...
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('11-06-2023', 'dd-mm-yyyy'), to_date('21-04-2026', 'dd-mm-yyyy'), 1, 266, to_date('21-12-2023', 'dd-mm-yyyy'), 958051598, 548585214, 'Block-Emard', 7);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-06-2022', 'dd-mm-yyyy'), to_date('25-12-2025', 'dd-mm-yyyy'), 2, 268, to_date('09-04-2024', 'dd-mm-yyyy'), 653572183, 726157701, 'Torphy-Carroll', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-05-2023', 'dd-mm-yyyy'), to_date('15-02-2026', 'dd-mm-yyyy'), 3, 269, to_date('10-01-2024', 'dd-mm-yyyy'), 984778784, 187859985, 'Haag-Bahringer', 27);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-11-2022', 'dd-mm-yyyy'), to_date('08-01-2026', 'dd-mm-yyyy'), 3, 270, to_date('25-02-2024', 'dd-mm-yyyy'), 656917861, 750134051, 'Connelly-Greenfelder', 13);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-07-2022', 'dd-mm-yyyy'), to_date('17-03-2026', 'dd-mm-yyyy'), 1, 271, to_date('21-01-2024', 'dd-mm-yyyy'), 691356573, 318447549, 'Gusikowski LLC', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-03-2023', 'dd-mm-yyyy'), to_date('25-03-2026', 'dd-mm-yyyy'), 3, 272, to_date('20-01-2024', 'dd-mm-yyyy'), 849041458, 631422732, 'Heathcote Inc', 44);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-12-2022', 'dd-mm-yyyy'), to_date('27-01-2026', 'dd-mm-yyyy'), 2, 273, to_date('19-04-2024', 'dd-mm-yyyy'), 943589797, 170959333, 'McGlynn LLC', 16);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-03-2023', 'dd-mm-yyyy'), to_date('25-01-2026', 'dd-mm-yyyy'), 1, 274, to_date('07-02-2024', 'dd-mm-yyyy'), 365802363, 424560292, 'Sipes-Terry', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-05-2023', 'dd-mm-yyyy'), to_date('02-02-2026', 'dd-mm-yyyy'), 3, 275, to_date('09-01-2024', 'dd-mm-yyyy'), 233834816, 325810550, 'McGlynn LLC', 27);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-07-2023', 'dd-mm-yyyy'), to_date('25-02-2026', 'dd-mm-yyyy'), 3, 276, to_date('11-03-2024', 'dd-mm-yyyy'), 328994752, 213518716, 'Farrell-Windler', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-10-2022', 'dd-mm-yyyy'), to_date('10-04-2026', 'dd-mm-yyyy'), 2, 277, to_date('06-03-2024', 'dd-mm-yyyy'), 653572183, 345400819, 'Pfeffer-Legros', 20);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-09-2023', 'dd-mm-yyyy'), to_date('02-03-2026', 'dd-mm-yyyy'), 1, 279, to_date('20-02-2024', 'dd-mm-yyyy'), 138247594, 966174596, 'Hilpert-Baumbach', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-06-2023', 'dd-mm-yyyy'), to_date('16-02-2026', 'dd-mm-yyyy'), 3, 282, to_date('28-03-2024', 'dd-mm-yyyy'), 168696677, 412929466, 'Mann-Schoen', 21);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-08-2023', 'dd-mm-yyyy'), to_date('22-02-2026', 'dd-mm-yyyy'), 2, 284, to_date('09-12-2023', 'dd-mm-yyyy'), 878535168, 283420111, 'Maggio-Emmerich', 48);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-09-2022', 'dd-mm-yyyy'), to_date('13-03-2026', 'dd-mm-yyyy'), 3, 285, to_date('20-02-2024', 'dd-mm-yyyy'), 501341339, 718723162, 'Bins-Hand', 29);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-11-2022', 'dd-mm-yyyy'), to_date('02-12-2025', 'dd-mm-yyyy'), 2, 286, to_date('03-01-2024', 'dd-mm-yyyy'), 912529580, 138223947, 'Collins LLC', 10);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-04-2022', 'dd-mm-yyyy'), to_date('22-02-2026', 'dd-mm-yyyy'), 2, 287, to_date('28-01-2024', 'dd-mm-yyyy'), 872551637, 391894701, 'Ondricka Inc', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-02-2022', 'dd-mm-yyyy'), to_date('25-04-2026', 'dd-mm-yyyy'), 1, 289, to_date('05-12-2023', 'dd-mm-yyyy'), 794324629, 814306301, 'Miller LLC', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-11-2022', 'dd-mm-yyyy'), to_date('06-01-2026', 'dd-mm-yyyy'), 2, 292, to_date('02-04-2024', 'dd-mm-yyyy'), 512043201, 611318797, 'Flatley and Sons', 3);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-05-2022', 'dd-mm-yyyy'), to_date('25-03-2026', 'dd-mm-yyyy'), 1, 293, to_date('26-12-2023', 'dd-mm-yyyy'), 402066926, 165455068, 'Rippin Inc', 4);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-03-2023', 'dd-mm-yyyy'), to_date('27-02-2026', 'dd-mm-yyyy'), 1, 294, to_date('30-03-2024', 'dd-mm-yyyy'), 145942921, 727579251, 'Considine-Lang', 17);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-05-2023', 'dd-mm-yyyy'), to_date('09-03-2026', 'dd-mm-yyyy'), 3, 295, to_date('13-04-2024', 'dd-mm-yyyy'), 318241891, 493018730, 'Russel-Fahey', 21);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-08-2022', 'dd-mm-yyyy'), to_date('23-03-2026', 'dd-mm-yyyy'), 1, 296, to_date('04-02-2024', 'dd-mm-yyyy'), 484402865, 602343678, 'Lakin and Sons', 44);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('11-08-2023', 'dd-mm-yyyy'), to_date('12-02-2026', 'dd-mm-yyyy'), 3, 297, to_date('04-01-2024', 'dd-mm-yyyy'), 914576665, 296245026, 'Murphy LLC', 17);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-05-2022', 'dd-mm-yyyy'), to_date('07-02-2026', 'dd-mm-yyyy'), 3, 299, to_date('27-12-2023', 'dd-mm-yyyy'), 334343640, 133820490, 'Zboncak and Sons', 34);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-07-2023', 'dd-mm-yyyy'), to_date('08-12-2025', 'dd-mm-yyyy'), 2, 300, to_date('26-04-2024', 'dd-mm-yyyy'), 265300404, 185457198, 'Quitzon LLC', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-07-2023', 'dd-mm-yyyy'), to_date('31-01-2026', 'dd-mm-yyyy'), 2, 204, to_date('10-04-2024', 'dd-mm-yyyy'), 301200179, 229756011, 'Greenholt and Sons', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-08-2023', 'dd-mm-yyyy'), to_date('12-12-2025', 'dd-mm-yyyy'), 1, 400, to_date('08-01-2024', 'dd-mm-yyyy'), 379428655, 280816030, 'Murphy LLC', 24);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('11-10-2023', 'dd-mm-yyyy'), to_date('23-01-2026', 'dd-mm-yyyy'), 1, 404, to_date('11-02-2024', 'dd-mm-yyyy'), 760780439, 438564639, 'Daugherty Group', 20);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('19-10-2023', 'dd-mm-yyyy'), to_date('02-03-2026', 'dd-mm-yyyy'), 3, 405, to_date('13-04-2024', 'dd-mm-yyyy'), 963542957, 412929466, 'White-Becker', 4);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-10-2023', 'dd-mm-yyyy'), to_date('30-01-2026', 'dd-mm-yyyy'), 3, 408, to_date('19-01-2024', 'dd-mm-yyyy'), 691356573, 867982944, 'Hoppe-Bahringer', 47);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-02-2023', 'dd-mm-yyyy'), to_date('07-01-2026', 'dd-mm-yyyy'), 2, 409, to_date('27-03-2024', 'dd-mm-yyyy'), 323703121, 792320978, 'Champlin Inc', 6);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-10-2022', 'dd-mm-yyyy'), to_date('12-03-2026', 'dd-mm-yyyy'), 3, 410, to_date('24-01-2024', 'dd-mm-yyyy'), 541691852, 219977600, 'DuBuque-Hansen', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-07-2023', 'dd-mm-yyyy'), to_date('13-12-2025', 'dd-mm-yyyy'), 1, 411, to_date('24-03-2024', 'dd-mm-yyyy'), 424560292, 604858769, 'Shields-Beatty', 32);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('16-03-2023', 'dd-mm-yyyy'), to_date('27-04-2026', 'dd-mm-yyyy'), 2, 412, to_date('01-02-2024', 'dd-mm-yyyy'), 872551637, 713778816, 'O''Keefe LLC', 35);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-08-2022', 'dd-mm-yyyy'), to_date('21-03-2026', 'dd-mm-yyyy'), 2, 413, to_date('14-02-2024', 'dd-mm-yyyy'), 552596021, 752193505, 'Ritchie-Deckow', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-02-2022', 'dd-mm-yyyy'), to_date('24-04-2026', 'dd-mm-yyyy'), 1, 414, to_date('28-03-2024', 'dd-mm-yyyy'), 986960506, 304906681, 'Upton and Sons', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-11-2022', 'dd-mm-yyyy'), to_date('06-02-2026', 'dd-mm-yyyy'), 1, 415, to_date('08-03-2024', 'dd-mm-yyyy'), 265300404, 677241235, 'Macejkovic-Ziemann', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-07-2023', 'dd-mm-yyyy'), to_date('22-02-2026', 'dd-mm-yyyy'), 1, 417, to_date('05-01-2024', 'dd-mm-yyyy'), 631422732, 401578705, 'Sipes-Terry', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-06-2022', 'dd-mm-yyyy'), to_date('09-04-2026', 'dd-mm-yyyy'), 3, 419, to_date('03-03-2024', 'dd-mm-yyyy'), 951374912, 313841870, 'Wintheiser Inc', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-08-2022', 'dd-mm-yyyy'), to_date('23-12-2025', 'dd-mm-yyyy'), 1, 420, to_date('12-03-2024', 'dd-mm-yyyy'), 928805231, 401578705, 'D''Amore-Muller', 33);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-06-2023', 'dd-mm-yyyy'), to_date('06-03-2026', 'dd-mm-yyyy'), 3, 422, to_date('26-03-2024', 'dd-mm-yyyy'), 816622585, 226096496, 'Robel Group', 24);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-10-2023', 'dd-mm-yyyy'), to_date('30-01-2026', 'dd-mm-yyyy'), 2, 423, to_date('11-02-2024', 'dd-mm-yyyy'), 820603539, 727579251, 'Collier Inc', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-10-2022', 'dd-mm-yyyy'), to_date('06-04-2026', 'dd-mm-yyyy'), 2, 424, to_date('22-03-2024', 'dd-mm-yyyy'), 943589797, 879345248, 'Lowe-Harris', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-10-2022', 'dd-mm-yyyy'), to_date('10-03-2026', 'dd-mm-yyyy'), 1, 425, to_date('26-03-2024', 'dd-mm-yyyy'), 796571213, 158032537, 'Lemke-Stark', 26);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-11-2022', 'dd-mm-yyyy'), to_date('30-04-2026', 'dd-mm-yyyy'), 3, 426, to_date('13-02-2024', 'dd-mm-yyyy'), 603721548, 327911424, 'Stamm-Ebert', 19);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-05-2022', 'dd-mm-yyyy'), to_date('16-01-2026', 'dd-mm-yyyy'), 2, 428, to_date('24-04-2024', 'dd-mm-yyyy'), 262916015, 296245026, 'Spencer and Sons', 11);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-04-2023', 'dd-mm-yyyy'), to_date('29-01-2026', 'dd-mm-yyyy'), 2, 429, to_date('05-01-2024', 'dd-mm-yyyy'), 984778784, 569513497, 'Dare-Howe', 7);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('25-09-2023', 'dd-mm-yyyy'), to_date('25-01-2026', 'dd-mm-yyyy'), 1, 430, to_date('12-12-2023', 'dd-mm-yyyy'), 987111092, 327974025, 'Boehm-Sawayn', 29);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-10-2023', 'dd-mm-yyyy'), to_date('24-01-2026', 'dd-mm-yyyy'), 1, 433, to_date('10-12-2023', 'dd-mm-yyyy'), 328994752, 479269110, 'Koch-Olson', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-09-2022', 'dd-mm-yyyy'), to_date('01-12-2025', 'dd-mm-yyyy'), 2, 435, to_date('08-03-2024', 'dd-mm-yyyy'), 334343640, 867982944, 'Bechtelar-Heaney', 26);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-06-2023', 'dd-mm-yyyy'), to_date('15-12-2025', 'dd-mm-yyyy'), 3, 436, to_date('10-12-2023', 'dd-mm-yyyy'), 551779895, 268808294, 'MacGyver-Carroll', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-06-2023', 'dd-mm-yyyy'), to_date('17-02-2026', 'dd-mm-yyyy'), 3, 437, to_date('25-03-2024', 'dd-mm-yyyy'), 937108444, 152773161, 'Ritchie-Deckow', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-08-2022', 'dd-mm-yyyy'), to_date('24-01-2026', 'dd-mm-yyyy'), 2, 438, to_date('25-02-2024', 'dd-mm-yyyy'), 943589797, 179571878, 'Hessel LLC', 31);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-06-2022', 'dd-mm-yyyy'), to_date('06-03-2026', 'dd-mm-yyyy'), 2, 440, to_date('23-04-2024', 'dd-mm-yyyy'), 548240914, 632483753, 'Rogahn and Sons', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-05-2022', 'dd-mm-yyyy'), to_date('16-03-2026', 'dd-mm-yyyy'), 2, 441, to_date('14-12-2023', 'dd-mm-yyyy'), 794813117, 356899357, 'Cronin-MacGyver', 1);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-07-2023', 'dd-mm-yyyy'), to_date('29-01-2026', 'dd-mm-yyyy'), 1, 444, to_date('04-12-2023', 'dd-mm-yyyy'), 353055007, 438564639, 'Ondricka Inc', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-09-2023', 'dd-mm-yyyy'), to_date('06-03-2026', 'dd-mm-yyyy'), 2, 445, to_date('13-12-2023', 'dd-mm-yyyy'), 816622585, 791378335, 'Baumbach-Barton', 27);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-11-2022', 'dd-mm-yyyy'), to_date('25-04-2026', 'dd-mm-yyyy'), 1, 448, to_date('15-03-2024', 'dd-mm-yyyy'), 820603539, 821127832, 'Koss LLC', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-06-2023', 'dd-mm-yyyy'), to_date('26-03-2026', 'dd-mm-yyyy'), 2, 450, to_date('02-02-2024', 'dd-mm-yyyy'), 760780439, 133820490, 'Lubowitz LLC', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-06-2022', 'dd-mm-yyyy'), to_date('10-04-2026', 'dd-mm-yyyy'), 1, 451, to_date('03-02-2024', 'dd-mm-yyyy'), 170959333, 928513262, 'Shields Inc', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-08-2023', 'dd-mm-yyyy'), to_date('23-12-2025', 'dd-mm-yyyy'), 1, 453, to_date('18-02-2024', 'dd-mm-yyyy'), 301200179, 943589797, 'Crist Inc', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-11-2023', 'dd-mm-yyyy'), to_date('20-04-2026', 'dd-mm-yyyy'), 2, 452, to_date('25-01-2024', 'dd-mm-yyyy'), 555356960, 745191532, 'Ortiz Group', 41);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-01-2023', 'dd-mm-yyyy'), to_date('18-04-2026', 'dd-mm-yyyy'), 1, 454, to_date('08-03-2024', 'dd-mm-yyyy'), 365802363, 698658592, 'White-Aufderhar', 5);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-10-2023', 'dd-mm-yyyy'), to_date('16-12-2025', 'dd-mm-yyyy'), 3, 456, to_date('15-01-2024', 'dd-mm-yyyy'), 618589680, 200401164, 'Wintheiser Inc', 36);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('04-05-2022', 'dd-mm-yyyy'), to_date('22-02-2026', 'dd-mm-yyyy'), 3, 458, to_date('17-03-2024', 'dd-mm-yyyy'), 796571213, 814306301, 'Nolan-Raynor', 49);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-02-2023', 'dd-mm-yyyy'), to_date('23-02-2026', 'dd-mm-yyyy'), 1, 459, to_date('08-12-2023', 'dd-mm-yyyy'), 631422732, 573456079, 'Hilpert-Baumbach', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-03-2023', 'dd-mm-yyyy'), to_date('25-03-2026', 'dd-mm-yyyy'), 1, 460, to_date('15-02-2024', 'dd-mm-yyyy'), 505181727, 816622585, 'Kuvalis-Krajcik', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('26-07-2022', 'dd-mm-yyyy'), to_date('12-04-2026', 'dd-mm-yyyy'), 2, 462, to_date('09-01-2024', 'dd-mm-yyyy'), 886866213, 792320978, 'Heller-Price', 45);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-11-2022', 'dd-mm-yyyy'), to_date('12-04-2026', 'dd-mm-yyyy'), 2, 464, to_date('29-12-2023', 'dd-mm-yyyy'), 589434449, 200123419, 'Leffler Inc', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('03-11-2023', 'dd-mm-yyyy'), to_date('19-02-2026', 'dd-mm-yyyy'), 3, 465, to_date('04-02-2024', 'dd-mm-yyyy'), 138247594, 409299064, 'Kessler LLC', 21);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-09-2023', 'dd-mm-yyyy'), to_date('22-03-2026', 'dd-mm-yyyy'), 1, 466, to_date('01-04-2024', 'dd-mm-yyyy'), 552596021, 213518716, 'Torp-Leffler', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('24-06-2023', 'dd-mm-yyyy'), to_date('20-04-2026', 'dd-mm-yyyy'), 2, 469, to_date('29-12-2023', 'dd-mm-yyyy'), 148700848, 272459492, 'Ziemann-Schneider', 28);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-09-2022', 'dd-mm-yyyy'), to_date('25-12-2025', 'dd-mm-yyyy'), 3, 471, to_date('20-04-2024', 'dd-mm-yyyy'), 145942921, 677241235, 'Gottlieb and Sons', 36);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-03-2023', 'dd-mm-yyyy'), to_date('26-01-2026', 'dd-mm-yyyy'), 3, 474, to_date('22-01-2024', 'dd-mm-yyyy'), 200401164, 749526793, 'Mohr-Schamberger', 26);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-12-2022', 'dd-mm-yyyy'), to_date('27-03-2026', 'dd-mm-yyyy'), 3, 475, to_date('25-04-2024', 'dd-mm-yyyy'), 656917861, 814306301, 'Padberg Group', 18);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('16-02-2023', 'dd-mm-yyyy'), to_date('06-04-2026', 'dd-mm-yyyy'), 1, 476, to_date('21-02-2024', 'dd-mm-yyyy'), 340876652, 926734748, 'Kunde-Metz', 25);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-04-2022', 'dd-mm-yyyy'), to_date('11-03-2026', 'dd-mm-yyyy'), 2, 477, to_date('04-12-2023', 'dd-mm-yyyy'), 947947426, 302162387, 'Torphy-Carroll', 28);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('29-10-2023', 'dd-mm-yyyy'), to_date('04-04-2026', 'dd-mm-yyyy'), 2, 478, to_date('22-03-2024', 'dd-mm-yyyy'), 825353221, 858121244, 'Russel-Fahey', 17);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-07-2023', 'dd-mm-yyyy'), to_date('02-01-2026', 'dd-mm-yyyy'), 3, 479, to_date('02-04-2024', 'dd-mm-yyyy'), 387606340, 338869456, 'Balistreri-Greenholt', 32);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('01-01-2022', 'dd-mm-yyyy'), to_date('10-03-2026', 'dd-mm-yyyy'), 1, 480, to_date('22-04-2024', 'dd-mm-yyyy'), 261336295, 713778816, 'Howell Group', 24);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('14-07-2022', 'dd-mm-yyyy'), to_date('23-01-2026', 'dd-mm-yyyy'), 3, 481, to_date('17-02-2024', 'dd-mm-yyyy'), 631422732, 133820490, 'Jacobson Group', 29);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('05-07-2022', 'dd-mm-yyyy'), to_date('12-04-2026', 'dd-mm-yyyy'), 2, 484, to_date('18-12-2023', 'dd-mm-yyyy'), 589434449, 860197318, 'Weber and Sons', 21);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-02-2023', 'dd-mm-yyyy'), to_date('21-01-2026', 'dd-mm-yyyy'), 2, 485, to_date('24-04-2024', 'dd-mm-yyyy'), 200401164, 262916015, 'Hintz-Reynolds', 30);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('31-01-2023', 'dd-mm-yyyy'), to_date('04-04-2026', 'dd-mm-yyyy'), 3, 487, to_date('06-03-2024', 'dd-mm-yyyy'), 820603539, 660716587, 'Champlin Inc', 1);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-07-2023', 'dd-mm-yyyy'), to_date('25-01-2026', 'dd-mm-yyyy'), 2, 491, to_date('31-01-2024', 'dd-mm-yyyy'), 426700247, 907725857, 'White-Aufderhar', 20);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('13-08-2022', 'dd-mm-yyyy'), to_date('07-03-2026', 'dd-mm-yyyy'), 1, 493, to_date('07-04-2024', 'dd-mm-yyyy'), 796571213, 858121244, 'Kunze Group', 22);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('22-07-2023', 'dd-mm-yyyy'), to_date('19-04-2026', 'dd-mm-yyyy'), 2, 494, to_date('30-04-2024', 'dd-mm-yyyy'), 285096770, 969082635, 'Flatley and Sons', 4);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-03-2023', 'dd-mm-yyyy'), to_date('11-02-2026', 'dd-mm-yyyy'), 2, 495, to_date('26-02-2024', 'dd-mm-yyyy'), 501341339, 306558475, 'Rippin Inc', 50);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('23-01-2022', 'dd-mm-yyyy'), to_date('22-04-2026', 'dd-mm-yyyy'), 3, 496, to_date('20-02-2024', 'dd-mm-yyyy'), 501341339, 754051609, 'Kessler LLC', 40);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-04-2023', 'dd-mm-yyyy'), to_date('10-01-2026', 'dd-mm-yyyy'), 3, 498, to_date('18-01-2024', 'dd-mm-yyyy'), 528244152, 597650533, 'Schinner and Sons', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-07-2022', 'dd-mm-yyyy'), to_date('18-12-2025', 'dd-mm-yyyy'), 1, 499, to_date('14-02-2024', 'dd-mm-yyyy'), 226692168, 984894238, 'Jenkins-Stiedemann', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-11-2023', 'dd-mm-yyyy'), to_date('10-02-2026', 'dd-mm-yyyy'), 3, 501, to_date('03-04-2024', 'dd-mm-yyyy'), 672697720, 280816030, 'Farrell-Mitchell', 10);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('17-11-2022', 'dd-mm-yyyy'), to_date('08-01-2026', 'dd-mm-yyyy'), 1, 506, to_date('02-03-2024', 'dd-mm-yyyy'), 438564639, 754051609, 'Farrell-Mitchell', 2);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('21-02-2023', 'dd-mm-yyyy'), to_date('05-01-2026', 'dd-mm-yyyy'), 3, 507, to_date('04-04-2024', 'dd-mm-yyyy'), 179571878, 364489062, 'Kilback-Bosco', 14);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-11-2022', 'dd-mm-yyyy'), to_date('22-04-2026', 'dd-mm-yyyy'), 2, 508, to_date('31-01-2024', 'dd-mm-yyyy'), 618589680, 270750595, 'Koss-Reynolds', 31);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-10-2022', 'dd-mm-yyyy'), to_date('05-12-2025', 'dd-mm-yyyy'), 3, 509, to_date('06-01-2024', 'dd-mm-yyyy'), 561633907, 561633907, 'Lubowitz LLC', 9);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-07-2023', 'dd-mm-yyyy'), to_date('03-04-2026', 'dd-mm-yyyy'), 2, 510, to_date('05-01-2024', 'dd-mm-yyyy'), 145942921, 528244152, 'Murphy LLC', 47);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-10-2022', 'dd-mm-yyyy'), to_date('19-12-2025', 'dd-mm-yyyy'), 1, 511, to_date('02-04-2024', 'dd-mm-yyyy'), 984778784, 791378335, 'Shields-Howe', 30);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('10-02-2022', 'dd-mm-yyyy'), to_date('08-03-2026', 'dd-mm-yyyy'), 2, 513, to_date('04-04-2024', 'dd-mm-yyyy'), 728227108, 191185593, 'Shields-Effertz', 21);
commit;
prompt 400 records committed...
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-11-2022', 'dd-mm-yyyy'), to_date('19-03-2026', 'dd-mm-yyyy'), 1, 514, to_date('14-12-2023', 'dd-mm-yyyy'), 873454319, 269280194, 'Farrell-Mitchell', 37);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-10-2022', 'dd-mm-yyyy'), to_date('17-02-2026', 'dd-mm-yyyy'), 1, 516, to_date('30-01-2024', 'dd-mm-yyyy'), 561633907, 364489062, 'Ryan-Hammes', 3);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('09-07-2023', 'dd-mm-yyyy'), to_date('02-02-2026', 'dd-mm-yyyy'), 2, 518, to_date('15-03-2024', 'dd-mm-yyyy'), 886866213, 886866213, 'Quitzon Inc', 7);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-04-2022', 'dd-mm-yyyy'), to_date('20-01-2026', 'dd-mm-yyyy'), 2, 519, to_date('19-03-2024', 'dd-mm-yyyy'), 987111092, 191185593, 'Howell-Kunze', 36);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-03-2022', 'dd-mm-yyyy'), to_date('06-03-2026', 'dd-mm-yyyy'), 3, 520, to_date('20-04-2024', 'dd-mm-yyyy'), 280816030, 420252329, 'Satterfield-Kunde', 18);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('27-03-2022', 'dd-mm-yyyy'), to_date('06-04-2026', 'dd-mm-yyyy'), 1, 521, to_date('19-03-2024', 'dd-mm-yyyy'), 365802363, 262773968, 'Smith-Kemmer', 16);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('19-05-2023', 'dd-mm-yyyy'), to_date('03-03-2026', 'dd-mm-yyyy'), 3, 522, to_date('10-03-2024', 'dd-mm-yyyy'), 528244152, 432395857, 'Casper Inc', 35);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('18-03-2022', 'dd-mm-yyyy'), to_date('12-01-2026', 'dd-mm-yyyy'), 1, 523, to_date('14-03-2024', 'dd-mm-yyyy'), 179571878, 604293473, 'McDermott-Howe', 3);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('08-05-2022', 'dd-mm-yyyy'), to_date('10-01-2026', 'dd-mm-yyyy'), 3, 524, to_date('09-03-2024', 'dd-mm-yyyy'), 304906681, 943589797, 'Rolfson LLC', 20);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('20-08-2023', 'dd-mm-yyyy'), to_date('24-12-2025', 'dd-mm-yyyy'), 1, 526, to_date('11-03-2024', 'dd-mm-yyyy'), 501670989, 597650533, 'Weber-Collier', 38);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('01-08-2022', 'dd-mm-yyyy'), to_date('07-12-2025', 'dd-mm-yyyy'), 2, 527, to_date('28-04-2024', 'dd-mm-yyyy'), 387240899, 516047372, 'Nikolaus Group', 24);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('15-06-2022', 'dd-mm-yyyy'), to_date('09-03-2026', 'dd-mm-yyyy'), 1, 528, to_date('07-12-2023', 'dd-mm-yyyy'), 475216112, 590262827, 'Hermiston-Nader', 35);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-09-2023', 'dd-mm-yyyy'), to_date('17-04-2026', 'dd-mm-yyyy'), 2, 529, to_date('26-04-2024', 'dd-mm-yyyy'), 853055600, 602343678, 'Considine-Lang', 12);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-03-2022', 'dd-mm-yyyy'), to_date('28-12-2025', 'dd-mm-yyyy'), 3, 531, to_date('27-02-2024', 'dd-mm-yyyy'), 934564941, 693105190, 'Ziemann-McKenzie', 30);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('02-09-2022', 'dd-mm-yyyy'), to_date('08-04-2026', 'dd-mm-yyyy'), 3, 534, to_date('19-04-2024', 'dd-mm-yyyy'), 603721548, 907725857, 'Waelchi-Rath', 50);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('30-10-2023', 'dd-mm-yyyy'), to_date('27-04-2026', 'dd-mm-yyyy'), 3, 535, to_date('05-12-2023', 'dd-mm-yyyy'), 158032537, 677241235, 'Stoltenberg-Connelly', 15);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('06-06-2022', 'dd-mm-yyyy'), to_date('01-03-2026', 'dd-mm-yyyy'), 3, 536, to_date('13-12-2023', 'dd-mm-yyyy'), 304381596, 864649706, 'Windler and Sons', 14);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-01-2022', 'dd-mm-yyyy'), to_date('30-01-2026', 'dd-mm-yyyy'), 3, 537, to_date('15-01-2024', 'dd-mm-yyyy'), 231319916, 867982944, 'Kessler and Sons', 42);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('07-05-2023', 'dd-mm-yyyy'), to_date('07-03-2026', 'dd-mm-yyyy'), 1, 540, to_date('11-12-2023', 'dd-mm-yyyy'), 304381596, 516047372, 'Zboncak-Moen', 39);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('12-06-2022', 'dd-mm-yyyy'), to_date('13-03-2026', 'dd-mm-yyyy'), 3, 541, to_date('26-02-2024', 'dd-mm-yyyy'), 200401164, 219689648, 'Dooley Group', 29);
insert into BLOOD_UNIT (collection_date, expiration_date, liter, unit_id, recived_date, donorid, recipientid, donationgroupname, placecode)
values (to_date('28-12-2022', 'dd-mm-yyyy'), to_date('21-12-2025', 'dd-mm-yyyy'), 3, 543, to_date('22-02-2024', 'dd-mm-yyyy'), 690317110, 746160417, 'O''Hara Group', 38);
commit;
prompt 421 records loaded
prompt Loading LAB...
insert into LAB (city, street, house_number, placecode)
values ('La Plata', 'Argentina', 7, 27);
insert into LAB (city, street, house_number, placecode)
values ('Cambridge', 'Canada', 5, 44);
insert into LAB (city, street, house_number, placecode)
values ('Ohita', 'Japan', 36, 35);
insert into LAB (city, street, house_number, placecode)
values ('San Jose', 'Costa Rica', 3, 49);
insert into LAB (city, street, house_number, placecode)
values ('Waalwijk', 'Netherlands', 23, 41);
insert into LAB (city, street, house_number, placecode)
values ('Valladolid', 'Spain', 2, 32);
insert into LAB (city, street, house_number, placecode)
values ('Green bay', 'USA', 35, 19);
insert into LAB (city, street, house_number, placecode)
values ('Bern', 'Switzerland', 7, 26);
insert into LAB (city, street, house_number, placecode)
values ('Pensacola', 'USA', 28, 1);
insert into LAB (city, street, house_number, placecode)
values ('Anchorage', 'USA', 43, 48);
insert into LAB (city, street, house_number, placecode)
values ('Angers', 'France', 46, 5);
insert into LAB (city, street, house_number, placecode)
values ('Kanazawa', 'Japan', 13, 38);
insert into LAB (city, street, house_number, placecode)
values ('Cobham', 'United Kingdom', 10, 50);
insert into LAB (city, street, house_number, placecode)
values ('Huntsville', 'USA', 4, 36);
insert into LAB (city, street, house_number, placecode)
values ('Nicosia', 'Cyprus', 11, 40);
insert into LAB (city, street, house_number, placecode)
values ('New boston', 'USA', 16, 6);
insert into LAB (city, street, house_number, placecode)
values ('Paramus', 'USA', 27, 34);
insert into LAB (city, street, house_number, placecode)
values ('Meppel', 'Netherlands', 28, 43);
insert into LAB (city, street, house_number, placecode)
values ('Northbrook', 'USA', 47, 42);
insert into LAB (city, street, house_number, placecode)
values ('Matsue', 'Japan', 1, 13);
insert into LAB (city, street, house_number, placecode)
values ('Koblenz', 'Germany', 50, 8);
insert into LAB (city, street, house_number, placecode)
values ('Traralgon', 'Australia', 32, 22);
insert into LAB (city, street, house_number, placecode)
values ('Valencia', 'USA', 24, 30);
insert into LAB (city, street, house_number, placecode)
values ('Streamwood', 'USA', 18, 25);
commit;
prompt 24 records loaded
prompt Enabling foreign key constraints for AMBULANCE...
alter table AMBULANCE enable constraint SYS_C00711195;
prompt Enabling foreign key constraints for DONOR...
alter table DONOR enable constraint SYS_C00711356;
prompt Enabling foreign key constraints for RECIPIENT...
alter table RECIPIENT enable constraint SYS_C00711360;
prompt Enabling foreign key constraints for BLOOD_UNIT...
alter table BLOOD_UNIT enable constraint SYS_C00711368;
alter table BLOOD_UNIT enable constraint SYS_C00711369;
alter table BLOOD_UNIT enable constraint SYS_C00711370;
alter table BLOOD_UNIT enable constraint SYS_C00711371;
prompt Enabling foreign key constraints for LAB...
alter table LAB enable constraint SYS_C00711201;
prompt Enabling triggers for PLACE...
alter table PLACE enable all triggers;
prompt Enabling triggers for AMBULANCE...
alter table AMBULANCE enable all triggers;
prompt Enabling triggers for DONATIONGROUP...
alter table DONATIONGROUP enable all triggers;
prompt Enabling triggers for PERSON...
alter table PERSON enable all triggers;
prompt Enabling triggers for DONOR...
alter table DONOR enable all triggers;
prompt Enabling triggers for RECIPIENT...
alter table RECIPIENT enable all triggers;
prompt Enabling triggers for BLOOD_UNIT...
alter table BLOOD_UNIT enable all triggers;
prompt Enabling triggers for LAB...
alter table LAB enable all triggers;
