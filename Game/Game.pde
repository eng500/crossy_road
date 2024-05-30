Chicken player = new Chicken();
int ori = 1; //the chicken's direction it is facing
Terrain test = new Lilypad(300, 300);
Terrain test2 = new Tree(300, 300);
Road r1 = new Road(200);
Highway h1;
Rock ro1 = new Rock(300, 300);


void setup(){
  size(600, 600); //each square is 50x50 - 12 squares for now?
  h1 = new Highway(200);
}

void draw(){
  background(144, 212, 108);
  h1.makeHighway();
  player.makeAvatar(ori);
  ro1.makeAvatar();
}

void keyPressed(){
  if (key == CODED){
    if (keyCode == UP){
      ori = 1;
      player.move(ori);
    }
    if (keyCode == DOWN){
      ori = 2;
      player.move(ori);
    }
    if (keyCode == LEFT){
      ori = 3;
      player.move(ori);
    }
    if (keyCode == RIGHT){
      ori = 4;
      player.move(ori);
    }
    
    // for testing terrain:
    if (keyCode == SHIFT){
      test.makeAvatar();
    }
  }
  print(player.getX());
  print(player.getY());
}
