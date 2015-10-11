//STEP 1
//int ledPin = 11;
//int sensorInput = A0;
//
//void setup() {
//  pinMode(ledPin, OUTPUT);
//}
//
//void loop() {
//  int lightLevel = analogRead(A0);
//
//  digitalWrite(ledPin, HIGH);
//}

////STEP 2
//int ledPin = 11;
//int sensorInput = A0;
//
//void setup() {
//  pinMode(ledPin, OUTPUT);
//  Serial.begin(9600);
//}
//
//void loop() {
//  int lightLevel = analogRead(A0);
//
//  if (lightLevel < 12) {
//    digitalWrite(ledPin, HIGH);
//  } else {
//    digitalWrite(ledPin, LOW);
//  }
//  Serial.println(lightLevel);
//}

//STEP 6
int ledPin = 11;
int sensorInput = A0;

boolean ledIsOn = false;

void setup() {
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  int lightLevel = analogRead(A0);

  if (ledIsOn) {
    if (lightLevel > 9) {
      ledIsOn = false;
    } 
  } else {
    if (lightLevel < 7) {
      ledIsOn = true;
    }
  }
    digitalWrite(ledPin, ledIsOn);
    
    Serial.println(lightLevel);
  }
