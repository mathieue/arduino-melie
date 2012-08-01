#include <SPI.h>
#include <WiFly.h>

#define  PIN_LED_GREEN 2
#define  PIN_LED_RED   3
#define  PIN_LED_BLUE  4

WiFlyClient client;

void setup() {
  pinMode(PIN_LED_RED, OUTPUT);
  pinMode(PIN_LED_GREEN, OUTPUT);
  pinMode(PIN_LED_BLUE, OUTPUT);

  Serial.begin(9600);
  WiFly.setUart(&Serial);
  WiFly.begin();

  if (!WiFly.join("LABXWIFI")) {
    digitalWrite(PIN_LED_RED, HIGH);
    while (1) {
      // Hang on failure.
    }
  }  

  digitalWrite(PIN_LED_GREEN, HIGH);
}

void ping() {
  if (client.connect("yourdomain", 2222)) {
    digitalWrite(PIN_LED_BLUE, HIGH);
    client.print("my local ip is: ");
    client.print(WiFly.ip());
    client.stop();
    digitalWrite(PIN_LED_BLUE, LOW);
  }
}

void loop() {
 ping();
 delay(1000);
}
