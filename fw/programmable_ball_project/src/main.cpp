#include <Arduino.h>
#include <Adafruit_TinyUSB.h>
#include "BLEHelper.h"
#include "Filters.h"

#include "SparkFunLSM6DSO.h"
#include "Wire.h"

BleHelper ble;
Filters filter;
LSM6DSO myIMU; //Default constructor is I2C, addr 0x6B

float prev_rms = 0;
unsigned long previousMillis = 0;
float prev_acc_data[3] = {0};

unsigned long timeVoltageCheck = millis();

//プロトタイプ宣言
bool checkButtonRelease(const int pin);
void accInit();
float accDiff();
float getBatteryVoltage();
float batteryPercentage(float voltage);
void scanI2CDevices();

void setup()
{
  Serial.begin(115200);
  ble.init();
  analogReadResolution(10);
  pinMode(PIN_AIN5, INPUT);
  // pinMode(PIN_WIRE_SCL, INPUT_PULLUP);
  // pinMode(PIN_WIRE_SDA, INPUT_PULLUP);
  Wire.begin();
  //scanI2CDevices();
  delay(1000);
  //LSM6DSOのセットアップ
  if( myIMU.begin(0x6B))//0x6B default, 0x6A(sa0 is gnd)
    Serial.println("Ready.");
  else { 
    Serial.println("Could not connect to IMU.");
    Serial.println("Freezing");
  }
  if( myIMU.initialize(BASIC_SETTINGS) )
    Serial.println("Loaded Settings.");
}

void loop()
{
  /*LSM6DSOの出力確認
  Serial.println(myIMU.readFloatAccelX(), 3);
  Serial.println(myIMU.readFloatAccelY(), 3);
  Serial.println(myIMU.readFloatAccelZ(), 3);
  */

  float rms = accDiff();
  if(rms>=1.0){
    unsigned long currentMillis = millis();
    if(currentMillis - previousMillis >= 150){
      ble.write("0");
      ble.write("1");
      previousMillis = millis();
      Serial.println("collision is detected, send signal for play mp3");
    }
  }

    //電圧値の更新(rmsの確認)
  if(millis() - timeVoltageCheck > 1000){
    float vol = getBatteryVoltage();
    float per = batteryPercentage(vol);
    Serial.println(per);

    char checkType[2] = "B";
    char myChar[20];
    sprintf(myChar, "%s %2.2f", checkType,per); 
    ble.write(myChar);
    timeVoltageCheck = millis();

    Serial.print("RMS: ");
    Serial.println(rms, 3); // RMSの値を表示
  }
}

void accInit(){
  float imu_data[3] = {myIMU.readFloatAccelX(), myIMU.readFloatAccelY(), myIMU.readFloatAccelZ()};
  for(uint8_t i = 0; i < 3; i++){
    prev_acc_data[i] = imu_data[i];
    Serial.print(imu_data[i]); Serial.print(", ");
  }
  prev_rms = sqrt((pow(imu_data[0], 2) + pow(imu_data[1], 2) + pow(imu_data[2], 2)) / 3);
  Serial.print("Initial RMS: ");
  Serial.println(prev_rms);
}

float accDiff(){
  float imu_data[3] = {myIMU.readFloatAccelX(), myIMU.readFloatAccelY(), myIMU.readFloatAccelZ()};
  float lpf[3] = {0};
  float hpf[3] = {0};

  for (uint8_t i = 0; i < 3; i++){
    lpf[i] = filter.applyLowPassFilter(imu_data[i], prev_acc_data[i]);
    prev_acc_data[i] = imu_data[i];
    hpf[i] = filter.applyHighPassFilter(imu_data[i], lpf[i]);
  }

  float rms = sqrt((pow(hpf[0], 2) + pow(hpf[1], 2) + pow(hpf[2], 2)) / 3);
  return rms;
}

// VBAT
float getBatteryVoltage()
{
  const float referenceVoltage = 3.3; // ADC reference voltage
  const int resolution = 1023; //2^10
  const float R1 = 100000.0; // divided register's upper value
  const float R2 = 100000.0; // under value
  const float voltageDividerRatio = R2 / (R1 + R2);

  int sensorValue = analogRead(PIN_AIN5);
  float voltage = sensorValue * (referenceVoltage / resolution);
  return voltage / voltageDividerRatio; // 分圧比でスケーリング
}

float batteryPercentage(float voltage) {
  const float fullChargeVoltage = 4.2;  // バッテリーのフルチャージ電圧
  const float dischargeVoltage = 3.0;  // 安全な放電限界電圧

  if (voltage >= fullChargeVoltage) {
    return 100.0;  // 100% charged
  } else if (voltage <= dischargeVoltage) {
    return 0.0;  // Completely discharged
  } else {
    float percentage = (voltage - dischargeVoltage) / (fullChargeVoltage - dischargeVoltage) * 100.0;
    return percentage;  // 現在の残量をパーセンテージで計算
  }
}
