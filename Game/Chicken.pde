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
  
  public int getX(){
    return xPos;
  }
  
  public int getY(){
    return yPos;
  }
  
  public void setX(int x){
    xPos = x;
  }
  
  public void setY(int y){
    yPos = y;
  }
  
  public int roundX(){
   int d = getX() / 50;
   int r = getX() % 50;
   
   if (r < 25){
     return d * 50;
   }
   else{
     return (d + 1) * 50;
   }
   
 }
  public int roundY(){
   int d = getY() / 50;
   int r = getY() % 50;
   
   if (r < 25){
     return d * 50;
   }
   else{
     return (d + 1) * 50;
   }
 }
  
  public boolean getAlive(){
    return alive;
  }
  
  public void setAlive(boolean status){
    alive = status;
  }
  
  public int getPoints(){
    return points;
  }
  
  //danger() will return true when the chicken must die
  // 1 = neutral, 2 = blocks chicken from advancing, 3 = dangerous/deadly
  public boolean danger(){
    for (int i = 0; i < oList.size(); i++){
      int[] ob = oList.get(i);
       if (this.roundX() == ob[0] && this.roundY() == ob[1] && ob[2] == 3){
         return true;
       }
    }
    return false;
  }
  
  //block() will return true when the chicken is blocked, and false when the chicken can move
  
  /**
  public boolean block(int direction){
    if (direction == 1){
      for (int i = 0; i < oList.size(); i++){
        int[] ob = oList.get(i);
        if (this.roundX() == ob[0] && this.roundY() - 50 == ob[1]){
          return true;
        }
      }
      return false;
    }
    if (direction == 2){
      for (int i = 0; i < oList.size(); i++){
        int[] ob = oList.get(i);
        if (this.roundX() == ob[0] && this.roundY() + 50 == ob[1]){
          return true;
        }
      }
      return false;
    }
    if (direction == 3){
      for (int i = 0; i < oList.size(); i++){
        int[] ob = oList.get(i);
        if (this.roundX() - 50 == ob[0] && this.roundY() == ob[1]){
          return true;
        }
      }
      return false;
    }
    if (direction == 4){
      for (int i = 0; i < oList.size(); i++){
        int[] ob = oList.get(i);
        if (this.roundX() + 50 == ob[0] && this.roundY() == ob[1]){
          return true;
        }
      }
      return false;
    }
    return false;
  }
  */
  
  public void die(){
    exit();
  }
  
  public void move(int direction){
    // 1 - up
    // 2 - down
    // 3 - left
    // 4 - right
      if (direction == 1){
        if (yPos >= (0 + distance) || block(1) == false){
          yPos = yPos - distance;
          if (danger()){
            die();
          }
        }
      }
      else if (direction == 2){
        if (yPos <= (height - distance - 50) && block(2) == false){
          yPos = yPos + distance;
          if (danger()){
            die();
          }
        }
      }
      else if (direction == 3){
        if (xPos >= (0 + distance) && block(3) == false){
          xPos = xPos - distance;
          if (danger()){
            die();
          }
        }
      }
      else{
        if (xPos <= (width - distance - 50) && block(4) == false){
          xPos = xPos + distance;
          if (danger()){
            die();
          }
        }
      }
  }
  
  public void makeAvatar(int direction){
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
  
  

}
