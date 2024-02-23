// acc.hpp

#ifndef ACC_HPP
#define ACC_HPP

#include <Wire.h>
#include <SparkFunLSM9DS1.h>

class Acc
{
public:
    Acc();                              // コンストラクタ
    void setup();                       // 初期化関数
    void getIMU();                      // IMUからデータを取得する関数
    float *getData();                   // 取得したデータへのポインタを返す関数
    static const int PRINT_SPEED = 150; // データを出力する間隔 (ミリ秒)
    unsigned long lastPrint;            // 最後にデータを出力した時刻を保持する変数

private:
    LSM9DS1 imu;                         // IMUオブジェクト
    static const byte LSM9DS1_M = 0x1E;  // コンパスのI2C初期アドレス
    static const byte LSM9DS1_AG = 0x6B; // 加速度とジャイロのI2C初期アドレス
    float imu_9dof[14];                  // IMUから取得したデータを格納する配列
};

#endif
