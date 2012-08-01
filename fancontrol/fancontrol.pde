int fan_pin = 3;

int analog_read = 1;
int read = 0;

void setup(void)
{
  //
  Serial.begin(9600);
}

int readAnalog(void) {
  float val = analogRead(analog_read);
  int min = 5;
  int gap = 255 - min;
  float control = val * gap / 1023 + min;
  Serial.println(control);
  return control;
}

void loop(void)
{
    float read = readAnalog();
    analogWrite(fan_pin, read);         
    delay(30);                            
}
