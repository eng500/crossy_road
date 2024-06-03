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
    rect(super.getX() - 38, super.getY() + 2, super.getWidth() - 30, super.getHeight() - 20);
    
    //random gen color for car body fill();
    fill(35, 104, 217);
    rect(super.getX() - 50, super.getY() + 18, super.getWidth(), super.getHeight() - 26);
    
    fill(0);
    circle(super.getX() - 25, super.getY() + 40, 20);
    circle(super.getX() + 25, super.getY() + 40, 20);
    
    fill(255);
    circle(super.getX() - 25, super.getY() + 40, 10);
    circle(super.getX() + 25, super.getY() + 40, 10);
    
    fill(0);
    rect(super.getX() - 32, super.getY() + 4, super.getWidth() - 54, super.getHeight() - 38);
    rect(super.getX() + 4, super.getY() + 4, super.getWidth() - 10, super.getHeight() - 38);



    print(getWidth() + " " + getHeight());
    
  }
}
