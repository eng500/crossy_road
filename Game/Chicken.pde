public class Chicken{
  int xPos;
  int yPos;
  boolean alive;
  boolean leftOri; //which way the chicken's beak is facing - might omit if too confusing
  int points;
  
  public Chicken(){
    xPos = width/2;
    yPos = height - 30;
    alive = true;
    leftOri = false;
    points = 0;
  }
  
  int getX(){
    return xPos;
  }
  
  int getY(){
    return yPos;
  }
  
  void setX(int x){
    xPos = x;
  }
  
  void setY(int y){
    yPos = y;
  }
  
  boolean getAlive(){
    return alive;
  }
  
  void setAlive(boolean status){
    alive = status;
  }
  
  boolean getLeftOri(){
    return leftOri;
  }
  
  void setLeftOri(boolean status){
    leftOri = status;
  }
  
  int getPoints(){
    return points;
  }
  
  void move(int direction){
    
  }
  

}
