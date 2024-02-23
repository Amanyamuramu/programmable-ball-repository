#include <Arduino.h>
#include <Adafruit_TinyUSB.h>
#include "BLEHelper.h"

#define BUTTON_PIN PIN_BUTTON1

unsigned long previousMillis = 0;
bool isButton = false;

bool checkButtonRelease(const int pin);

BleHelper ble;

void setup()
{
  Serial.begin(115200);
  pinMode(BUTTON_PIN,INPUT_PULLUP);
  ble.init();
}

void loop()
{
  /*
  unsigned long currentMillis = millis();
  if (currentMillis - previousMillis > 1000){
  }
  */
  static int counter = 0; 
  if (checkButtonRelease(BUTTON_PIN)) {
    counter++;
    ble.write("playMusic");
    if(counter%2==0){
      ble.write("1");
    }
    else{
      ble.write("0");
    }
  }
}

bool checkButtonRelease(const int pin) {
  static bool isButtonPressed = false;
  if (digitalRead(pin) == LOW) {
    isButtonPressed = true;
  } 
  if(isButtonPressed){
    if(digitalRead(pin) == HIGH){
      isButtonPressed = false;
      return true;
    }
  }
  return false;
}
