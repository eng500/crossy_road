public class River extends Terrain{
  public River(int x, int y){
    super(0, y, 50, 600, 3);
  }
  
  @Override
  void makeAvatar(){
    noStroke();
    fill(113, 190, 255);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
  }
}
