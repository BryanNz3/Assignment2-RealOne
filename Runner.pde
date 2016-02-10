class Runner extends GameObject{
  
  
  
  Runner(){
    
    
    
    
  }
  
  //////////////////////////////
  
  void display(){
    int X;
    int Y;
    
    X = (int) pos.x;
    Y = (int) pos.y;
    
    fill(#008080);
    stroke(#FF4500);
    ellipse(X, Y, 12, 12);
    ellipse(pos.x, pos.y, 12, 12);
    
    c = get(X, Y);
    fill(c);
    ellipse(X,Y, 6, 6);
    
  }
  
  ////////////////////////////////////
  
  void update(){
    
      int X ;
      int Y ;


      
      X = (int) pos.x;
      Y = (int) pos.y;
    
      a = get(X+7, Y);
      b = get(X-7, Y);
      c = get(X, Y+7);
      d = get(X, Y-7);
      
      a = a* -1;
      b = b* -1;
      c = c* -1;
      d = d* -1;
      
      if (a > 1 ) {
         pos.x = 40;
         pos.y = 10;
       }

      if(b > 23936){

         pos.x = 40;
         pos.y = 10;

       }
       if(c > 1){

         pos.x = 40;
         pos.y = 10;

       }
       if(d > 23936){

         pos.x = 40;
         pos.y = 10;

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