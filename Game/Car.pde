  //randomizes car color each time you spawn
  float[] col =  {random(255), random(255), random(255)}; 
  //int anotherTimer;
  
  public class Car extends Terrain{
    public Car(int x, int y){
      super(0, y, 50, 100, 4);
      //anotherTimer = millis();
   }
   
   public void move(){
      
     if (getX() == 600){
          setX(0);
      }
      else{
          setX(getX() + 2);
      }
      makeAvatar(getX(), getY());
    }
    
    
    public int roundX(){
       int d = getX() / 50;
       int r = getX() % 50;   
       
       if (r < 20){
         return (d) * 50;
       }
       else if (r < 35){
         return (d + 1) * 50;
       }
       else{
         return (d) * 50;
       }
    }
    
    
    public int roundY(){
       int d = getY() / 50;
       int r = getY() % 50;   
       
       if (r < 25){
         return (d - 1) * 50;
       }
       else{
         return (d - 2) * 50;
       }
    }
  
  void makeAvatar(int x, int y){
    noStroke();
    fill(255);
    rect(x - 38, y + 2, super.getWidth() - 30, super.getHeight() - 20);
    
    //random gen color for car body fill();
    fill(col[0], col[1], col[2]);
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
    
  }
}
