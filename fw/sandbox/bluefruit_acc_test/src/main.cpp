#include <Arduino.h>
#include <Adafruit_TinyUSB.h>

#include "BLEHelper.h"
#include "acc_rms_i2c.hpp"
#include "Filters.h"

#define BUTTON_PIN PIN_BUTTON1

BleHelper ble;
Acc acc;
Filters filter;

float prev_rms = 0;
unsigned long previousMillis = 0;
bool isButton = false;
float prev_acc_data[3] = {0};

bool checkButtonRelease(const int pin);
void accInit();
float accDiff();

void setup()
{
  Serial.begin(115200);
  pinMode(BUTTON_PIN,INPUT_PULLUP);

  ble.init(); //BLEの初期化

  Wire.begin();
  accInit(); //加速度センサの初期化
}

void loop()
{
  static int counter = 0; 
  if (checkButtonRelease(BUTTON_PIN)) {
    counter++;
    if(counter%2==0){
      ble.write("1");
      Serial.println("playCommand");
    }
    else{
      ble.write("0");
      Serial.println("stopCommand");
    }
  }

  float rms = accDiff();
  // Serial.println(rms);

  if(rms>=1.0){
    unsigned long currentMillis = millis();
    if(currentMillis - previousMillis >= 150){
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
  acc.setup();                           // IMUのセットアップ
  acc.getIMU();                          // IMUからデータを取得
  float *imu_data = acc.getData();       // 取得したデータへのポインタを取得
  for(uint8_t i = 0; i < 3; i++){
    prev_acc_data[i] = imu_data[i];
    Serial.print(imu_data[i]);Serial.print(", ");
  }
  prev_rms = sqrt((pow(imu_data[0], 2) + pow(imu_data[1], 2) + pow(imu_data[2], 2))/3);
}
/*
float accDiff(){
  acc.getIMU(); 
  float *imu_data = acc.getData();
  float rms = sqrt((pow(imu_data[0], 2) + pow(imu_data[1], 2) + pow(imu_data[2], 2))/3);
  for (int i = 0; i < 3; i++)
  {
    Serial.print(imu_data[i]);Serial.print(", ");
  }
  float diff_rms = rms - prev_rms;
  prev_rms = rms;
  //閾値は1.3
  return diff_rms;
}
*/
float accDiff(){
  acc.getIMU(); 
  float *imu_data = acc.getData();
  float lpf[3] = {0};
  float hpf[3] = {0};
  for (uint8_t i = 0; i < 3; i++){
    lpf[i] = filter.applyLowPassFilter(imu_data[i],prev_acc_data[i]);
    prev_acc_data[i] = imu_data[i];
    hpf[i] = filter.applyHighPassFilter(imu_data[i],lpf[i]);
    // Serial.print(hpf[i]);Serial.print(", ");
  }
  /*
  float rms = sqrt((pow(imu_data[0], 2) + pow(imu_data[1], 2) + pow(imu_data[2], 2))/3);
  float diff_rms = rms - prev_rms;
  prev_rms = rms;
  //閾値は1.3
  */
 
  float rms = sqrt((pow(hpf[0], 2) + pow(hpf[1], 2) + pow(hpf[2], 2))/3);
  return rms;
}