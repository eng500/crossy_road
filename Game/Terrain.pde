public class Terrain{
 int xPos, yPos, t_height, t_width, response;
 // int response corresponds to how the object/terrain affects the chicken:
 // 1 = neutral, 2 = blocks chicken from advancing, 3 = dangerous/deadly
 
 public Terrain(int x, int y, int t_height, int t_width, int response){
   this.xPos = x;
   this.yPos = y;
   this.t_height = t_height;
   this.t_width = t_width;
   this.response = response;
 }
 
 int roundX(){
   int d = getX() / 50;
   int r = getX() % 50;
   
   if (r < 25){
     return d * 50;
   }
   else{
     return (d + 1) * 50;
   }
   
 }
  int roundY(){
   int d = getY() / 50;
   int r = getY() % 50;
   
   if (r < 25){
     return d * 50;
   }
   else{
     return (d + 1) * 50;
   }
 }
 
 int getX(){
   return this.xPos;
 }
 
 int getY(){
   return this.yPos;
 }
 
 int getHeight(){
   return this.t_height;
 }
 
 int getWidth(){
   return this.t_width;
 }
 
 int getResponse(){
   return this.response;
 }
 
 void setX(int x){
   this.xPos = x;
 }
 
 void setY(int y){
   this.yPos = y;
 }
 
 void makeAvatar(){
 }
}
