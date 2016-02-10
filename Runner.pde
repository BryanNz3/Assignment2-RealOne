class Runner extends GameObject{
  
  int lives = 3;
  
  Runner(){
    
    pos.x = 40;
    pos.y = 20;
    
  }
  
  //////////////////////////////
  
  void display(){
    int X;
    int Y;
    
    X = (int) pos.x;
    Y = (int) pos.y;
    
    fill(#008080);
    stroke(#FF4500);
    ellipse(pos.x, pos.y, 12, 12);
    
    c = get(X+7, Y);
    fill(c);
    ellipse(X,Y, 6, 6);
    
  }
  
  ////////////////////////////////////
  
  void update(){
    
    keyPressed();
    
      int X ;
      int Y ;
      color ca;
      color cb;
      ca = 65536;
      cb = 16711903;

      text("Lives =" + lives, 722, 122);
      
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
        pos.y = 20;
         
        lives --;
      }

      if(b > 23936){

        pos.x = 40;
        pos.y = 20;
         
        lives --;

      }
      if(c > 1){

        pos.x = 40;
        pos.y = 20;
         
        lives --;

      }
      if(d > 23936){

        pos.x = 40;
        pos.y = 20;
         
        lives --;

      }
       
       if(a == 16711903 || b == 16711903 || c == 16711903 || d == 16711903 ){
         
         stroke(random(ca,cb));
         
         text("You Win" , width/2, height/2, 20);
         text("Press Q to Back" , width/2, height/2 + 20);
         text("Press R to Replay" , width/2, height/2 +40);
         
         
       }
       
       if(a == 65536 || b == 65536 || c == 65536 || d == 65536 ){
         
         stroke(random(ca,cb));
         
         text("You Win" , width/2, height/2, 20);
         text("Press Q to Back" , width/2, height/2 + 20);
         text("Press R to Replay" , width/2, height/2 +40);
         
         
       }
       
       if(lives == 0 ){

         
         stroke(random(ca,cb));
         
         text("You Lose" , width/2, height/2, 20);
         text("Press Q to Back" , width/2, height/2 + 20);
         text("Press R to Replay" , width/2, height/2 +40);
         
         
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
  
  if(key == 'r'){
    
    lives = 3;
    pos.x = 40;
    pos.y = 20;
    
  }

  
}
  
  
  
}