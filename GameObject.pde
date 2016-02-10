abstract class GameObject{
  
  PVector pos;
  PImage maze;
  color c;
  color b;
  color a;
  color d;
  
  GameObject(){
    
    
    
    pos = new PVector(0,0);
    
  }
  
  abstract void display();
  abstract void update();
  
}