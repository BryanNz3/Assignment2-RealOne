class Menu extends GameObject{
  
  PImage header;
  
// states
  final int stateMenu                  = 0;
  final int stateLevel_1               = 1;
  final int stateLevel_2               = 2;
  final int stateLevel_3               = 3;
  int state = stateMenu;

Menu(){
  
}


void update()
{

  keyPressed();
  
  switch (state) {
  case stateMenu:
  
    display();  
    break;
    
  case stateLevel_1:
  
    handleStateLevel_1();
    break;
    
  case stateLevel_2:
  
    handleStateLevel_2();
    break;
    
    case stateLevel_3:
    
    handleStateLevel_3();
    break;
    
  default:
    println ("Unknown state (in draw) "
      + state
      + " ++++++++++++++++++++++");
    exit();
    
    break;
  } // switch



}




void keyPressed() {
  

  switch (state) {
  case stateMenu:
  
    keyPressedForStateMenu();
    break;
    
  case stateLevel_1:
  
    keyPressedForLevel_1();
    break;
    
  case stateLevel_2:
  
    keyPressedForLevel_2();
    break;
  case stateLevel_3:
  
    keyPressedForLevel_3();
    break;
    
  default:
    println ("Unknown state (in keypressed) "
      + state
      + " ++++++++++++++++++++++");
    exit();
    break;
  } // switch
  //
} // func



void keyPressedForStateMenu() {
  //
  switch(key) {
  case '1':
    state = stateLevel_1;
    break;
  case '2':
    state = stateLevel_2;
    break;
    case '3':
    state = stateLevel_3;
    break;
  case 'x':
  case 'X':
    // quit
    exit();
    break;
  default:
    // do nothing
    break;
  }// switch
  
  //
} // func



void keyPressedForLevel_1() {
  // any key is possible
  switch(key) {
  case 'q':
    state = stateMenu;
    break;
  } // switch
  //
} // func


void keyPressedForLevel_2() {
  // any key is possible
  switch(key) {
  case 'q':
    state = stateMenu;
    break;
  } // switch
  //
} // func



void keyPressedForLevel_3() {
  // any key is possible
  switch(key) {
    case 'q':
    state = stateMenu;
    break;

  } // switch
  //
}




void display() {
  background(#1F7B9B);
  fill(255);
  
  header = loadImage("header.png");
  image(header, 150, 10, 200, 200);
  
  
  textAlign(CENTER);
  textSize(14);
  text("Press 1 For Beginner Level ", 250, 250);
  textAlign(CENTER);
  text("Press 2 For Inermediate Level ", 250, 270);
  textAlign(CENTER);
  text("Press 3 For Challenger Level ", 250, 290);
  textAlign(CENTER);
  //
  text("Press x to quit ", 250, 330);
  //
} // func




void handleStateLevel_1() {
  
  String lvl = "lvl1_maze.png";
  
  //if(Runner.lives == 0){
  //  exit();
  //}
  

} // func
//



void handleStateLevel_2() {
  
  String lvl = "lvl2_maze.png";
  
  //if(Runner.lives == 0){
  //  exit();
  //}
                   
   }
     
     

void handleStateLevel_3() {
  
  String lvl = "lvl3_maze.png";
  
  //if(Runner.lives == 0){
  //  exit();
  //}
 
} 

  
  
  
  
}