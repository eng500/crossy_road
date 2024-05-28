class Lilypad extends Terrain{
  Lilypad(int x, int y){
    super(x, y, 50, 50, 1);
  }
  
  @Override
  void makeAvatar(){
    noStroke();
    fill(69, 152, 82);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
  }
}
