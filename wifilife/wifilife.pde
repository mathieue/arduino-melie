#include <SPI.h>
#include <WiFly.h>

Client client("mathieu-elie.net", 80);

void setup() {
  WiFly.begin();

  if (!WiFly.join("m")) {
    // 
  }


  if (client.connect()) {
    client.println("GET /arduinomatt");
    client.println();
  } else {
  }
}

void loop(void)
{
  while(SpiSerial.available() > 0) {
    char c = SpiSerial.read();
    SpiSerial.print(c, BYTE);
  }
  
  if(Serial.available()) { // Outgoing data
    char c = SpiSerial.read();
    SpiSerial.print(c, BYTE);
  }

}
