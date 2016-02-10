class Maze extends GameObject{
  
  PImage maze;
  
  
  
  Maze(String lvl){
    
    String ab = "lvl1_maze.png";
    
    maze = loadImage(ab);
    
    
  }
  
//////////////////////////////////


  void display(){
    
    image(maze, 0, 0, width, height);
    
    
  }
  
  //////////////////////////////
  
  void update(){
    
    
  }
  
  
  
}