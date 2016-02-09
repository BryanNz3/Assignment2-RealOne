class Runner extends GameObject{
  
  
  
  Runner(){
    
    
    
    
  }
  
  //////////////////////////////
  
  void display(){
    int X;
    int Y;
    
    X = (int) pos.x;
    Y = (int) pos.y;
    
    ellipse(pos.x, pos.y, 12, 12);
    
    c = get(X, Y);
    fill(c);
    ellipse(X,Y, 6, 6);
    
  }
  
  ////////////////////////////////////
  
  void update(){
    
    //white  = -1
    //Black = -16777216   d == 7 &&
    
    if (b > 1 ) {
          pos.x = 40;
          pos.y = 10;
          text(b, 122, 122);
        }
    
  }
  
  ///////////////////////////////////////////////
  
  void keyPressed(){

  if (key == CODED) //Controls Player movement
  {
    if (keyCode == UP)
    { 
      pos.y -=  5;
    } else if (keyCode == DOWN)
    {
      pos.y +=  5;
    } else if (keyCode == LEFT)
    {
      pos.x -=  5;
    } else if (keyCode == RIGHT)
    {
      pos.x +=  5;
    }
  }
  
}
  
  
  
}