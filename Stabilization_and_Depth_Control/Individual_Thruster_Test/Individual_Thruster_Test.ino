#include <Servo.h>

int control = 0;   // for incoming serial data

byte frontright = 3;
byte frontleft = 5;
byte backright = 6;
byte backleft = 9;
byte extra1 = 10;
byte extra2 = 11; 

Servo f_r;
Servo f_l;
Servo b_r;
Servo b_l;
Servo e1;
Servo e2;

void setup() {

  Serial.begin(9600);
  Serial.println("Ready.");

  f_r.attach(frontright);
  f_l.attach(frontleft);
  b_r.attach(backright);
  b_l.attach(backleft);
  e1.attach(extra1);
  e2.attach(extra2);

  f_r.writeMicroseconds(1500);
  f_l.writeMicroseconds(1500);
  b_r.writeMicroseconds(1500);
  b_l.writeMicroseconds(1500);
  e1.writeMicroseconds(1500);
  e2.writeMicroseconds(1500);

  delay(1000); //allow esc to initialize

}

void loop() {

  int off = 1500;
  int cw_half = 1600;
  int cw_max = 1700;
  int cw_low = 1555;
  int ccw_half = 1400;
  int ccw_max = 1300;
  int ccw_low = 1445;

  if (Serial.available() > 0) {
                // read the incoming byte:
                control = Serial.read();

                // say what you got:
                if ((control >= 49 && control <=57) || (control >= 97 && control <= 111)){
                Serial.print("I received: ");
                Serial.println(control, DEC);
                }
                else{
                  Serial.println("Invalid key pressed.");
                }
        }

  if ((control <= 57 && control >= 49) || (control <= 111 && control >= 97)) {
       switch(control) {
        case 49: //1
          f_r.writeMicroseconds(cw_half);
          break;
        case 50: //2
          f_r.writeMicroseconds(ccw_half);
          break;
        case 51: //3
          f_r.writeMicroseconds(off);
          break;
        case 52: //4
          f_l.writeMicroseconds(cw_half);
          break;
        case 53: //5
          f_l.writeMicroseconds(ccw_half);
          break;
        case 54: //6
          f_l.writeMicroseconds(off);
          break;
        case 55: //7
          b_r.writeMicroseconds(cw_half);
          break;
        case 56: //8
          b_r.writeMicroseconds(ccw_half);
          break;
        case 57: //9
          b_r.writeMicroseconds(off);
          break;
        case 97: //a
          b_l.writeMicroseconds(cw_half);
          break;
        case 98: //b
          b_l.writeMicroseconds(ccw_half);
          break;
        case 99: //c
          b_l.writeMicroseconds(off);
          break;
        case 100: //d
          e1.writeMicroseconds(cw_max); //left forward
          break;
        case 101: //e
          e1.writeMicroseconds(ccw_max);
          break;
        case 102: //f
          e2.writeMicroseconds(ccw_max); //right forward
          break;
        case 103: //g
          e2.writeMicroseconds(cw_max);
          break;
        case 104: //h
          f_r.writeMicroseconds(cw_max);
          f_l.writeMicroseconds(cw_max);
          b_r.writeMicroseconds(1400);
          b_l.writeMicroseconds(1600);
          e1.writeMicroseconds(off);
          e2.writeMicroseconds(off);
          break;
        case 105: //i = forward??
          f_r.writeMicroseconds(1600);
          f_l.writeMicroseconds(1600);
          b_r.writeMicroseconds(ccw_max);
          b_l.writeMicroseconds(cw_max);
          e1.writeMicroseconds(off);
          e2.writeMicroseconds(off);
          break;
        case 106: //j 
          f_r.writeMicroseconds(cw_max);
          f_l.writeMicroseconds(ccw_max);
          b_r.writeMicroseconds(ccw_half);
          b_l.writeMicroseconds(cw_half);
          e1.writeMicroseconds(cw_max);
          e2.writeMicroseconds(off);
          break;
        case 107: //k
          f_r.writeMicroseconds(ccw_half);
          f_l.writeMicroseconds(ccw_half);
          b_r.writeMicroseconds(off);
          b_l.writeMicroseconds(off);
          e1.writeMicroseconds(ccw_half);
          e2.writeMicroseconds(off);
          break;
        case 108: //forward, l
          f_r.writeMicroseconds(off);
          b_l.writeMicroseconds(off);
          f_l.writeMicroseconds(off);
          b_r.writeMicroseconds(off);
          e1.writeMicroseconds(1600);
          e2.writeMicroseconds(1400);
          break;
        case 109: // m
          f_r.writeMicroseconds(off);
          b_l.writeMicroseconds(off);
          f_l.writeMicroseconds(off);
          b_r.writeMicroseconds(off);
          e1.writeMicroseconds(1600);
          e2.writeMicroseconds(1600);
          break;
        case 110: //kill all, n
          f_r.writeMicroseconds(off);
          f_l.writeMicroseconds(off);
          b_r.writeMicroseconds(off);
          b_l.writeMicroseconds(off);
          e1.writeMicroseconds(off);
          e2.writeMicroseconds(off);
          break;
        case 111: //o
          f_r.writeMicroseconds(off);
          b_l.writeMicroseconds(off);
          f_l.writeMicroseconds(off);
          b_r.writeMicroseconds(off);
          e1.writeMicroseconds(1600);
          e2.writeMicroseconds(1400);
          break;
       }
  }

}
