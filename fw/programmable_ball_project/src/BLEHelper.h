#ifndef BLEHELPER_H_
#define BLEHELPER_H_

#include <bluefruit.h>
#include <ArduinoJson.h>

class BleHelper{

public:
    void init();
    void write(const char* msg);

private:
    // void scan_callback(ble_gap_evt_adv_report_t *report);
    // void connect_callback(uint16_t conn_handle);
    // void disconnect_callback(uint16_t conn_handle, uint8_t reason);
    // void hrm_notify_callback(BLEClientCharacteristic *chr, uint8_t *data, uint16_t len);
    // int getRssi(BLEClientCharacteristic *chr);
};

#endif // BLEHELPER_H_
