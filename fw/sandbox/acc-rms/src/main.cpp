#include "acc_rms_i2c.hpp"
Acc acc;

float prev_rms = 0;

void setup(){
  Serial.begin(115200);
  Wire.begin();
  acc.setup(); // IMUのセットアップ
  acc.getIMU();                          // IMUからデータを取得
  float *imu_data = acc.getData();       // 取得したデータへのポインタを取得
  prev_rms = sqrt((pow(imu_data[0], 2) + pow(imu_data[1], 2) + pow(imu_data[2], 2))/3);
}

void loop(){
  acc.getIMU();                          // IMUからデータを取得
  float *imu_data = acc.getData();       // 取得したデータへのポインタを取得
  // for (int i = 0; i < 13; i++)
  // {
  //   Serial.print(imu_data[i]); // データをシリアル出力
  //   Serial.print(", ");
  // }
  float rms = sqrt((pow(imu_data[0], 2) + pow(imu_data[1], 2) + pow(imu_data[2], 2))/3);

  float result = rms - prev_rms;
  prev_rms = rms;
  Serial.println();Serial.print(">diff:");Serial.println(result);
  // Serial.println();Serial.print(">rms:");Serial.println(prev_rms);

  // unsigned long current_time = millis(); // 現在の時刻を取得
  // if ((acc.lastPrint + acc.PRINT_SPEED) < current_time)
  // { // データを出力するタイミングかどうかをチェック
    /*
    for (int i = 0; i < 13; i++)
    {
      Serial.print(imu_data[i]); // データをシリアル出力
      Serial.print(", ");
    }
    */
    // Serial.println();Serial.print(">rms:");Serial.println(imu_data[13]);
    // acc.lastPrint = current_time; // 最後にデータを出力した時刻を更新
  // }
  delay(20);
}
