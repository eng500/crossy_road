public class Lilypad extends Terrain{
  public Lilypad(int x, int y){
    super(x, y, 50, 50, 1);
  }
  
  public void checkLilyChicken(){
    if (getX() == player.getX() && getY() == player.getY()){
      onLily = true;
    }
    else{
      onLily = false;
    }
  }
  
  @Override
  public void makeAvatar(){
    noStroke();
    fill(96, 191, 100);
    rect(super.getX()+13, super.getY(), super.getWidth()-13, super.getHeight());
    rect(super.getX(), super.getY()+13, super.getWidth(), super.getHeight()-13);
    fill(69, 152, 82);
    rect(super.getX()+25, super.getY(), 13, 38);
    rect(super.getX(), super.getY()+25, 38, 13);
    
    checkLilyChicken();
  }
}
