public class Terrain{
 int xPos, yPos, t_height, t_width, response;
 // int response corresponds to how the object/terrain affects the chicken:
 // 1 = neutral, 2 = blocks chicken from advancing, 3 = river(dangerous), 4 = car (dangerous)
 
 public Terrain(int x, int y, int t_height, int t_width, int response){
   this.xPos = x; // xcor of top left corner of the 50x50 "pixel" the object is in
   this.yPos = y; // ycor of top left corner of the 50x50 "pixel" the object is in
   this.t_height = t_height;
   this.t_width = t_width;
   this.response = response;
 }
 
 public int roundX(){
   int d = getX() / 50;
   int r = getX() % 50;   
   
   if (r < 25){
     return (d - 1) * 50;
   }
   else{
     return (d - 2) * 50;
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
 
 public int getX(){
   return this.xPos;
 }
 
 public int getY(){
   return this.yPos;
 }
 
 public int getHeight(){
   return this.t_height;
 }
 
 public int getWidth(){
   return this.t_width;
 }
 
 public int getResponse(){
   return this.response;
 }
 
 public void move(){
 }
 
 public void setX(int x){
   this.xPos = x;
 }
 
 public void setY(int y){
   this.yPos = y;
 }
 
 public void makeAvatar(){
 }
}
