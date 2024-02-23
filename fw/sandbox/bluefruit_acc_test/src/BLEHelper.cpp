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

  // if ( clientUart.discovered() )
  // {
  //   clientUart.print(str);
  // }else
  // {
  //   bleuart.println("[Prph] Central role not connected");
  // }

  // this is original
  // fixme not using json? or define cmd:trigger
  /*
  static char jsonStr[256] = { 0 };
  static int jsonStrCount = 0;

  while (bleuart.available()) {
    char c = bleuart.read();
    if (c != '\n') {
      jsonStr[jsonStrCount++] = c;
    }
    else {
      jsonStr[jsonStrCount++] = 0;

      JsonDocument doc;
      deserializeJson(doc, jsonStr);

      char reply[256];
      size_t reply_len = 0;

      if (doc.containsKey("cmd")) {
        if (strcmp(doc["cmd"], "set_profile") == 0) {
          Serial.println("Set profile command");
          if (
            doc.containsKey("age")
            && doc.containsKey("gender")
            && doc.containsKey("height")
            && doc.containsKey("weight")
            && doc.containsKey("bath_size")
            && doc.containsKey("hr_sensor")
          ) {
            age = doc["age"];
            gender = doc["gender"];
            height = doc["height"];
            weight = doc["weight"];
            bathtub_size = doc["bath_size"];
            hr_sensor = doc["hr_sensor"].as<std::string>();

            Serial.printf("Age: %d\r\n", age);
            Serial.printf("Gender: %s\r\n", gender==0?"Male":gender==1?"Female":"Unspecified");
            Serial.printf("Height: %.2fcm\r\n", height);
            Serial.printf("Weight: %.2fkg\r\n", weight);
            Serial.printf("Bathtub size: %.1fm\r\n", bathtub_size);
            Serial.printf("HR sensor: %s\r\n", hr_sensor.c_str());

            reply_len = snprintf(reply, sizeof(reply), "{\"cmd\": \"set_profile_done\"}");
          }
          else {
            Serial.println("A key is missing from the data");
            reply_len = snprintf(reply, sizeof(reply), "{\"cmd\":\"error\",\"error\":\"Key missing from profile data\"}");
          }
        }
        else if (strcmp(doc["cmd"], "get_profile") == 0) {
          Serial.println("Get profile command");

          reply_len = snprintf(reply, sizeof(reply), 
            "{\"cmd\":\"profile\",\"age\":%d,\"gender\":%d,\"height\":%.2f,\"weight\":%.2f,\"bath_size\":%.1f,\"hr_sensor\":\"%s\"}",
            age, gender, height, weight, bathtub_size, hr_sensor.c_str()
          );
        }
        else if (strcmp(doc["cmd"], "set_time") == 0) {
          Serial.println("Set time command");
          if (doc.containsKey("timestamp")) {
            uint32_t timestamp = doc["timestamp"];

            Serial.printf("Timestamp: %lu\r\n", timestamp);

            reply_len = snprintf(reply, sizeof(reply), "{\"cmd\": \"set_time_done\"}");
          }
          else {
            Serial.println("A key is missing from the data");
            reply_len = snprintf(reply, sizeof(reply), "{\"cmd\":\"error\",\"error\":\"Key missing from time data\"}");
          }
        }
        else {
          Serial.printf("Unknown command '%s'\r\n", doc["cmd"].as<std::string>().c_str());
          reply_len = snprintf(reply, sizeof(reply), "{\"cmd\":\"error\",\"error\":\"Unknown cmd\"}");
        }
      }
      else {
        Serial.println("JSON does not contain a command");
        reply_len = snprintf(reply, sizeof(reply), "{\"cmd\":\"error\",\"error\":\"No cmd\"}");
      }

      reply[reply_len++] = '\n';

      bleuart.write(reply, reply_len);

      jsonStrCount = 0;
    }
  };
  */
}

/*
static int age = 50;
static int gender = 2;
static float height = 170.0;
static float weight = 60.0;
static float bathtub_size = 1.4;
static std::string hr_sensor = "";
*/

/*
void prph_bleuart_rx_callback(uint16_t conn_handle) {
  (void) conn_handle;

  static char jsonStr[256] = { 0 };
  static int jsonStrCount = 0;

  while (bleuart.available()) {
    char c = bleuart.read();
    if (c != '\n') {
      jsonStr[jsonStrCount++] = c;
    }
    else {
      jsonStr[jsonStrCount++] = 0;

      JsonDocument doc;
      deserializeJson(doc, jsonStr);

      char reply[256];
      size_t reply_len = 0;

      if (doc.containsKey("cmd")) {
        if (strcmp(doc["cmd"], "set_profile") == 0) {
          Serial.println("Set profile command");
          if (
            doc.containsKey("age")
            && doc.containsKey("gender")
            && doc.containsKey("height")
            && doc.containsKey("weight")
            && doc.containsKey("bath_size")
            && doc.containsKey("hr_sensor")
          ) {
            age = doc["age"];
            gender = doc["gender"];
            height = doc["height"];
            weight = doc["weight"];
            bathtub_size = doc["bath_size"];
            hr_sensor = doc["hr_sensor"].as<std::string>();

            Serial.printf("Age: %d\r\n", age);
            Serial.printf("Gender: %s\r\n", gender==0?"Male":gender==1?"Female":"Unspecified");
            Serial.printf("Height: %.2fcm\r\n", height);
            Serial.printf("Weight: %.2fkg\r\n", weight);
            Serial.printf("Bathtub size: %.1fm\r\n", bathtub_size);
            Serial.printf("HR sensor: %s\r\n", hr_sensor.c_str());

            reply_len = snprintf(reply, sizeof(reply), "{\"cmd\": \"set_profile_done\"}");
          }
          else {
            Serial.println("A key is missing from the data");
            reply_len = snprintf(reply, sizeof(reply), "{\"cmd\":\"error\",\"error\":\"Key missing from profile data\"}");
          }
        }
        else if (strcmp(doc["cmd"], "get_profile") == 0) {
          Serial.println("Get profile command");

          reply_len = snprintf(reply, sizeof(reply), 
            "{\"cmd\":\"profile\",\"age\":%d,\"gender\":%d,\"height\":%.2f,\"weight\":%.2f,\"bath_size\":%.1f,\"hr_sensor\":\"%s\"}",
            age, gender, height, weight, bathtub_size, hr_sensor.c_str()
          );
        }
        else if (strcmp(doc["cmd"], "set_time") == 0) {
          Serial.println("Set time command");
          if (doc.containsKey("timestamp")) {
            uint32_t timestamp = doc["timestamp"];

            Serial.printf("Timestamp: %lu\r\n", timestamp);

            reply_len = snprintf(reply, sizeof(reply), "{\"cmd\": \"set_time_done\"}");
          }
          else {
            Serial.println("A key is missing from the data");
            reply_len = snprintf(reply, sizeof(reply), "{\"cmd\":\"error\",\"error\":\"Key missing from time data\"}");
          }
        }
        else {
          Serial.printf("Unknown command '%s'\r\n", doc["cmd"].as<std::string>().c_str());
          reply_len = snprintf(reply, sizeof(reply), "{\"cmd\":\"error\",\"error\":\"Unknown cmd\"}");
        }
      }
      else {
        Serial.println("JSON does not contain a command");
        reply_len = snprintf(reply, sizeof(reply), "{\"cmd\":\"error\",\"error\":\"No cmd\"}");
      }

      reply[reply_len++] = '\n';

      bleuart.write(reply, reply_len);

      jsonStrCount = 0;
    }
  };
}
*/

void startAdvertising() {
  // Advertising packet
  Bluefruit.Advertising.addFlags(BLE_GAP_ADV_FLAGS_LE_ONLY_GENERAL_DISC_MODE);
  Bluefruit.Advertising.addTxPower();

  // Bluefruit.Advertising.addService(customService);
  Bluefruit.Advertising.addService(bleuart);

  // Secondary Scan Response packet (optional)
  // Since there is no room for 'Name' in Advertising packet
  Bluefruit.ScanResponse.addName();

  /* Start Advertising
  * - Enable auto advertising if disconnected
  * - Interval:  fast mode = 20 ms, slow mode = 152.5 ms
  * - Timeout for fast mode is 30 seconds
  * - Start(timeout) with timeout = 0 will advertise forever (until connected)
  *
  * For recommended advertising interval
  * https://developer.apple.com/library/content/qa/qa1931/_index.html
  */
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

  /*
  customService.begin();
  customChar.setProperties(CHR_PROPS_READ | CHR_PROPS_WRITE);
  customChar.setPermission(SECMODE_OPEN, SECMODE_OPEN);
  customChar.setUserDescriptor("TG-BMD-P01_SERVICE");
  customChar.setMaxLen(20);
  customChar.begin();
  */

  // hrms.begin();
  // hrmc.setNotifyCallback(hrm_notify_callback);
  // hrmc.begin();

  // customChar.setWriteCallback(customChar_write_callback);

  // Increase Blink rate to different from PrPh advertising mode
  Bluefruit.setConnLedInterval(250);

  // Callbacks for Peripheral
  Bluefruit.Periph.setConnectCallback(prph_connect_callback);
  Bluefruit.Periph.setDisconnectCallback(prph_disconnect_callback);

  // Callbacks for Central
  // Bluefruit.Central.setConnectCallback(connect_callback);
  // Bluefruit.Central.setDisconnectCallback(disconnect_callback);

  // Configure and Start BLE Uart Service
  bleuart.begin();
  bleuart.setRxCallback(prph_bleuart_rx_callback);

  // Bluefruit.Scanner.setRxCallback(scan_callback);
  // Bluefruit.Scanner.restartOnDisconnect(true);
  // Bluefruit.Scanner.setInterval(160, 80);
  // // Bluefruit.Scanner.filterUuid(hrms.uuid);
  // Bluefruit.Scanner.useActiveScan(true);
  // Bluefruit.Scanner.start(0);

  startAdvertising();
}

void BleHelper::write(const char* msg) {
  bleuart.write(msg);
}