class Maze extends GameObject{
  
  PImage maze;
  
  
  Maze(){
    
    maze = loadImage("lvl1_maze.png");
    
    
  }
  
//////////////////////////////////


  void display(){
    
    image(maze, 0, 0, width, height);
    
    
  }
  
  //////////////////////////////
  
  void update(){
    
    
  }
  
  
  
}