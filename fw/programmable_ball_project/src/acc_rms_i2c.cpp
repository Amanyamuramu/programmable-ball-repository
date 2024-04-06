// acc.cpp

#include "acc_rms_i2c.hpp"

Acc::Acc()
{
    lastPrint = 0;
}

void Acc::setup()
{
    if (imu.begin(LSM9DS1_AG, LSM9DS1_M, Wire) == false)
    {
        Serial.println("Failed to communicate with LSM9DS1.");
        while (1)
            ;
    }
    Serial.println("ax,ay,az,gx,gy,gz,mx,my,mz,temp,roll,pitch,yaw");
    delay(100);
}

void Acc::getIMU()
{
    if (imu.gyroAvailable())
    {
        imu.readGyro();
    }
    if (imu.accelAvailable())
    {
        imu.readAccel();
    }
    if (imu.magAvailable())
    {
        imu.readMag();
    }
    if (imu.tempAvailable())
    {
        imu.readTemp();
    }
    imu_9dof[0] = imu.calcAccel(imu.ax);
    imu_9dof[1] = imu.calcAccel(imu.ay);
    imu_9dof[2] = imu.calcAccel(imu.az);
    imu_9dof[3] = imu.calcGyro(imu.gx);
    imu_9dof[4] = imu.calcGyro(imu.gy);
    imu_9dof[5] = imu.calcGyro(imu.gz);
    imu_9dof[6] = imu.calcMag(imu.mx);
    imu_9dof[7] = imu.calcMag(imu.my);
    imu_9dof[8] = imu.calcMag(imu.mz);
    imu_9dof[9] = imu.temperature;
    imu_9dof[10] = atan2(imu.ay, imu.az) * 180.0 / PI;
    imu_9dof[11] = atan2(-imu.ax, sqrt(imu.ay * imu.ay + imu.az * imu.az)) * 180.0 / PI;
    imu_9dof[12] = atan2(imu.mx, imu.my) * 180.0 / PI;
    imu_9dof[13] = sqrt((pow(imu_9dof[0], 2) + pow(imu_9dof[1], 2) + pow(imu_9dof[2]-1.03, 2))/3);
}

float *Acc::getData()
{
    return imu_9dof;
}
