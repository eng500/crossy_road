Chicken player = new Chicken();
<<<<<<< HEAD
int ori = 1; //the chicken's direction it is facing
Terrain test = new Lilypad(300, 300);
=======
Terrain test = new Tree(300, 300);
>>>>>>> fd892c4ccd1064426234971ffe552e9d4968c2d3
Road r1 = new Road(200);
Highway h1;


void setup(){
  size(600, 600); //each square is 50x50 - 12 squares for now?
  h1 = new Highway(200);
}

void draw(){
  background(144, 212, 108);
  h1.makeHighway();
  player.makeAvatar(ori);
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
