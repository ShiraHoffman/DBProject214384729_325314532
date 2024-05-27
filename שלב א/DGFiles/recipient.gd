
[General]
Version=1

[Preferences]
Username=
Password=2132
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=TKEMPFNE
Name=RECIPIENT
Count=400

[Record]
Name=MEDICAL_CONDITION
Type=VARCHAR2
Size=20
Data=List('Critical', 'Mortal','Non-Citical')
Master=

[Record]
Name=RECIPIENTID
Type=NUMBER
Size=
Data=List(select PersonID from Person)
Master=

