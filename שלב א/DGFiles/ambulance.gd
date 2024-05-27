
[General]
Version=1

[Preferences]
Username=
Password=2268
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=TKEMPFNE
Name=AMBULANCE
Count=50

[Record]
Name=LICENSE_NUMBER
Type=VARCHAR2
Size=8
Data=Random(10000000, 99999999)
Master=

[Record]
Name=PLACECODE
Type=NUMBER
Size=
Data=List(select PlaceCode from Place)
Master=

