//on the board:
  // valid x values range from 0-550
  //x value of a square starts from left side's x
  //x = 0 is 1st square, x = 250 is 6th square, x = 300 is 7th square, x = 550 is 12th square
  
  //valid y values range from 0-550
  //y value of a square starts from top side's y
  //y = 0 is 1st square, x = 250 is 6th square, y = 300 is 7th square, y = 550 is 12th square
  
  /**
  //Testing Square Spaces on the Board
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

Chicken player = new Chicken();
int ori = 1; //the chicken's direction it is facing;
int timer;
Camera camera = new Camera();


void setup(){
  size(600, 600); //each square is 50x50 - 12 squares for now  
}

void draw(){
  background(144, 212, 108);
  
  if (millis() - timer >= 750) { // does the below actions every increment of seconds
    camera.addTerrain();
    camera.advanceCam();
    player.addPoint();
    timer = millis();
    player.autoMove();
  }  
  
  player.autoBlock();
  player.dieOffScreen();
  
  if (player.danger() == true && !player.onLily()){
    player.die();
  }
  
  camera.makeAvatars();
  player.makeAvatar(ori);
  text(player.getPoints(), 10, 50);
  textSize(65);
  
  if (player.autoCrash() == true){
    player.die();
  }
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
