#include <Arduino.h>
#include <Adafruit_TinyUSB.h>
#include "BLEHelper.h"
#include "acc_rms_i2c.hpp"

#define BUTTON_PIN PIN_BUTTON1

BleHelper ble;
Acc acc;
float prev_rms = 0;
unsigned long previousMillis = 0;
bool isButton = false;

bool checkButtonRelease(const int pin);
void accInit();
float accDiff();

void setup()
{
  Serial.begin(115200);
  pinMode(BUTTON_PIN,INPUT_PULLUP);
  Wire.begin();
  ble.init();
  accInit();
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

  float rms_difference = accDiff();
  Serial.println(rms_difference);
  delay(10);
  if(abs(rms_difference)>=1.3){
    unsigned long currentMillis = millis();
    if(currentMillis - previousMillis >= 300){
      ble.write("0");
      ble.write("1");
      previousMillis = millis();
      Serial.println("send signal for play mp3");
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

void accInit(){
  acc.setup(); // IMUのセットアップ
  acc.getIMU();                          // IMUからデータを取得
  float *imu_data = acc.getData();       // 取得したデータへのポインタを取得
  prev_rms = sqrt((pow(imu_data[0], 2) + pow(imu_data[1], 2) + pow(imu_data[2], 2))/3);
  for (int i = 0; i < 13; i++)
  {
    Serial.print(imu_data[i]);Serial.print(", ");
  }
}

float accDiff(){
  acc.getIMU(); 
  float *imu_data = acc.getData();
  float rms = sqrt((pow(imu_data[0], 2) + pow(imu_data[1], 2) + pow(imu_data[2], 2))/3);
  float diff_rms = rms - prev_rms;
  prev_rms = rms;
  //閾値は1.3
  return diff_rms;
}