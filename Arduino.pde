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

////STEP 6
//int ledPin = 11;
//int sensorInput = A0;
//
//boolean ledIsOn = false;
//
//void setup() {
//  pinMode(ledPin, OUTPUT);
//  Serial.begin(9600);
//}
//
//void loop() {
//  int lightLevel = analogRead(A0);
//
//  if (ledIsOn) {
//    if (lightLevel > 9) {
//      ledIsOn = false;
//    } 
//  } else {
//    if (lightLevel < 7) {
//      ledIsOn = true;
//    }
//  }
//    digitalWrite(ledPin, ledIsOn);
//    
//    Serial.println(lightLevel);
//}

//-------------------------------------------RED YELLOW GREEN

////STEP 2
//int greenPin = 4;
//int yellowPin = 5;
//int redPin = 6;
//
//void setup() {
//  pinMode(greenPin, OUTPUT);
//  pinMode(yellowPin, OUTPUT);
//  pinMode(redPin, OUTPUT);
//}
//
//void loop() {
//  digitalWrite(greenPin, HIGH);
//  delay(10000);
//  digitalWrite(greenPin, LOW);
//  digitalWrite(yellowPin, HIGH);
//  delay(3600);
//  digitalWrite(yellowPin, LOW);
//  digitalWrite(redPin, HIGH);
//  delay(30000);
//  digitalWrite(redPin, LOW);
//}

////STEP4
//int greenPin = 4;
//int yellowPin = 5;
//int redPin = 6;
//
//int greenPin2 = 9;
//int yellowPin2 = 10;
//int redPin2 = 11;
//
//void setup() {
//  pinMode(greenPin, OUTPUT);
//  pinMode(yellowPin, OUTPUT);
//  pinMode(redPin, OUTPUT);
//
//  pinMode(greenPin2, OUTPUT);
//  pinMode(yellowPin2, OUTPUT);
//  pinMode(redPin2, OUTPUT);
//}
//
//void loop() {
//  // start green for first signal.
//  digitalWrite(redPin, LOW);
//  digitalWrite(greenPin, HIGH);
//  delay(10000);
//
//  // go to yellow and red for first signal.
//  digitalWrite(greenPin, LOW);
//  digitalWrite(yellowPin, HIGH);
//  delay(3600);
//  digitalWrite(yellowPin, LOW);
//  digitalWrite(redPin, HIGH);
//  delay(2000);
//
//  // green on second signal.
//  digitalWrite(redPin2, LOW);
//  digitalWrite(greenPin2, HIGH);
//  delay(10000);
//
//  // go to yellow and red for second signal.
//  digitalWrite(greenPin2, LOW);
//  digitalWrite(yellowPin2, HIGH);
//  delay(3600);
//  digitalWrite(yellowPin2, LOW);
//  digitalWrite(redPin2, HIGH);
//  delay(2000);
//}

//STEPH 7
int greenPin = 4;
int yellowPin = 5;
int redPin = 6;

int greenPin2 = 9;
int yellowPin2 = 10;
int redPin2 = 11;

int sensorPin = A0;

void setup() {
  pinMode(greenPin, OUTPUT);
  pinMode(yellowPin, OUTPUT);
  pinMode(redPin, OUTPUT);

  pinMode(greenPin2, OUTPUT);
  pinMode(yellowPin2, OUTPUT);
  pinMode(redPin2, OUTPUT);

  // start with green on the thoroughfare and red on the side street.
  digitalWrite(greenPin, HIGH);
  digitalWrite(redPin2, HIGH);
}

void loop() {
  if (analogRead(sensorPin) < 500) {
    // go to yellow and red on the thoroughfare.
    digitalWrite(greenPin, LOW);
    digitalWrite(yellowPin, HIGH);
    delay(3200);
    digitalWrite(yellowPin, LOW);
    digitalWrite(redPin, HIGH);
    delay(1000);

    // go to green on the side street.
    digitalWrite(redPin2, LOW);
    digitalWrite(greenPin2, HIGH);
    delay(10000);

    // go to yellow and red on the side street.
    digitalWrite(greenPin2, LOW);
    digitalWrite(yellowPin2, HIGH);
    delay(3200);
    digitalWrite(yellowPin2, LOW);
    digitalWrite(redPin2, HIGH);
    delay(1000);

    // go back to green on the thoroughfare
    digitalWrite(redPin, LOW);
    digitalWrite(greenPin, HIGH);
  }
  Serial.println(sensorPin);
}
