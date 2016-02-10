class Maze extends GameObject{
  
  PImage maze;
  
  String ab;
  
  Maze(String lvl){
    
    ab = lvl;
    
    
    
  }
  
//////////////////////////////////


  void display(){
    
      maze = loadImage(ab);
      color cb;
      cb = 16711903;
    
    fill(cb);
    
    image(maze, 0, 0, width, height);
    
    if(ab == "lvl1_maze.png"){
    
    ellipse(750,700,50,50);
    
  }
    
    
  }
  
  //////////////////////////////
  
  void update(){
    
    
  }
  
  
  
}