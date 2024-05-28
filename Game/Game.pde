Chicken player = new Chicken();

void setup(){
  size(600, 600); //each square is 50x50 - 12 squares for now?

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
  }
  print(player.getX());
}
