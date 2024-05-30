PVector c_location, c_velocity;

public class Car extends Terrain{
  public Car(int x, int y){
    super(x, y, 50, 100, 3);
    c_location = new PVector(x, y);
    c_velocity = new PVector(0.2 * (float)(random(1)), 0.0);
  }
  
  void move(){
    c_location.add(c_velocity);
    makeAvatar((int)(c_location.x), (int)(c_location.y));
  }
  
  //@Override
  void makeAvatar(int x, int y){
    noStroke();
    fill(116, 79, 62);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
    
  }
}
