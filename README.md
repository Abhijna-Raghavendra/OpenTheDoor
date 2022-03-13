# quadsquad
*PROJECT NAME*
OpenTheDoor

*INTRODUCTION*
One of the major reasons for the ideation of this project was a general lack of security in hostel rooms of students.
Using this project, we aim to create a safer environment by giving authorized only access to the hostel doors,
using our in-house built hardware device.  
Another benefit is that you can access your room without having a physical key.

*DESCRIPTION*
GENERAL
-We have used the Arduino hardware device to manually lock and unlock the door.
-The user connects to the Arduino device through bluetooth.
-We have made the hardware device by integrating an Arduino device with a door latch. On receiving input from the user, the latch will open or close.

BACK-END
-The email-ids of the room members, along with Arduino-id (Unique to a room) are stored in the Firebase Cloud Database.
-The authentication of the user is done through Firebase Authentication.

FRONT-END
-The user logs in through the 'Login through Google' feature in the Home Page, using his Google credentials
-The credentials entered are verified with the ones stored in the Firebase cloud database.
-After verification, the user is directed to the next page,
where user is prompted to connect his device to the specific Arduino device through Bluetooth.
-After establishing connection, there is a choice of either locking or unlocking the room door.

*BUILD STATUS*
The process of integrating Firebase Database in order to verify the emailid of the user from our existing database, to the project is still underway.
All the other aspects are complete and ready to use.

*DEPENDENCIES*
Firebase module
Bluetooth module


*TECHNOLOGIES*
This project is created with:
- Flutter
- Dart
- Firebase
- C++
- Arduino

*AUTHORS*
-Abhijna Raghvendra
@Abhijna-Raghavendra
-Mansi Gupta
@MansiGupta1603
-Anjali
@anjaliagg1012
-Manyana Tiwari
@manyana72