//Menu menu;

  Maze m = new Maze("lvl1_maze.png");
  Predator pln = new Predator(0,0);
  Runner plr = new Runner();

void setup(){
  size(800,750);
  
  //fullScreen();
  //menu = new Menu();
  
}

void draw(){
  
  //menu.update();
  
  m.display();
  plr.display();
  plr.update();
  
  pln.seek(plr.pos);
  pln.update();
  pln.display();
  
  
}