int distance = 50;

public class Chicken{
  int xPos;
  int yPos;
  boolean alive;
  int points;
  
  public Chicken(){
    xPos = 600/2;
    yPos = 600 - 150;
    alive = true;
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
  
  int getPoints(){
    return points;
  }
  
  void move(int direction){
    // 1 - up
    // 2 - down
    // 3 - left
    // 4 - right
      if (direction == 1){
        if (yPos >= (0 + distance)){
          yPos = yPos - distance;
          //makeAvatar(1);
        }
      }
      else if (direction == 2){
        if (yPos <= (height - distance - 50)){
          yPos = yPos + distance;
          //makeAvatar(2);
        }
      }
      else if (direction == 3){
        if (xPos >= (0 + distance)){
          xPos = xPos - distance;
          //makeAvatar(3);
        }
      }
      else{
        if (xPos <= (width - distance - 50)){
          xPos = xPos + distance;
          //makeAvatar(4);
        }
      }
  }
  
  void makeAvatar(int direction){
    // 1 - up; 2 - down; 3 - left; 4 - right
    noStroke();
    
    if (direction == 1){
      
      fill(252, 153, 13);
      ellipse(this.xPos + 20, this.yPos + 45, 10, 10);
      ellipse(this.xPos + 34, this.yPos + 45, 10, 10);
      
      fill(255);
      rect(this.xPos + 14, this.yPos, 24, 20, 28);
      rect(this.xPos + 6, this.yPos + 18, 40, 28, 28);
      
      fill(252, 29, 13);
      rect(this.xPos + 24, this.yPos, 4, 10);
    }
    if (direction == 2){
      
      fill(252, 153, 13);
      ellipse(this.xPos + 20, this.yPos + 45, 10, 10);
      ellipse(this.xPos + 34, this.yPos + 45, 10, 10);
      
      fill(255);
      rect(this.xPos + 14, this.yPos, 24, 20, 28);
      rect(this.xPos + 6, this.yPos + 18, 40, 28, 28);
      
      fill(0);
      circle(this.xPos + 21, this.yPos + 8, 4);
      circle(this.xPos + 31, this.yPos + 8, 4);
      
      fill(252, 153, 13);
      ellipse(this.xPos + 26, this.yPos + 14, 12, 8);
      
      fill(252, 29, 13);
      rect(this.xPos + 24, this.yPos, 4, 3);
    }
    if (direction == 3){
      
      fill(252, 153, 13);
      ellipse(this.xPos + 26, this.yPos + 45, 10, 10);
      
      fill(255);
      rect(this.xPos + 14, this.yPos, 24, 20, 28);
      rect(this.xPos + 6, this.yPos + 18, 40, 28, 28);
      
      fill(0);
      circle(this.xPos + 22, this.yPos + 8, 4);
      
      fill(252, 153, 13);
      ellipse(this.xPos + 14, this.yPos + 14, 12, 8);
      
      fill(252, 29, 13);
      rect(this.xPos + 20, this.yPos, 12, 2);
    }
    if (direction == 4){
      
      fill(252, 153, 13);
      ellipse(this.xPos + 26, this.yPos + 45, 10, 10);
      
      fill(255);
      rect(this.xPos + 14, this.yPos, 24, 20, 28);
      rect(this.xPos + 6, this.yPos + 18, 40, 28, 28);
      
      fill(0);
      circle(this.xPos + 30, this.yPos + 8, 4);
      
      fill(252, 153, 13);
      ellipse(this.xPos + 38, this.yPos + 14, 12, 8);
      
      fill(252, 29, 13);
      rect(this.xPos + 20, this.yPos, 12, 2);
    }
  }
  
  //call Terrain.getResponse()
  void respondMove(int r){
    // 1 = neutral, 2 = blocks chicken from advancing, 3 = dangerous/deadly
    if (r == 1){
      
    }
    if (r == 2){
    
    }
    if (r == 3){
    
    }
  }

}
