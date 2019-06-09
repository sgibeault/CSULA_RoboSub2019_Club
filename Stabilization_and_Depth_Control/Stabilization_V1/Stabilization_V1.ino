/* Robosub 2018-2019 Stabilization Code 
 *  Current Revision: 052219
 *  Joseph Daniel Iorio
 *  
 *  -- Revision log --
 *  040619: PID gains tuned during 04/06/19 pool testing. Depth control implemented. 
 *  0502219: Integrated new IMU (Adafrtuit/Bosch BNO055)
 *  
 */


#include <Wire.h>
#include <Servo.h>
#include "MS5837.h"
#include <Adafruit_BNO055.h>
#define BNO055_SAMPLERATE_DELAY_MS (100)

Adafruit_BNO055 bno = Adafruit_BNO055();



MS5837 sensor;



//Servo thruster_front;
//Servo thruster_back;
//Servo thruster_left;
//Servo thruster_right;

Servo thruster_frontright;
Servo thruster_frontleft;
Servo thruster_backright;
Servo thruster_backleft;
Servo thruster_sideright;
Servo thruster_sideleft;



float elapsedTime, time, timePrev;
float PIDY, PIDX, PIDZ, pwmFrontRight, pwmFrontLeft, pwmBackRight, pwmBackLeft, pwmSideLeft, pwmSideRight, errorY, errorX, errorZ, previous_errorY, previous_errorX, previous_errorZ, current_depth, PID_depth, depth_error, previous_depth_error;
float pid_pY=0;
float pid_iY=0;
float pid_dY=0;
float pid_pX=0;
float pid_iX=0;
float pid_dX=0;
float pid_pZ=0;
float pid_iZ=0;
float pid_dZ=0;
float pid_p_depth = 0;
float pid_d_depth = 0;
float pid_i_depth = 0;
float y_angle = 0;
float x_angle = 0;
float z_angle = 0;

/////////////////PID GAINS/////////////////
double kp=3.5;// 3.5 WORKED
double ki=0;// 0 WOKRED
double kd=4;// 4 WORKED
///////////////////////////////////////////////



double throttle=1500; //Motor throttle --> Linearized control about this nominal thruster setting (0 thrust since we don't want thrusters constantly running)
float desired_angle = 0; //Setpoint angle
float desired_depth = 1; //Setpoint depth





void setup() {
  Wire.begin(); //begin the wire comunication
  Serial.begin(9600);
  thruster_frontright.attach(5); //attatch the front to pin 3
  thruster_frontleft.attach(6);  //attatch the backthruster to pin 5
  thruster_backright.attach(7); //attach the right thruster to pin 6
  thruster_backleft.attach(9); //attach the left thruster to pin 9
  thruster_sideright.attach(10); // etc.
  thruster_sideleft.attach(11); // etc.
  
  time = millis(); //Time is in miliseconds
  thruster_frontright.writeMicroseconds(1500); 
  thruster_frontleft.writeMicroseconds(1500);
  thruster_backright.writeMicroseconds(1500); 
  thruster_backleft.writeMicroseconds(1500);
  //delay(5000); /* Start up delay */

  /* Initialise the IMU */
  if(!bno.begin())
  {
    /* There was a problem detecting the BNO055 ... check your connections */
    Serial.print("Ooops, no BNO055 detected ... Check your wiring or I2C ADDR!");
    while(1);
  }
  bno.setExtCrystalUse(true);



  /* Set up Barometer */
  
  sensor.setModel(MS5837::MS5837_30BA);
  sensor.setFluidDensity(997); // kg/m^3 (freshwater, 1029 for seawater)
   
}//end of setup void

void loop() {

    timePrev = time;  // the previous time is stored before the actual time read
    time = millis();  // actual time read
    elapsedTime = (time - timePrev) / 1000; 

/////////////////////////////I M U/////////////////////////////////////
  
    
    Wire.beginTransmission(0x28);
    imu::Vector<3> euler = bno.getVector(Adafruit_BNO055::VECTOR_EULER);

    y_angle = euler.y();
    x_angle = euler.z();
    z_angle = euler.x(); //Note: IMU interprets vertical axis as x-axis, but we'll refer to it as z-axis 

/*Calculate error between measured and desired angle*/

errorY =  y_angle - desired_angle;
errorX = x_angle - desired_angle;
errorZ = z_angle - desired_angle;


if (errorZ<-180){
  errorZ+=360;
}
else if (errorZ>180){
  errorZ-=360;
}

    
/* Calculate proportional PID term */

pid_pY = kp*errorY;
pid_pX = kp*errorX;
pid_pZ = kp*errorZ;

/* Calculate the integral PID term, only when error is +/- 10 degrees */
//
//if(-10 <errorY <10)
//{
//  pid_iY = pid_iY+(ki*errorY);  
//}
//
//if(-10 <errorX <10)
//{
//  pid_iX = pid_iX+(ki*errorX);  
//}


/*Calculate derivative PID term */

pid_dY = kd*((errorY - previous_errorY)/elapsedTime);
pid_dX = kd*((errorX - previous_errorX)/elapsedTime);
pid_dZ = kd*((errorZ - previous_errorZ)/elapsedTime);

/*Sum all PID terms */

PIDY = pid_pY + pid_dY;
PIDX = pid_pX + pid_dX;
PIDZ = pid_pZ + pid_dZ;


/*Place bounds on PID terms */

//if(PIDY < -100)
//{
//  PIDY=-100;
//}
//if(PIDY > 100)
//{
//  PIDY=100;
//}
//
//if(PIDX < -100)
//{
//  PIDX=-100;
//}
//if(PIDX > 100)
//{
//  PIDX=100;
//}

/*Calculate PWM signal --> Throttle + PID terms = Motor Mixing Algorithm */

/*
Layout for how the PID terms interact with front/back/left/right thrusters
pwmFront = throttle + PIDX;
pwmBack = throttle - PIDX;
pwmRight = throttle - PIDY;
pwmLeft = throttle + PIDY;
*/

/* Barometer  */
 Wire.beginTransmission(0x76); // begin comm with barometer
 sensor.read(); // get data from barometer
 current_depth = sensor.depth(); // create current depth variable
 depth_error = desired_depth - current_depth; // calculate the error between current depth and desired depth
//  Serial.print("Depth: "); 
//  Serial.print(sensor.depth()); 
//  Serial.println(" m");

/* Barometer PID terms */

pid_p_depth = kp*depth_error;


//if(-.01 <depth_error <.01)
//{
//  pid_i_depth = pid_i_depth+(ki*depth_error);
//}

pid_d_depth = kd*((depth_error - previous_depth_error)/elapsedTime);


 
PID_depth = pid_p_depth + pid_d_depth;

/* Motor Mixing Algorithm */

//Front Thrusters
//pwmFrontRight = throttle + PIDX - PIDY + PID_depth;
//pwmFrontLeft = throttle + PIDX + PIDY + PID_depth;

pwmFrontRight = throttle + PIDX - PIDY;
pwmFrontLeft = throttle + PIDX + PIDY;

//Back Thrusters
//pwmBackRight = throttle - PIDX - PIDY + PID_depth;
//pwmBackLeft = throttle - PIDX + PIDY + PID_depth;

pwmBackRight = throttle - PIDX - PIDY;
pwmBackLeft = throttle - PIDX + PIDY;


//Side Thrusters


pwmSideRight = throttle + PIDZ;
pwmSideLeft = throttle - PIDZ;


/*Place bounds on PWM signal */


//Front
if(pwmFrontRight < 1525)
{
  pwmFrontRight= 1500;
}
if(pwmFrontRight > 1600)
{
  pwmFrontRight=1600;
}

if(pwmFrontLeft < 1525)
{
  pwmFrontLeft= 1500;
}
if(pwmFrontLeft > 1600)
{
  pwmFrontLeft=1600;
}
//Back
if(pwmBackRight < 1525)
{
  pwmBackRight= 1500;
}
if(pwmBackRight > 1600)
{
  pwmBackRight=1600;
}

if(pwmBackLeft < 1525)
{
  pwmBackLeft= 1500;
}
if(pwmBackLeft > 1600)
{
  pwmBackLeft=1600;
}
if(pwmSideRight > 1600)
{
  pwmSideRight=1600;
}
if(pwmSideRight < 1525)
{
  pwmSideRight=1500;
}
if(pwmSideLeft > 1600)
{
  pwmSideLeft=1600;
}
if(pwmSideLeft < 1525)
{
  pwmSideLeft=1500;
}

thruster_frontright.writeMicroseconds(pwmFrontRight); 
thruster_frontleft.writeMicroseconds(pwmFrontLeft);
thruster_backright.writeMicroseconds(pwmBackRight); 
thruster_backleft.writeMicroseconds(pwmBackLeft);
thruster_sideright.writeMicroseconds(pwmSideRight);
thruster_sideleft.writeMicroseconds(pwmSideLeft);

//Store errors for next loop

previous_errorY = errorY; 
previous_errorX = errorX;
previous_errorZ = errorZ;
//previous_depth_error = depth_error;
//
//Serial.println(current_depth);

Serial.print(z_angle);
Serial.print(' ');
Serial.print(pwmSideLeft);
Serial.print(' ');
Serial.println(pwmSideRight);

}