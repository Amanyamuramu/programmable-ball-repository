// main.cpp

#include "acc_rms_i2c.hpp"

Acc acc; // Accクラスのインスタンスを作成

void setup()
{
  acc.setup(); // IMUのセットアップ
}

void loop()
{
  acc.getIMU();                          // IMUからデータを取得
  float *imu_data = acc.getData();       // 取得したデータへのポインタを取得
  unsigned long current_time = millis(); // 現在の時刻を取得
  if ((acc.lastPrint + acc.PRINT_SPEED) < current_time)
  { // データを出力するタイミングかどうかをチェック
    for (int i = 0; i < 13; i++)
    {
      Serial.print(imu_data[i]); // データをシリアル出力
      Serial.print(", ");
    }
    Serial.println();
    Serial.print(">rms:");
    Serial.println(imu_data[13]);
    acc.lastPrint = current_time; // 最後にデータを出力した時刻を更新
  }
}
