#include <DigiMouse.h>
unsigned int LowerCycleTime = 500; //Minimum Time in milli-seconds between each mouse action  Default: 10000 (10 Seconds), Max 65535ms
unsigned int UpperCycleTime = 1000; //Maximum Time in milli-seconds between each mouse action  Default: 30000 (30 Seconds), Max 65535ms
//Random Function will randomly execute a mouse move between these two values
void setup() {
  randomSeed(analogRead(0));  //Random Seed off background noise on analog pin
  pinMode(1, OUTPUT);
  DigiMouse.begin(); //start

}
void loop() {
//Moves mouse 1 pixel in a direction (up/down/left/right) in a square

  digitalWrite(1, HIGH);
  DigiMouse.moveY(1000000);
  DigiMouse.delay(50);
  digitalWrite(1, LOW);
  DigiMouse.delay(random(LowerCycleTime, UpperCycleTime));

  digitalWrite(1, HIGH);
  DigiMouse.moveX(1000000); //
  DigiMouse.delay(50);
  digitalWrite(1, LOW);
  DigiMouse.delay(random(LowerCycleTime, UpperCycleTime));

  digitalWrite(1, HIGH);
  DigiMouse.moveY(-1000000);
  DigiMouse.delay(50);
  digitalWrite(1, LOW);
  DigiMouse.delay(random(LowerCycleTime, UpperCycleTime));

  digitalWrite(1, HIGH);
  DigiMouse.moveX(-1000000);
   DigiMouse.delay(50);
  digitalWrite(1, LOW);
  DigiMouse.delay(random(LowerCycleTime, UpperCycleTime));

}
