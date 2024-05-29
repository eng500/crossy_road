Chicken player = new Chicken();
Terrain test = new Tree(300, 300);

void setup(){
  size(600, 600); //each square is 50x50 - 12 squares for now?
  Chicken player = new Chicken();
  //Terrain test = new Lilypad(300, 300);
}

void draw(){
}

void keyPressed(){
  if (key == CODED){
    if (keyCode == UP){
      player.move(1);
    }
    if (keyCode == DOWN){
      player.move(2);
    }
    if (keyCode == LEFT){
      player.move(3);
    }
    if (keyCode == RIGHT){
      player.move(4);
    }
    
    // for testing terrain:
    if (keyCode == SHIFT){
      test.makeAvatar();
    }
  }
  print(player.getX());
  print(player.getY());
}
