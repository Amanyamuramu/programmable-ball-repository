#include "BLEHelper.h"

const char OWN_DEVICE_MODEL[] = "A-PB-P01";

// OTA DFU service
// BLEDfu bledfu;

// Peripheral uart service
BLEUart bleuart;

// BLEClientService hrms(UUID16_SVC_HEART_RATE);
// BLEClientCharacteristic hrmc(UUID16_CHR_HEART_RATE_MEASUREMENT);

/* define custom service
#define CUSTOM_SERVICE_UUID    "199a9fa8-94f8-46bc-8228-ce67c9e807e6"
#define CUSTOM_CHAR_UUID       "208c149e-8266-4686-8918-981e90546c2a"
BLEService customService(CUSTOM_SERVICE_UUID);
BLECharacteristic customChar(CUSTOM_CHAR_UUID);
*/

/**
 * Callback invoked when an connection is established
 * @param conn_handle
 */
/*------------------------------------------------------------------*/
/* Peripheral
 *------------------------------------------------------------------*/
void prph_connect_callback(uint16_t conn_handle)
{
  
  // Get the reference to current connection
  BLEConnection* connection = Bluefruit.Connection(conn_handle);

  char peer_name[32] = { 0 };
  connection->getPeerName(peer_name, sizeof(peer_name));

  Serial.print("[Prph] Connected to ");
  Serial.println(peer_name);
}

void prph_disconnect_callback(uint16_t conn_handle, uint8_t reason)
{
  (void) conn_handle;
  (void) reason;

  Serial.println();
  Serial.println("[Prph] Disconnected");
}

void prph_bleuart_rx_callback(uint16_t conn_handle)
{
  (void) conn_handle;
  
  // Forward data from Mobile to our peripheral
  char str[20+1] = { 0 };
  bleuart.read(str, 20);

  Serial.print("[Prph] RX: ");
  Serial.println(str);
}


void startAdvertising() {
  // Advertising packet
  Bluefruit.Advertising.addFlags(BLE_GAP_ADV_FLAGS_LE_ONLY_GENERAL_DISC_MODE);
  Bluefruit.Advertising.addTxPower();

  // Bluefruit.Advertising.addService(customService);
  Bluefruit.Advertising.addService(bleuart);

  // Secondary Scan Response packet (optional)
  // Since there is no room for 'Name' in Advertising packet
  Bluefruit.ScanResponse.addName();

  Bluefruit.Advertising.restartOnDisconnect(true);
  Bluefruit.Advertising.setInterval(32, 244);    // in unit of 0.625 ms
  Bluefruit.Advertising.setFastTimeout(30);      // number of seconds in fast mode
  Bluefruit.Advertising.start(0);                // 0 = Don't stop advertising after n seconds
}

void customChar_write_callback(uint16_t conn_hdl, BLECharacteristic* chr, uint8_t* data, uint16_t len) {
  Serial.print("Received data: ");
  for (uint16_t i = 0; i < len; i++) {
    Serial.print((char)data[i]);
  }
  Serial.println();
}

void BleHelper::init(){

  // Bluefruit.autoConnLed(true); // default false
  Bluefruit.configPrphConn(256, BLE_GAP_EVENT_LENGTH_DEFAULT, BLE_GATTS_HVN_TX_QUEUE_SIZE_DEFAULT, BLE_GATTC_WRITE_CMD_TX_QUEUE_SIZE_DEFAULT);

  Bluefruit.begin(1, 1); //Peripheral = 0, Central = 1
  // Bluefruit.setTxPower(4);    // Check bluefruit.h for supported values
  const char device_serial[] = "01";
  char own_device_full_name[32] = {0};
  strcpy(own_device_full_name+strlen(own_device_full_name), OWN_DEVICE_MODEL);
  strcpy(own_device_full_name+strlen(own_device_full_name), "-");
  strcpy(own_device_full_name+strlen(own_device_full_name), device_serial);
  Bluefruit.setName(own_device_full_name);

  // Increase Blink rate to different from PrPh advertising mode
  // Bluefruit.setConnLedInterval(250);

  // Callbacks for Peripheral
  Bluefruit.Periph.setConnectCallback(prph_connect_callback);
  Bluefruit.Periph.setDisconnectCallback(prph_disconnect_callback);

  // Configure and Start BLE Uart Service
  bleuart.begin();
  bleuart.setRxCallback(prph_bleuart_rx_callback);

  startAdvertising();
}

void BleHelper::write(const char* msg) {
  bleuart.write(msg);
}