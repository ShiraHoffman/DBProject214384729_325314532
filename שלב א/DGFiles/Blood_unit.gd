
[General]
Version=1

[Preferences]
Username=
Password=2515
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=TKEMPFNE
Name=BLOOD_UNIT
Count=500

[Record]
Name=COLLECTION_DATE
Type=DATE
Size=
Data=Random(1/1/2022, 1/12/2023)
Master=

[Record]
Name=EXPIRATION_DATE
Type=DATE
Size=
Data=Random(1/1/2025, 1/12/2026)
Master=

[Record]
Name=LITER
Type=NUMBER
Size=
Data=List(1,2,3,4)
Master=

[Record]
Name=UNIT_ID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=RECIVED_DATE
Type=DATE
Size=
Data=Random(1/12/2023, 1/5/2024)
Master=

[Record]
Name=DONORID
Type=NUMBER
Size=
Data=List(selectDonorID from Donor) 
Master=

[Record]
Name=RECIPIENTID
Type=NUMBER
Size=
Data=List(select RecipientID from Recipient)
Master=

[Record]
Name=DONATIONGROUPNAME
Type=VARCHAR2
Size=20
Data=List(select DonationGroupName from DonationGroup)
Master=

[Record]
Name=PLACECODE
Type=NUMBER
Size=
Data=List(select PlaceCode from Place)
Master=

