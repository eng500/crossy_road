Car[] c_list = new Car[(int) random(0, 5)];
class Road extends Terrain{
  public Road(int y){
    super(0, y, 50, 600, 1);
    for (int i = 0; i < c_list.length; i++){
      Car a = new Car(0, getY());
      c_list[i] = a;
    }
  }
 
  
  @Override
  public void makeAvatar(){
    noStroke();
    fill(56, 56, 56);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
    
    fill(110, 109, 109);
    rect(super.getX() + 20, super.getY() + 3, 50, super.getHeight()/8);
    rect(super.getX() + 170, super.getY() + 3, 50, super.getHeight()/8);
    rect(super.getX() + 320, super.getY() + 3, 50, super.getHeight()/8);
    rect(super.getX() + 470, super.getY() + 3, 50, super.getHeight()/8);
    
  }
}
