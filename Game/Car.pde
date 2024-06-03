PVector c_location, c_velocity;

public class Car extends Terrain{
  public Car(int x, int y){
    super(x, y, 50, 100, 3);
    c_location = new PVector(x, y);
    c_velocity = new PVector(0.8, 0.0);
  }
  
  void move(){
    c_location.add(c_velocity);
    makeAvatar((int) c_location.x, (int) c_location.y);
  }
  
  void makeAvatar(int x, int y){
    noStroke();
    fill(255);
    rect(x - 38, y + 2, super.getWidth() - 30, super.getHeight() - 20);
    
    //random gen color for car body fill();
    fill(35, 104, 217);
    rect(x - 50, y + 18, super.getWidth(), super.getHeight() - 26);
    
    fill(0);
    circle(x - 25, y + 40, 20);
    circle(x + 25, y + 40, 20);
    
    fill(255);
    circle(x - 25, y + 40, 10);
    circle(x + 25, y + 40, 10);
    
    fill(0);
    rect(x - 32, y + 6, super.getWidth() - 60, super.getHeight() - 40);
    rect(x + 12, y + 6, super.getWidth() - 84, super.getHeight() - 40);



    print(getWidth() + " " + getHeight());
    
  }
}
