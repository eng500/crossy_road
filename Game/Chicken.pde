int distance = 50;

public class Chicken{
  int xPos;
  int yPos;
  boolean alive;
  int points;
  boolean moved;
  
  public Chicken(){
    xPos = 600/2;
    yPos = 550;
    
    alive = true;
    points = 0;
    moved = false;
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
  // 1 = neutral, 2 = blocks chicken from advancing, 3 = river(dangerous), 4 = car (dangerous)
  public boolean danger(){
    for (Terrain ob : background){
      if (ob.getResponse() == 3){
        if (getY() == ob.getY()){
          return true;
        }
      }
    }
    return false;
  }
  
  
  public void autoBlock(){
    for (Terrain ob : background){
      if (ob.getResponse() == 2){
        if (getX() == ob.getX() && getY() == ob.getY()){
          move(2);
        }
      }
    }
  }
  
  //block() will return true when the chicken is blocked, and false when the chicken can move
  
  public boolean block(int direction){
    for (Terrain ob : background){
      if (ob.getResponse() == 2){
        if (direction == 1){
          if (getX() == ob.getX() && getY() - 50 == ob.getY()){
            return true;
          }
        }
        if (direction == 2){
          if (getX() == ob.getX() && getY() + 50 == ob.getY()){
            return true;
          }
        }
        if (direction == 3){
          if (getX() - 50 == ob.getX() && getY() == ob.getY()){
            return true;
          }
        }
        if (direction == 4){
          if (getX() + 50 == ob.getX() && getY() == ob.getY()){
            return true;
          }
        }
      }
    }
    return false;
  }
  
  public void dieOffScreen(){ //used to discourage the player from staying inactive in the first row for too long
     if (millis() - second() >= 8000) { 
      if (getY() == 550){
        die();
      }
     }
  }
  
  public void die(){
    //makeAvatar(5);
    exit();
  }
  
  public void move(int direction){
    // 1 - up
    // 2 - down
    // 3 - left
    // 4 - right
    
      if (direction == 1){
        if (yPos >= (0 + distance) && block(1) == false){
          yPos = yPos - distance;
          moved = true;
          if (danger()){
            die();
          }
        }
      }
      else if (direction == 2){
        if (yPos <= (height - distance - 50) && block(2) == false){
          yPos = yPos + distance;
          moved = true;
          if (danger()){
            die();
          }
        }
      }
      else if (direction == 3){
        if (xPos >= (0 + distance) && block(3) == false){
          xPos = xPos - distance;
          moved = true;
          if (danger()){
            die();
          }
        }
      }
      else{
        if (xPos <= (width - distance - 50) && block(4) == false){
          xPos = xPos + distance;
          moved = true;
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
    /**
    if (direction == 5){
      fill(255);
      rect(this.xPos, this.yPos, 50, 50, 28);
     
      fill(252, 29, 13);
      rect(this.xPos + 24, this.yPos, 4, 10);

    }
    */
  }
  
  

}
