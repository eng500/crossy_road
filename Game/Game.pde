//public ArrayList<int[]> oList = new ArrayList<int[]>();
Chicken player = new Chicken();
int ori = 1; //the chicken's direction it is facing;
int timer;
Camera camera = new Camera();
//River r1 = new River(200, 200);

void setup(){
  size(600, 600); //each square is 50x50 - 12 squares for now  
}

void draw(){
  background(144, 212, 108);
  if (player.danger() == true){
    player.die();
  }
  
  player.autoBlock();
  player.dieOffScreen();
  
  //on the board:
  // valid x values range from 0-550
  //x value of a square starts from left side's x
  //x = 0 is 1st square, x = 250 is 6th square, x = 300 is 7th square, x = 550 is 12th square
  
  //valid y values range from 0-550
  //y value of a square starts from top side's y
  //y = 0 is 1st square, x = 250 is 6th square, y = 300 is 7th square, y = 550 is 12th square
  
  /**
  fill(0);
  rect(0, 0, 50, 50);
  rect(0, 100, 50, 50);
  rect(0, 200, 50, 50);
  rect(0, 300, 50, 50);
  rect(0, 400, 50, 50);
  rect(0, 500, 50, 50);
  
  fill(255);
  rect(50, 0, 50, 50);
  rect(150, 0, 50, 50);
  rect(250, 0, 50, 50);
  rect(350, 0, 50, 50);
  rect(450, 0, 50, 50);
  rect(550, 0, 50, 50);
  */
    
  //camera.makeAvatars();

/**
  if (millis() - timer >= 2000) { // does the below actions every ? seconds
    camera.addTerrain();
    camera.advanceCam();
    timer = millis();
  }
  if (millis() - timer >= 2000) {
    camera.advanceCam();
    timer = millis();
  }
  */
  
  //r1.makeAvatar();
  //println(r1.roundX() + " " + r1.roundY());
  
  
  player.makeAvatar(ori);


  //println("Original chickne X: " + player.getX());
  //println("Original chickne Y: " + player.getY());
  //player.die();

  //h1.makeHighway();

  if (millis() - timer >= 1000) { // does the below actions every ? seconds
    camera.addTerrain();
    camera.advanceCam();
    timer = millis();
  }  
  
  camera.makeAvatars();
  player.makeAvatar(ori);

  //if (millis() - timer >= 500) { // does the below actions every ? seconds
  //  camera.addTerrain();
  //  camera.advanceCam();
  //  timer = millis();
  //}
  //ro1.makeAvatar();
  //c1.move();
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
  }

}
