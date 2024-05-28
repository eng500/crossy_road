class River extends Terrain{
  River(int x, int y){
    super(x, y, 50, width, 3);
  }
  
  @Override
  void makeAvatar(){
    noStroke();
    fill(113, 190, 255);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
  }
}
