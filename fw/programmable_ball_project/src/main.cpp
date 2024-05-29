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
bool isButton = false;
float prev_acc_data[3] = {0};

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

  //スキャンの開始
  scanI2CDevices();

  //LSM6DSOのセットアップ
  delay(1000);
  if( myIMU.begin(0x6B))//0x6B default, 0x6A(sa0 is gnd)
    Serial.println("Ready.");
  else { 
    Serial.println("Could not connect to IMU.");
    Serial.println("Freezing");
  }

  if( myIMU.initialize(BASIC_SETTINGS) )
    Serial.println("Loaded Settings.");

}

unsigned long timeVoltageCheck = millis();

void loop()
{
  //電圧値の更新
  if(millis() - timeVoltageCheck > 1000){
    float vol = getBatteryVoltage();
    float per = batteryPercentage(vol);
    Serial.println(per);

    char checkType[2] = "B";
    char myChar[20];
    sprintf(myChar, "%s %2.2f", checkType,per); 
    ble.write(myChar);
    timeVoltageCheck = millis();
  }

  //LSM6DSOの出力確認
  /*
  Serial.print("\nAccelerometer:\n");
  Serial.print(" X = ");
  Serial.println(myIMU.readFloatAccelX(), 3);
  Serial.print(" Y = ");
  Serial.println(myIMU.readFloatAccelY(), 3);
  Serial.print(" Z = ");
  Serial.println(myIMU.readFloatAccelZ(), 3);

  Serial.print("\nGyroscope:\n");
  Serial.print(" X = ");
  Serial.println(myIMU.readFloatGyroX(), 3);
  Serial.print(" Y = ");
  Serial.println(myIMU.readFloatGyroY(), 3);
  Serial.print(" Z = ");
  Serial.println(myIMU.readFloatGyroZ(), 3);

  Serial.print("\nThermometer:\n");
  Serial.print(" Degrees F = ");
  Serial.println(myIMU.readTempF(), 3);
  */

  float rms = accDiff();
  if(rms>=1.0){
    unsigned long currentMillis = millis();
    if(currentMillis - previousMillis >= 150){
      ble.write("0");
      ble.write("1");
      previousMillis = millis();
      Serial.println("send signal for play mp3");
    }
  }

 delay(500);
}

void scanI2CDevices() {
  Serial.println("Scanning for I2C devices...");
  byte count = 0;

  while (count == 0) {
    for (byte i = 1; i < 127; i++) {
      Wire.beginTransmission(i);
      if (Wire.endTransmission() == 0) {
        Serial.print("I2C device found at address 0x");
        if (i < 16) Serial.print("0");
        Serial.print(i, HEX);
        Serial.println(" !");
        count++;
      }
    }

    if (count == 0) {
      Serial.println("No I2C devices found. Retry");
      delay(1000);
    } else {
      Serial.print("Found ");
      Serial.print(count, DEC);
      Serial.println(" device(s).");
    }
  }
}


/*
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
*/

/*
float accDiff(){
  acc.getIMU(); 
  float *imu_data = acc.getData();
  float lpf[3] = {0};
  float hpf[3] = {0};
  for (uint8_t i = 0; i < 3; i++){
    lpf[i] = filter.applyLowPassFilter(imu_data[i],prev_acc_data[i]);
    prev_acc_data[i] = imu_data[i];
    hpf[i] = filter.applyHighPassFilter(imu_data[i],lpf[i]);

    // Serial.print("\nAccelerometer:\n"+i);
    // Serial.print(imu_data[i]);

  }
  float rms = sqrt((pow(hpf[0], 2) + pow(hpf[1], 2) + pow(hpf[2], 2))/3);
  // Serial.println(rms);
  return rms;
}
*/

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