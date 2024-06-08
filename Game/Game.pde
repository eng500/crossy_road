Chicken player = new Chicken();
int ori = 1; //the chicken's direction it is facing;
Car c1 = new Car(200, 200);
Road r1 = new Road(200);
Highway h1 = new Highway(200);
Rock ro1 = new Rock(300, 300);
int timer;
Camera camera = new Camera();


void setup(){
  size(600, 600); //each square is 50x50 - 12 squares for now?  
}

void draw(){
  background(144, 212, 108);
  //h1.makeHighway();
 
  if (millis() - timer >= 500) { // does the below actions every ? seconds
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
    
    // for testing terrain:
    //if (keyCode == SHIFT){
    //  test.makeAvatar();
    //}
  }
  //print(player.getX());
  //print(player.getY());
}
