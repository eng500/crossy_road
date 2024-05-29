Chicken player = new Chicken();
Terrain test = new Lilypad(300, 300);
Road r1 = new Road(200);
Highway h1;

void setup(){
  size(600, 600); //each square is 50x50 - 12 squares for now?
  Chicken player = new Chicken();
  h1 = new Highway(200);
}

void draw(){
  h1.makeHighway();
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
