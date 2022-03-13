#include<Servo.h>
#include<SoftwareSerial.h>
Servo myServo;
SoftwareSerial mySerial(2,3);
int myCommand=-1;
int flag=0;

void setup() {
  Serial.begin(9600);
  mySerial.begin(9600);
  myServo.attach(9);
}

void loop() {
  if(mySerial.available()>0)
  {
    myCommand=mySerial.read();
    flag=1;
  }
  if(flag == 1)
  {
    switch(myCommand)
    {
      case '0': myServo.write(180);break; //Open door
      case '1': myServo.write(45);break;  //Close door
      default: printf("error");break;
    }
  }
}
