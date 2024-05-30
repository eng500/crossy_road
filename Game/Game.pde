Chicken player = new Chicken();
int ori = 1; //the chicken's direction it is facing
<<<<<<< HEAD
//Terrain test = new Lilypad(300, 300);
Terrain test2 = new Tree(300, 300);
Log test = new Log(300, 300);
=======
Log test;
>>>>>>> 0e9a0b2f7a23f909cbe7791bead50e1ebcfdc0a9
Road r1 = new Road(200);
Highway h1;
Rock ro1 = new Rock(300, 300);


void setup(){
  size(600, 600); //each square is 50x50 - 12 squares for now?
  h1 = new Highway(200);
  test = new Log(0, 300);
}

void draw(){
  background(144, 212, 108);
  h1.makeHighway();
  test.move();
  //test2.move();
  ro1.makeAvatar();
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
    //if (keyCode == SHIFT){
    //  test.makeAvatar();
    //}
  }
  print(player.getX());
  print(player.getY());
}
