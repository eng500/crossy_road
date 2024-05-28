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
    //NOTE TO EMILY: I need to mkae boundaries so the chicken doesnt wander off screen
    int distance = 50;
    // 1 - up
    // 2 - down
    // 3 - left
    // 4 - right
    if (direction == 1){
      yPos = yPos - distance;
    }
    else if (direction == 2){
      yPos = yPos + distance;
    }
    else if (direction == 3){
      xPos = xPos - distance;
    }
    else{
      xPos = xPos + distance;
    }
  }
  

}
