public class Log extends Terrain{
  public Log(int x, int y){
    super(x, y, 50, 50*int(random(3, 6)), 1);
  }
  
  @Override
  void makeAvatar(){
    noStroke();
    fill(116, 79, 62);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
    fill(85, 60, 44);
    rect(super.getX(), super.getY()+7, super.getWidth(), 5);
    rect(super.getX(), super.getY()+17, super.getWidth(), 5);
    rect(super.getX(), super.getY()+25, super.getWidth(), 5);
    rect(super.getX(), super.getY()+35, super.getWidth(), 5);
  }
}
