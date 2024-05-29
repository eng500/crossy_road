class Road extends Terrain{
  Road(int y){
    super(0, y, 50, 600, 1);
  }
  
  //@Override
  void makeAvatar(){
    noStroke();
    fill(56, 56, 56);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
    
    fill(110, 109, 109);
    rect(super.getX() + 20, super.getY() + 3, 50, super.getHeight()/8);
    rect(super.getX() + 170, super.getY() + 3, 50, super.getHeight()/8);
    rect(super.getX() + 320, super.getY() + 3, 50, super.getHeight()/8);
    rect(super.getX() + 470, super.getY() + 3, 50, super.getHeight()/8);
  }
}
