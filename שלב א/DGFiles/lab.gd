
[General]
Version=1

[Preferences]
Username=
Password=2486
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=TKEMPFNE
Name=LAB
Count=20

[Record]
Name=CITY
Type=VARCHAR2
Size=20
Data=City
Master=

[Record]
Name=STREET
Type=VARCHAR2
Size=20
Data=Country
Master=

[Record]
Name=HOUSE_NUMBER
Type=NUMBER
Size=
Data=Random(1, 50)
Master=

[Record]
Name=PLACECODE
Type=NUMBER
Size=
Data=List(select PlaceCode from Place)
Master=

