#include "DigiKeyboard.h"

void setup() {
  digitalWrite(1,HIGH);

  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);

  delay(100);

  DigiKeyboard.print("powershell.exe");

  DigiKeyboard.sendKeyStroke(KEY_ENTER);

  delay(500);

  DigiKeyboard.print("Function Set-Speaker($Volume){$wshShell = new-object -com wscript.shell;1..50 | % {$wshShell.SendKeys([char]174)};1..$Volume | % {$wshShell.SendKeys([char]175)}}");

  DigiKeyboard.sendKeyStroke(KEY_ENTER);

  delay(10);

  DigiKeyboard.print("Set-Speaker -Volume 50");

  DigiKeyboard.sendKeyStroke(KEY_ENTER);

  delay(10);

  //Add YouTube Link here!

  DigiKeyboard.print("start chrome.exe https://www.youtube.com/watch?v=xvFZjo5PgG0");

    DigiKeyboard.sendKeyStroke(KEY_ENTER);

    delay(10);

      DigiKeyboard.sendKeyStroke(KEY_L, MOD_GUI_LEFT);

  digitalWrite(1,LOW);
}


void loop() {



}
