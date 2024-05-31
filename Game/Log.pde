PVector l_location, l_velocity;

public class Log extends Terrain{
  public Log(int x, int y){
    super(x, y, 50, 50*int(random(3, 6)), 1);
    l_location = new PVector(x, y);
    l_velocity = new PVector(0.7, 0);
  }
  
  void move(){
    l_location.add(l_velocity);
    makeAvatar((int)(l_location.x), (int)(l_location.y));
  }
  
  void makeAvatar(int x, int y){
    noStroke();
    fill(116, 79, 62);
    //rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
    rect(x, y, super.getWidth(), super.getHeight());
    fill(85, 60, 44);
    //rect(super.getX(), super.getY()+7, super.getWidth(), 5);
    //rect(super.getX(), super.getY()+17, super.getWidth(), 5);
    //rect(super.getX(), super.getY()+25, super.getWidth(), 5);
    //rect(super.getX(), super.getY()+35, super.getWidth(), 5);
    rect(x, y+7, super.getWidth(), 5);
    rect(x, y+17, super.getWidth(), 5);
    rect(x, y+25, super.getWidth(), 5);
    rect(x, y+35, super.getWidth(), 5);
  }
}
