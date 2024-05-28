class Log extends Terrain{
  Log(int x, int y){
    super(x, y, 50, 50*int(random(3, 6)), 1);
  }
  
  @Override
  void makeAvatar(){
    noStroke();
    fill(113, 69, 39);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
  }
}
