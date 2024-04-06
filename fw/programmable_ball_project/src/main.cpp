#include <Arduino.h>
#include <Adafruit_TinyUSB.h>

#include "BLEHelper.h"
#include "Filters.h"
#include "acc_rms_i2c.hpp"

// #include "SparkFunLSM6DSO.h"
#include "Wire.h"

BleHelper ble;
Filters filter;
Acc acc;

// LSM6DSO myIMU; //Default constructor is I2C, addr 0x6B

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
  ble.init();
 

  Wire.begin();

  // pinMode(PIN_WIRE_SCL, INPUT_PULLUP);
  // pinMode(PIN_WIRE_SDA, INPUT_PULLUP);

  accInit(); //fixme ] sparkfun用の加速度センサ

  // delay(5000);
  // if( myIMU.begin(0x6B) )
  //   Serial.println("Ready.");
  // else { 
  //   Serial.println("Could not connect to IMU.");
  //   Serial.println("Freezing");
  // }

  // if( myIMU.initialize(BASIC_SETTINGS) )
  //   Serial.println("Loaded Settings.");

}

void loop()
{

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
