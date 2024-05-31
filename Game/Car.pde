PVector c_location, c_velocity;

public class Car extends Terrain{
  public Car(int x, int y){
    super(x, y, 50, 100, 3);
    c_location = new PVector(x, y);
    c_velocity = new PVector(0.2 * (float)(random(1)), 0.0);
  }
  
  void move(){
    c_location.add(c_velocity);
  }
  
  void makeAvatar(){
    noStroke();
    fill(255);
    ellipse(super.getX(), super.getY() + 20, super.getWidth(), super.getHeight() - 10);
    //rect(super.getX(), super.getY() + 4, super.getWidth(), super.getHeight());
    print(getWidth() + " " + getHeight());
    
  }
}
