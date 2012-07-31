int buz_pin = 2;
int analog_read = 0;
float ratio = 7000 / 1023; // freq max / VMAX

int val = 0;
int freq;

void setup(void)
{
  pinMode(buz_pin, OUTPUT);
}

void loop(void)
{
  val = analogRead(analog_read);

  freq = val * ratio;
  
  tone(buz_pin, freq);
  delay(5);
}
