//in the cv codes: "if we're too far from the obstacle (say within 1ft) send command "go straight"
//again and recalculate in the loop function"


#define turnTime 1000;




void setup(){

  
  
}





void loop(){

  if(/*received "go straight"*/){
    Time(/*distance from CV code*/);
    GoStraight(/*number of seconds*/);
    Thruster1(/*number of seconds*/);
  }

  else if(/*received "turn left 90"*/){
    TurnLeft90();
  }
  else if(/*received "turn right 90"*/){
    TurnRight90();
  }
  else if(/*received "turn 180"*/){
    TurnRight90();
  }
  
}






