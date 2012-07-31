int buz_pin = 2;
int led = 13;

void setup(void)
{
  pinMode(buz_pin, OUTPUT);
  pinMode(led, OUTPUT);     
}

void loop(void)
{
  digitalWrite(led, HIGH);
  tone(buz_pin, 1000);
  delay(200);
  noTone(buz_pin);  
  digitalWrite(led, LOW);
  delay(200);
}
