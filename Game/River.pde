public class River extends Terrain{
  public River(int x, int y){
    super(0, y, 50, 600, 3);
    int[] info = {0, super.getY(), super.getResponse()};
    oList.add(info);
  }
  
  @Override
  public void makeAvatar(){
    noStroke();
    fill(113, 190, 255);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
  }
}
